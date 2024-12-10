import 'package:dio/dio.dart';

class ApiService {
  static const String _baseUrl = 'https://api.themoviedb.org/3/';
  static const String myToken =
      'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI2OTI1YmNiMDVkOGFjOGY2NTRjMmMwYzFjYzM4MTljZiIsIm5iZiI6MTczMzQxNzc1MS45MjIsInN1YiI6IjY3NTFkYjE3ODAyYmFkMTYwOTFhOTA0MiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.4j-nw-dB3lh9Gl_OVFJfxj5_GCmp5TSWAii_XfcfrmI';

  final Dio dio;

  ApiService({required this.dio});

  Future<Map<String, dynamic>> get(String endPoint) async {
    final Response response = await dio.get(
      '$_baseUrl$endPoint',
      options: Options(
        headers: {
          'Authorization': myToken,
          'Accept': 'application/json',
        },
      ),
    );
    return response.data;
  }
}
