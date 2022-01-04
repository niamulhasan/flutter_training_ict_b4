import 'package:flutter/material.dart';
import 'package:sp_note_app_final/modules/notes/controllers/notes_controller.dart';
import 'package:sp_note_app_final/modules/notes/views/add_note_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Awsome Notes!'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("object");
          Navigator.of(context).push(
            MaterialPageRoute(builder: (BuildContext context) => AddNoteView()),
          );
        },
        child: Icon(Icons.add),
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: FutureBuilder(
              future: NotesController().getNotes(),
              builder: (BuildContext context, AsyncSnapshot<List<String>?> sn) {
                if (sn.hasData) {
                  List<String>? notes = sn.data;
                  return GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemCount: notes!.length,
                    itemBuilder: (BuildContext context, int index) => Card(
                      color: Colors.redAccent,
                      child: Text("${notes[index]}"),
                    ),
                  );
                } else if (sn.hasError) {
                  return Text("Got error");
                }

                return Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                onPressed: () {
                  setState(() {});
                },
                child: Icon(Icons.refresh),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
