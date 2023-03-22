import "package:http/http.dart" as http;
import "package:html/parser.dart";

class ApiService {
  final String baseUrl = "http://ibibles.net/quote.php?kor-";

  Future<String> getQuote(String page) async {
    final url = Uri.parse(baseUrl + page);
    final response = await http.get(url);
    if (response.statusCode == 200) {
      var doc = parse(response.body);
      String item = doc
          .getElementsByTagName('body')[0]
          .innerHtml
          .toString()
          .replaceAll("<small>", "")
          .replaceAll("</small>", "")
          .replaceAll("<br>", "");
      return item;
    }
    throw Error();
  }
}
