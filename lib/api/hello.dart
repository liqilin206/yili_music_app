import 'package:http/http.dart' as http;

// const String baseURL = 'https://yili-music-1479251-1308655658.ap-shanghai.run.tcloudbase.com';
const String baseURL = 'http://localhost:8080' ;

Future<String> sayHello() async {
  final response = await http
      .get(Uri.parse(baseURL + '/hello'));
  if (response.statusCode == 200) {
    return response.body;
  } else {
    throw Exception('请求错误');
  }
}