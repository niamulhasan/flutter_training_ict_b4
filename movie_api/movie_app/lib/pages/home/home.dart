import 'package:flutter/material.dart';
import 'package:movie_app/pages/result/result.dart';

class HomePage extends StatelessWidget {
  TextEditingController searchTextController = TextEditingController();
  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie Finder'),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: searchTextController,
              decoration: const InputDecoration(
                hintText: "Enter your movie name...",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.green,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: ElevatedButton(
                onPressed: () {
                  print(searchTextController.text);
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          ResultPage(search_query: searchTextController.text),
                    ),
                  );
                },
                child: Text("Search"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
