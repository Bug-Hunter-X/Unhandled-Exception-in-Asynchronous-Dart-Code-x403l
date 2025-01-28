```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      print(jsonData['key']);
    } else {
      //Instead of a generic exception, throw a more specific one
      throw HttpException('Failed to load data: ${response.statusCode}');
    }
  } on HttpException catch (e) {
    print('HTTP Error: ${e.message}');
    //Handle the http exception specifically
    //Example: retry the request, show an error message, etc.
    rethrow; 
  } catch (e) {
    print('Error: $e');
    //Handle other exceptions here
    rethrow; 
  }
}
```