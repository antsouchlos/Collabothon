import 'dart:developer';
import 'dart:io';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:carbongecko/constants.dart';
import 'package:carbongecko/user_model.dart';
import 'package:google_sign_in/google_sign_in.dart';

const List<String> scopes = <String>[
  'https://www.googleapis.com/auth/devstorage.full_control',
];

GoogleSignIn _googleSignIn = GoogleSignIn(
  serverClientId:
      '954992030271-edi913pj83725087q38n1d2s89mn0rvk.apps.googleusercontent.com',
  scopes: scopes,
);

class CloudConnector {
  GoogleSignInAccount? _account;

  Future<void> handleSignIn() async {
    // try {
    _account = await _googleSignIn.signIn();

    createObject(_account);
    // } catch (error) {
    //   print(error);
    // }
  }

  void createObject(account) async {
    try {
      final params = {'name': 'test_object'};
      var url = Uri.https(
          Constants.storageBaseUrl, Constants.storageBucketPath, params);

      var response = await http.post(url,
          headers: await account.authHeaders,
          body: jsonEncode(<String, String>{
            'some key': "some value",
          }));

      log(jsonDecode(response.body));
    } catch (e) {
      log(e.toString());
    }
  }
}
