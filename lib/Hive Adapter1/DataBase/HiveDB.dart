import 'package:hive/hive.dart';

import '../Model/Todo_model.dart';

class HiveDB{
  HiveDB.internal();

  static HiveDB instance = HiveDB.internal();

 factory HiveDB(){
    return instance;
  }

  Future<void> addTask(ToDo todo) async {
    final db = await Hive.openBox<ToDo>('mybox');
    db.put(todo.id, todo);
  }

   Future<List<ToDo>> getTask() async{
     final db = await Hive.openBox<ToDo>('mybox');
     return db.values.toList();
   }



  }






