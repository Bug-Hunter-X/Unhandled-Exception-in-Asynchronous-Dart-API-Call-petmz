```dart
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
       //Process the jsonResponse
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } on Exception catch (e) {
    print('Error fetching data: $e');
    //Implement retry logic here if needed
  } catch (e) {
    print('An unexpected error occurred: $e');
  }
}
```