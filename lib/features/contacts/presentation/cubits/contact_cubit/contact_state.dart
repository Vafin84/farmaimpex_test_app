part of 'contact_cubit.dart';

@freezed
class ContactState with _$ContactState {
  const factory ContactState.waiting() = _ContactStateWaitng;
  const factory ContactState.data({required List<ContactEntity> contacts}) = _ContactStateData;
  const factory ContactState.error(dynamic error) = _ContactStateError;
}
