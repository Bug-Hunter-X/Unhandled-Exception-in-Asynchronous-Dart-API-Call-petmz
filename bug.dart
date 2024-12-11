```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Correctly handle the JSON response
      final jsonResponse = json.decode(response.body);
      // Access data from jsonResponse
    } else {
      // Handle error status codes
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions during API calls
    print('Error: $e');
    // Additional error handling might be required, like retrying the request, etc.
  }
}
```