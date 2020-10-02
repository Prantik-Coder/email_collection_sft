import 'package:email_collection_app/src/models/data_model.dart';
import 'collect_urls.dart';
import 'find_email.dart';
import 'search_to_link.dart';

void main() async {
  List<DataModel> data = [];
  try {
    data = await collect('Pest control New York Email');
  } catch (e) {
    print('''
    Error: Too many requests.
    Solution:
      1. Wait some moments, then try again.
      2. Disconnect to your network & reconnect.(AirPlan mode)
    ''');
  }
  for (int i = 0; i < data.length; i++) {
    print('${data[i].url} => ${data[i].emails}');
  }
}

Future<List<DataModel>> collect(String search) async {

  DateTime after = DateTime.now();
  List<DataModel> emailsData = [];
  List<String> webUrls = [];
  int fetchEmail = 0;
  print('Collection start....');
  // logic of what is search? google search link, web link, search.
  if (search.contains('google.com/search?q')) {
    print('Its google search link');
    webUrls = await collectWebUrls(search);
  } else if (search.contains('www.')) {
    print('Its website link');
    webUrls = [search];
  } else {
    print('Its search');
    List<String> links = toLinks(search);
    for (String link in links) {
      List<String> urls = await collectWebUrls(link);
      webUrls.addAll(urls);
      print('collected ${webUrls.length} urls');
      if (isPageEnd) break;
    }
    print('Finished! fetched all urls');
  }
  // for(int i = 0; i < webUrls.length; i++){
  //   print('${i+1}. ${webUrls[i]}');
  // }

  for (int i = 0; i < webUrls.length; i++) {
    try {
      List<String> emails = await findEmail(webUrls[i]);
      if (emails.isEmpty) {
        webUrls[i] += '/contact/';
        emails = await findEmail(webUrls[i]);
      }
      if (emails.isNotEmpty) fetchEmail++;

      emailsData.add(DataModel(webUrls[i], emails));
      emails.isEmpty
          ? print('Website ${i + 1}: no email found')
          : print('Website ${i + 1}: email collected');
    } catch (e) {
      emailsData.add(DataModel(webUrls[i], [], isError: true));
      print('Website ${i + 1}: Error! email collection failed. Link: ${webUrls[i]}');
    }
  }
  print('$fetchEmail Emails Collected');
  print('It takes ${DateTime.now().difference(after)} time');
  return emailsData;
}
