class CredentialRepo {
  Future<String> getCredential() {
    return Future.delayed(Duration(seconds: 3), () => MOCK_TOKEN);
  }
}

String MOCK_TOKEN = null;
