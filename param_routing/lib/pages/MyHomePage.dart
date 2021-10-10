// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:param_routing/pages/MyReadPage.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My News App'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MyReadPage(
                      news_title:
                          "রূপপুরে পারমাণবিক বিদ্যুৎকেন্দ্রে বসল ‘হৃৎপিণ্ড’",
                      thumb: Image.network(
                          "https://images.prothomalo.com/prothomalo-bangla%2F2021-10%2F7d94e17d-c5d9-4605-8b86-1143e45aee80%2Fad5661aa-69bd-4da8-9ed8-b8cbc1bef81e.png"),
                    ),
                  ),
                );
              },
              child: Card(
                child: ListTile(
                  title:
                      Text("রূপপুরে পারমাণবিক বিদ্যুৎকেন্দ্রে বসল ‘হৃৎপিণ্ড’"),
                  subtitle: Text("10/10/2021"),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MyReadPage(
                      news_title:
                          "ডিসেম্বর-জানুয়ারির মধ্যে ৮ কোটি মানুষকে দুই ডোজ টিকা দেওয়া সম্ভব হবে: স্বাস্থ্যমন্ত্রী",
                      thumb: Image.network(
                          "https://images.prothomalo.com/prothomalo-bangla%2F2021-10%2F7d94e17d-c5d9-4605-8b86-1143e45aee80%2Fad5661aa-69bd-4da8-9ed8-b8cbc1bef81e.png"),
                    ),
                  ),
                );
              },
              child: Card(
                child: ListTile(
                  title: Text(
                      "ডিসেম্বর-জানুয়ারির মধ্যে ৮ কোটি মানুষকে দুই ডোজ টিকা দেওয়া সম্ভব হবে: স্বাস্থ্যমন্ত্রী"),
                  subtitle: Text("10/10/2021"),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MyReadPage(
                      news_title: "৪১তম বিসিএসের লিখিতের তারিখ প্রকাশ",
                      thumb: Image.network(
                          "https://images.prothomalo.com/prothomalo-bangla%2F2021-10%2F7d94e17d-c5d9-4605-8b86-1143e45aee80%2Fad5661aa-69bd-4da8-9ed8-b8cbc1bef81e.png"),
                    ),
                  ),
                );
              },
              child: Card(
                child: ListTile(
                  title: Text("৪১তম বিসিএসের লিখিতের তারিখ প্রকাশ"),
                  subtitle: Text("10/10/2021"),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MyReadPage(
                      news_title: "মাদক মামলায় পরীমনিসহ তিনজনের জামিন মঞ্জুর",
                      thumb: Image.network(
                          "https://images.prothomalo.com/prothomalo-bangla%2F2021-10%2F7d94e17d-c5d9-4605-8b86-1143e45aee80%2Fad5661aa-69bd-4da8-9ed8-b8cbc1bef81e.png"),
                    ),
                  ),
                );
              },
              child: Card(
                child: ListTile(
                  title: Text("মাদক মামলায় পরীমনিসহ তিনজনের জামিন মঞ্জুর"),
                  subtitle: Text("10/10/2021"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
