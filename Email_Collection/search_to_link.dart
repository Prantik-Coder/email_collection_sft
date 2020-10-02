import 'endParts.dart';

List<String> toLinks(String search) {
  List<String> links = [];
  String fPart = 'https://www.google.com/search?q=';
  String mPart = search.replaceAll(' ', '+');

  for (int page = 0; page < eParts.length; page++) {
    String link = fPart + mPart + eParts[page];
    links.add(link);
  }
  return links;
}

void main() {
  List li = toLinks('bakery powered by hibu');
  for (var l in li) {
    print('$l\n');
  }
}
