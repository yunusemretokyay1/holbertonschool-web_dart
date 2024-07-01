import 'dart:convert';
import '1-util.dart';

Future<String> getUserId() async {
    // SHOULD have this shape: {"id" : String, "username" : String }
    var user = json.decode(await fetchUserData());
    return user['id'];
}