import 'package:inherited_research/credential_repo.dart';
import 'package:rxdart/subjects.dart';

class CredentialBloc {
  CredentialRepo _repo = CredentialRepo();
  BehaviorSubject<String> _credentialStream = BehaviorSubject();

  Stream get stream => _credentialStream.stream;

  CredentialBloc() {
    this.getCredential();
  }

  void getCredential() {
    _repo.getCredential().then((value) => _credentialStream.sink.add(value));
  }
}
