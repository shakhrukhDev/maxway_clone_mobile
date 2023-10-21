part of 'auth_bloc.dart';

@immutable
class AuthState extends Equatable {
  final CheckPhoneResponse? checkPhoneResponse;
  final Status status;
  final bool? registration;

  const AuthState({
    this.checkPhoneResponse,
    this.status = Status.initial,
     this.registration,
  });

  AuthState copyWith({
    CheckPhoneResponse? checkPhoneResponse,
    Status? status,
    bool? registration,
  }) {
    return AuthState(
      checkPhoneResponse: checkPhoneResponse ?? this.checkPhoneResponse,
      status: status ?? this.status,
      registration: registration ?? this.registration,
    );
  }

  @override
  List<Object?> get props => [
        checkPhoneResponse,
        status,
        registration,
      ];
}

enum Status { initial, loading, success, error }

extension StatusExtension on Status {
  bool get isInitial => this == Status.initial;

  bool get isLoading => this == Status.loading;

  bool get isSuccess => this == Status.success;

  bool get isError => this == Status.error;
}
