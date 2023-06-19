import 'dart:convert';
import 'package:http/http.dart' as http;

class ArticleService {
  static Future<List<dynamic>> fetchNews() async {
    String apiKey = 'c293e5853fab43c89260f4ac45495c5e';
    String apiUrl =
        'https://newsapi.org/v2/top-headlines?q=farm&apiKey=$apiKey';

    http.Response response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonData = jsonDecode(response.body);
      List<dynamic> articles = jsonData['articles'];
      return articles;
    } else {
      throw Exception(
          'Gagal mendapatkan data berita. Kode status: ${response.statusCode}');
    }
  }
}
