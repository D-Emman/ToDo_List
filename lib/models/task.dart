class Task{
var  name;
var isDone;

Task({this.name, this.isDone});

void toggleDone(){
  isDone = !isDone;
}



}


extension TaskSerialization on Task{
  // Convert Task object to JSON map
  Map<String, dynamic> toJson() => {
    'title': name ,
    'description': isDone,
  };

  // Create Task object from JSON map
   fromJson(Map<String, dynamic> json) {

    return Task(
     name: json['title'],
      isDone: json['description'],
    );
  }
}






