import 'dart:developer';
import 'dart:io';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:carbongecko/constants.dart';
import 'package:carbongecko/user_model.dart';

class CloudConnector {
  Future<String> obtainToken() async {
    try {
      final params = {
        "client_id":
            "954992030271-kqbdutaos1tssptjvv3d3port7arlvpe.apps.googleusercontent.com ",
        "redirect_uri": "",
        "response_type": "",
        "scope": "https://www.googleapis.com/auth/devstorage.full_control",
        // "access_type": "",
        // "state": "",
        // "include_granted_scopes": "",
        // "enable_granular_consent": "",
        // "login_hint": "",
        // "prompt": "",
      };
      var url = Uri.https(Constants.authBaseUrl, Constants.authPath, params);

      var headers = {HttpHeaders.contentTypeHeader: "application/json"};

      var response = await http.get(
        url,
        headers: headers,
        // body: jsonEncode(<String, String>{
        //   'asfd': "asdfasdf",
        // })
      );

      var data = jsonDecode(response.body);
      print(data);
    } catch (e) {
      log(e.toString());
    }

    return "";
  }

// void createObject() async {
//   try {
//     final params = {'name': 'test_object'};
//     var url = Uri.https(Constants.storageBaseUrl, Constants.storageBucketPath, params);
//
//     var headers = {
//       HttpHeaders.authorizationHeader: "Bearer ${Constants.oauth2Token}",
//       HttpHeaders.contentTypeHeader: "application/json"
//     };
//
//     var response = await http.post(url,
//         headers: headers,
//         body: jsonEncode(<String, String>{
//           'asfd': "asdfasdf",
//         }));
//
//     var data = jsonDecode(response.body);
//     print(data);
//   } catch (e) {
//     log(e.toString());
//   }
// }
}
