// https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=86f5d25d103441ddabfa86cb61b26130
import 'dart:convert';

import 'package:http/http.dart';

class FetchNews {
  static fetchNews() async {
    Response response = await get(Uri.parse(
        "https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=86f5d25d103441ddabfa86cb61b26130"));

    Map body_data = jsonDecode(response.body);

    print(body_data);
  }
}
