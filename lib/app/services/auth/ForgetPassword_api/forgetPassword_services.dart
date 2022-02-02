import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:twaf/app/Shared/constants.dart';

Future forgetPassword(String email) async {
  final Map<String, dynamic> forgetPasswordData = {
    'email': email,
  };
  final http.Response response = await http.post(
    Uri.parse('${KApiUrl}forgetPassword'),
    headers: <String, String>{
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    },
    body: jsonEncode(forgetPasswordData),
  );
  // return User.fromJson(jsonDecode(response.body));
  if (response.statusCode == 200) {
    var jsonString = response.body;

    // then parse the JSON.
//TODO: remove this line
    print(jsonDecode(response.statusCode.toString()));
    print('login Success from api');

    //return userFromJson(jsonString);//

    // then throw an exception.

    //throw Exception('......');
  }
//TODO: remove this line
  print(jsonDecode(response.statusCode.toString()));
  print(jsonDecode(response.body.toString()));
  print('error login from api');

  return Future.error(response.statusCode);
}
