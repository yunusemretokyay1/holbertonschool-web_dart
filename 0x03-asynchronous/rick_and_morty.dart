import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> printRmCharacters() async {
    try {
        String url = 'https://rickandmortyapi.com/api/character';

        http.Response charactersResponse = await http.get(
            Uri.parse(url),
        );
        if (charactersResponse.statusCode != 200) return;

        Map<String, dynamic> charactersBody = json.decode(charactersResponse.body);

        for (final Map<String, dynamic> character in charactersBody['results']) {
            print(character['name']);
        }
    } catch (error) {
        print('error caught: $error');
    }
}