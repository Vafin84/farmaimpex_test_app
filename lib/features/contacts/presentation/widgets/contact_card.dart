import 'package:farmaimpex_test_app/features/contacts/domain/entities/contact_entity/contact_entity.dart';
import 'package:farmaimpex_test_app/features/contacts/presentation/cubits/filter_cubit/filter_cubit.dart';
import 'package:farmaimpex_test_app/features/favorites/presentation/cubit/favorit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class ContactCard extends StatelessWidget {
  final ContactEntity contact;

  ContactCard({super.key, required this.contact});

  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final selectedTags = context.watch<FilterCubit>().state.tags;
    final favoritContacts = context.watch<FavoritCubit>().state.contacts;
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 40,
                  child: Text("${contact.name[0].toUpperCase()}${contact.surname[0].toUpperCase()}"),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(toBeginningOfSentenceCase(contact.surname) ?? ""),
                      const SizedBox(height: 5),
                      Text(toBeginningOfSentenceCase(contact.name) ?? ""),
                      const SizedBox(height: 5),
                      Text(toBeginningOfSentenceCase(contact.middlename) ?? ""),
                      const SizedBox(height: 5),
                      Text(toBeginningOfSentenceCase(contact.phone) ?? ""),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {
                    if (favoritContacts.contains(contact)) {
                      context.read<FavoritCubit>().removeFavorit(contact: contact);
                    } else {
                      context.read<FavoritCubit>().addFavorit(contact: contact);
                    }
                  },
                  icon: const Icon(Icons.favorite),
                  color: favoritContacts.contains(contact) ? Colors.red : null,
                ),
              ],
            ),
            const SizedBox(height: 8),
            Expanded(
              child: Scrollbar(
                controller: scrollController,
                child: SingleChildScrollView(
                  controller: scrollController,
                  padding: const EdgeInsets.only(bottom: 8),
                  scrollDirection: Axis.horizontal,
                  child: Wrap(
                    spacing: 8,
                    children: contact.tags
                            ?.map((tag) => Chip(
                                  label: Text(tag),
                                  backgroundColor: selectedTags.contains(tag) ? Colors.blue.withOpacity(0.5) : null,
                                ))
                            .toList() ??
                        [],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
