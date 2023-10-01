
import 'package:hive/hive.dart';
part 'Todo_model.g.dart';

@HiveType(typeId: 1)
class ToDo{
@HiveField(0)
   final String title;

@HiveField(1)
  final String content;

@HiveField(2)
  String? id;

ToDo({required this.title,required this.content}){
  id = DateTime.now().microsecondsSinceEpoch.toString();
}

}