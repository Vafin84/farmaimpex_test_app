import 'package:auto_route/auto_route.dart';
import 'package:farmaimpex_test_app/core/presentation/widgets/app_text_button.dart';
import 'package:farmaimpex_test_app/features/contacts/presentation/widgets/contact_card.dart';
import 'package:farmaimpex_test_app/features/favorites/presentation/cubit/favorit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BlocBuilder<FavoritCubit, FavoritState>(
            builder: (context, state) {
              final favoritContacts = state.contacts.toList();
              return favoritContacts.isNotEmpty
                  ? GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: size.width ~/ 300,
                        mainAxisExtent: 190,
                      ),
                      itemCount: favoritContacts.length,
                      itemBuilder: (context, index) {
                        return ContactCard(contact: favoritContacts[index]);
                      },
                    )
                  : Center(
                      child: AppTextButton(
                          onPressed: () {
                            context.router.navigateNamed("/contacts");
                          },
                          text: "Добавить контакт в избранное"),
                    );
            },
          ),
        ),
      ),
    );
  }
}
