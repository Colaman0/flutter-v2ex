class Api {

  static Api _api;

  Api._();

  static Api getInstance() {
    if (_api == null) {
      _api = Api._();
    }
    return _api;
  }

  getV2Titles() async {

  }
}
