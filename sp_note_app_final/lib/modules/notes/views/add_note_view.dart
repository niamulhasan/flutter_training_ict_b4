import 'package:flutter/material.dart';
import 'package:sp_note_app_final/modules/notes/controllers/notes_controller.dart';

class AddNoteView extends StatelessWidget {
  const AddNoteView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController noteTextController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text("Add Notes"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "Write your awsome note:",
                style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                controller: noteTextController,
                maxLines: 6,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Wtite your text",
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                String msg = "No msg";
                bool isAdded =
                    await NotesController().addNote(noteTextController.text);
                if (isAdded) {
                  msg = "Note Successfully save";
                } else {
                  msg = "Note is not saved!";
                }
                final snackBar = SnackBar(
                  content: Text(msg),
                );

                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: Text("Save"),
            ),
          ],
        ),
      ),
    );
  }
}
