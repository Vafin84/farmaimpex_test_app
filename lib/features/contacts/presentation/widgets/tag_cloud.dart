import 'package:farmaimpex_test_app/core/presentation/widgets/app_text_button.dart';
import 'package:farmaimpex_test_app/features/contacts/presentation/cubits/contact_cubit/contact_cubit.dart';
import 'package:farmaimpex_test_app/features/contacts/presentation/cubits/filter_cubit/filter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TagCloud extends StatefulWidget {
  const TagCloud({super.key});

  @override
  State<TagCloud> createState() => _TagCloudState();
}

class _TagCloudState extends State<TagCloud> {
  Set<String> tags = <String>{};

  @override
  void initState() {
    final contacts = context.read<ContactCubit>().state.whenOrNull(data: (contacts) => contacts) ?? [];
    for (final c in contacts) {
      if (c.tags != null) {
        tags.addAll(c.tags!.toSet());
      }
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilterCubit, FilterState>(
      builder: (context, state) {
        final selectedTags = state.tags;
        return Container(
          padding: const EdgeInsets.all(16),
          height: 300,
          width: 640,
          child: Column(
            children: [
              Expanded(
                child: Wrap(
                  spacing: 8,
                  children: tags
                      .map((tag) => ChoiceChip(
                            label: Text(tag),
                            selected: selectedTags.contains(tag),
                            onSelected: (value) {
                              if (selectedTags.contains(tag)) {
                                context.read<FilterCubit>().removeTag(tag: tag);
                              } else {
                                context.read<FilterCubit>().addTag(tag: tag);
                              }
                            },
                          ))
                      .toList(),
                ),
              ),
              const SizedBox(height: 16),
              AppTextButton(onPressed: () => Navigator.pop(context), text: "Закрыть"),
            ],
          ),
        );
      },
    );
  }
}
