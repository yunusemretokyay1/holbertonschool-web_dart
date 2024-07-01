import 'dart:convert';
import '3-util.dart';

Future<String> greetUser() async {
    var username;

    try {
        var userData = json.decode(await fetchUserData());
        username = userData['username'];
    } catch (error) {
        return 'error caught: $error';
    }

    return 'Hello $username';
}

Future<String> loginUser() async {
    bool userPresent;

    try {
        userPresent = await checkCredentials();
    } catch (error) {
        return 'error caught: $error';
    }
    print('There is a user: $userPresent');

    if (userPresent) {
        return await greetUser();
    } else {
        return 'Wrong credentials';
    }
}