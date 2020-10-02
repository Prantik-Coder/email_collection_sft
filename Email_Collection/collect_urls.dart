import 'package:http/http.dart';

Future<List<String>> collectWebUrls(String link) async {
  DateTime now = DateTime.now();
  List<String> urls = [];
  String htmlCodes = await read(link);

  // all web urls contain in this class name.
  List<String> list = htmlCodes.split('"BNeawe UPmit AP7Wnd">');

  for (int i = 1; i < list.length; i++) {
    int l = 3;
    while (list[i][l] != '<' && list[i][l] != ' ') {
      l++; // finding end of url....
    }
    String url = list[i].substring(0, l);
    // url validating....
    if (!url.contains('www.') && url.indexOf('.') == url.lastIndexOf('.')) {
      url = 'www.' + url;
    }
    url = 'https://' + url;
    if (!url.contains('facebook.com') &&
        !url.contains('youtube.com') &&
        !url.contains('google.') &&
        !url.contains('.biz') &&
        !url.contains('.gov') &&
        !url.contains('.edu') &&
        !url.contains('.org')) {
      urls.add(url);
    }

    // await Future.delayed(Duration(milliseconds: 200));

  }
  if (urls.isEmpty) isPageEnd = true;
  // print(DateTime.now().difference(now));
  print('Page ${h++} all urls fetched. ${DateTime.now().difference(now)}');
  return urls.toSet().toList();
}

int h = 1;
bool isPageEnd = false;
Future<void> main() async {
  var urls = await collectWebUrls(
      'https://www.google.com/search?q=pest+control+powered+by+hibu&rlz=1C1CHBF_enBD916BD916&oq=&aqs=chrome.0.35i39l7j46.71858901j0j7&sourceid=chrome&ie=UTF-8');
  print(urls);
}
