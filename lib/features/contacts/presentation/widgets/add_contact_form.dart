import 'package:farmaimpex_test_app/core/di/init_di.dart';
import 'package:farmaimpex_test_app/core/presentation/widgets/app_text_button.dart';
import 'package:farmaimpex_test_app/core/presentation/widgets/app_text_field.dart';
import 'package:farmaimpex_test_app/core/services/validation_service.dart';
import 'package:farmaimpex_test_app/features/contacts/domain/entities/contact_entity/contact_entity.dart';
import 'package:farmaimpex_test_app/features/contacts/presentation/cubits/contact_cubit/contact_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_input_chips/flutter_input_chips.dart';

class AddContactForm extends StatefulWidget {
  const AddContactForm({super.key});

  @override
  State<AddContactForm> createState() => _AddContactFormState();
}

class _AddContactFormState extends State<AddContactForm> {
  final nameController = TextEditingController();

  final surnameController = TextEditingController();

  final middleController = TextEditingController();

  final phoneController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey();

  final validator = getIt<ValidationService>();

  late List<String> tags;

  @override
  void dispose() {
    nameController.dispose();
    surnameController.dispose();
    middleController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppTextField(
              controller: surnameController,
              labelText: "Фамилия",
              validator: validator.name,
            ),
            const SizedBox(height: 8),
            AppTextField(
              controller: nameController,
              labelText: "Имя",
              validator: validator.name,
            ),
            const SizedBox(height: 8),
            AppTextField(
              controller: middleController,
              labelText: "Отчество",
              validator: validator.name,
            ),
            const SizedBox(height: 8),
            AppTextField(
              controller: phoneController,
              labelText: "Телефон",
            ),
            const SizedBox(height: 8),
            FlutterInputChips(
              initialValue: const [],
              maxChips: 5,
              onChanged: (value) {
                setState(() {
                  tags = value;
                });
              },
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              inputDecoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "Введите тег и нажмите Enter",
              ),
              chipSpacing: 8,
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AppTextButton(
                    onPressed: () {
                      if (formKey.currentState?.validate() == true) {
                        context.read<ContactCubit>().addContact(
                                contact: ContactEntity(
                              name: nameController.text,
                              surname: surnameController.text,
                              middlename: middleController.text,
                              phone: phoneController.text,
                              tags: tags,
                            ));
                        Navigator.pop(context);
                      }
                    },
                    text: "Добавить"),
                AppTextButton(onPressed: () => Navigator.pop(context), text: "Отменить"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
