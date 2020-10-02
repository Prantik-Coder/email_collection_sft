import 'package:http/http.dart';

Future<List<String>> findEmail(String webLink) async {
  List<String> emails = [];

  String htmlCodes = await read(webLink);
  for (int i = 0; i < htmlCodes.length; i++) {
    if (htmlCodes[i] == '@') {
      int f = i, l = i;
      while (check(htmlCodes[f])) f--;
      while (check(htmlCodes[l])) l++;
      String email = htmlCodes.substring(f + 1, l);
      if ((email.contains('.com') ||
          email.contains('.org') ||
          email.contains('.net') && !email.contains('example'))) {
        emails.add(email);
      }
    }
  }
  return emails.toSet().toList();
}

String wc = '<> ;:?/"\n(),[]'; // invalid character
bool check(String letter) {
  for (int p = 0; p < wc.length; p++) {
    if (wc[p] == letter) {
      return false;
    }
  }
  return true;
}

void main() async {
  var e =
      await findEmail('https://www.yankeepestcontrol.com');
  print(e);
}
