part of 'contact_cubit.dart';

abstract class ContactState extends Equatable {
  const ContactState();
}

class ContactInitial extends ContactState {
  @override
  List<Object> get props => [];
}

class ContactLoading extends ContactState {
  @override
  List<Object> get props => [];
}

class ContactLoaded extends ContactState {
  @override
  List<Object> get props => [];
}

class ContactLoadError extends ContactState {
  final String errorMessage;

  ContactLoadError(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];
}

