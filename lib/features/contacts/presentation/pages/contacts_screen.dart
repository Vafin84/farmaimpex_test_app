import 'package:auto_route/auto_route.dart';
import 'package:farmaimpex_test_app/core/domain/entities/error_entity/error_entity.dart';
import 'package:farmaimpex_test_app/core/presentation/widgets/app_loader.dart';
import 'package:farmaimpex_test_app/core/presentation/widgets/app_snack_bar.dart';
import 'package:farmaimpex_test_app/core/presentation/widgets/app_text_button.dart';
import 'package:farmaimpex_test_app/core/presentation/widgets/app_text_field.dart';
import 'package:farmaimpex_test_app/features/contacts/presentation/cubits/contact_cubit/contact_cubit.dart';
import 'package:farmaimpex_test_app/features/contacts/presentation/cubits/filter_cubit/filter_cubit.dart';
import 'package:farmaimpex_test_app/features/contacts/presentation/widgets/add_contact_form.dart';
import 'package:farmaimpex_test_app/features/contacts/presentation/widgets/contact_card.dart';
import 'package:farmaimpex_test_app/features/contacts/presentation/widgets/tag_cloud.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ContactsScreen extends StatefulWidget {
  const ContactsScreen({super.key});

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  final searchController = TextEditingController();
  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final selectedTags = context.watch<FilterCubit>().state.tags;
    final textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        body: BlocConsumer<ContactCubit, ContactState>(
          listener: (context, state) {
            state.whenOrNull(
              error: (error) => AppSnackBar.showSnackBarWithError(context, ErrorEntity.fromException(error)),
            );
          },
          builder: (context, state) {
            return state.maybeWhen(
              waiting: () => const AppLoader(),
              data: (contacts) {
                final filtredContact =
                    contacts.where((c) => selectedTags.any((t) => c.tags?.contains(t) ?? false)).toList();
                final searchContacts = (filtredContact.isNotEmpty ? filtredContact : contacts)
                    .where((c) => "${c.name}${c.surname}${c.middlename}"
                        .toLowerCase()
                        .contains(searchController.text.toLowerCase()))
                    .toList();
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: contacts.isNotEmpty
                      ? Column(
                          children: [
                            AppTextField(
                              controller: searchController,
                              labelText: "Поиск",
                              onChanged: (_) => setState(() {}),
                              contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                              prefixIcon: const Icon(Icons.search),
                              suffixIcon: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  searchController.text.isNotEmpty
                                      ? IconButton(
                                          padding: EdgeInsets.zero,
                                          icon: const Icon(Icons.close_rounded),
                                          onPressed: () => setState(() {
                                            searchController.clear();
                                          }),
                                        )
                                      : const SizedBox.shrink(),
                                  IconButton(
                                      padding: EdgeInsets.zero,
                                      onPressed: () =>
                                          contacts.any((e) => e.tags?.isNotEmpty ?? false) ? tagsButtomSheet() : null,
                                      icon: Icon(contacts.any((e) => e.tags?.isNotEmpty ?? false)
                                          ? Icons.filter_alt
                                          : Icons.filter_alt_off_rounded))
                                ],
                              ),
                              suffixIconConstraints: const BoxConstraints(maxWidth: 100),
                            ),
                            const SizedBox(height: 8),
                            Expanded(
                              child: searchContacts.isNotEmpty
                                  ? GridView.builder(
                                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: size.width ~/ 300,
                                        mainAxisExtent: 190,
                                      ),
                                      itemCount: searchContacts.length,
                                      itemBuilder: (context, index) {
                                        return ContactCard(contact: searchContacts[index]);
                                      },
                                    )
                                  : const Center(
                                      child: Text("Ничего не найдено"),
                                    ),
                            ),
                          ],
                        )
                      : Center(
                          child: AppTextButton(
                              onPressed: () {
                                addContactButtomSheet();
                              },
                              text: "Добавить новый контакт"),
                        ),
                );
              },
              error: (error) {
                return Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        ErrorEntity.fromException(error).message,
                        style: textTheme.titleMedium,
                      ),
                      const SizedBox(height: 16),
                      AppTextButton(
                          onPressed: () {
                            context.read<ContactCubit>().getContacts();
                          },
                          text: "Попробовать снова"),
                    ],
                  ),
                );
              },
              orElse: () => const SizedBox(),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            addContactButtomSheet();
          },
          child: const Icon(Icons.person_add),
        ),
      ),
    );
  }

  void addContactButtomSheet() {
    showBottomSheet(
      elevation: 8,
      constraints: const BoxConstraints(maxWidth: 640),
      context: context,
      builder: (context) {
        return const AddContactForm();
      },
    );
  }

  void tagsButtomSheet() {
    showBottomSheet(
      elevation: 8,
      constraints: const BoxConstraints(maxWidth: 640),
      context: context,
      builder: (context) {
        return const TagCloud();
      },
    );
  }
}
