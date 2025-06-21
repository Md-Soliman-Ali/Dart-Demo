import 'dart:convert';
import 'dart:io';

main() {
  callData();
}

Future<void> callData() async {
  try {
    String URL = "https://jsonplaceholder.typicode.com/todos";
    print("Loading....");
    final request = await HttpClient().getUrl(Uri.parse(URL));
    request.headers.set(HttpHeaders.acceptHeader, "application/json");
    final response = await request.close();
    final responseUtf8 = await response.transform(utf8.decoder).join();
    final data = jsonDecode(responseUtf8);
    print(data);
  } catch (error) {
    print(error);
  }
}
