import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

import '../DataBase/HiveDB.dart';
import '../Model/Todo_model.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(ToDoAdapter());
  await Hive.openBox<ToDo>('mybox');
  runApp(MaterialApp(
    home: ToDo_Main(),
  ));
}
class ToDo_Main extends StatefulWidget {

  @override
  State<ToDo_Main> createState() => _ToDo_MainState();
}

class _ToDo_MainState extends State<ToDo_Main> {
  List<Map<String, dynamic>> task = [];
  final tasktitle = TextEditingController();
  final taskcontent = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TO DO"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("To-dos",style: GoogleFonts.playfairDisplay(
            fontSize: 20,
          ),),
          task.isEmpty ?
              Text("No To-Dos",style: TextStyle(fontSize: 30),)
              : ListView.builder(
              itemCount: task.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(""),
                    trailing: Wrap(
                      children: [
                        IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
                      ],
                    ),
                  ),
                );
              }),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: ()=>showSheet(null) ,
              child: Icon(Icons.add),
      ),
    );
  }


  Future<void> showSheet(itemkey) async{
    showModalBottomSheet(
        isScrollControlled: true,
        context: context, builder:(context){
          return Container(
            padding: EdgeInsets.only(
              left: 15,
              top: 15,
              right: 15,
              bottom: MediaQuery.of(context).viewInsets.bottom +120
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: tasktitle,
                  decoration: InputDecoration(
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: "Type your TO DO title..",
                    prefixIcon: Icon(Icons.note_alt_sharp),
                  ),
                ),
                TextField(
                  controller: taskcontent,
                  decoration: InputDecoration(
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: "Type your TO DOs..",
                    prefixIcon: Icon(Icons.edit),
                  ),
                ),
                ElevatedButton(onPressed: () async{
                  final todolist = await HiveDB.instance.getTask();
                  createToDo(todolist);
                }, child: Text("Save To Do"))
              ],
            ),

          );
    });
  }

  void createToDo(List<ToDo> todolist) {
    final title = tasktitle.text;
    final content = taskcontent.text;
    if(title != "" && content != ""){
      
    }
  }


}
