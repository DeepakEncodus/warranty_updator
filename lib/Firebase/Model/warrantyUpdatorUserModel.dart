import 'dart:convert';

class Users {
  String user_id, user_name, email_id, profile_pic;

  Users({this.email_id, this.profile_pic, this.user_id, this.user_name});

  factory Users.fromJson(Map<String, dynamic> jsonData) {
    return Users(
        user_id: jsonData["user_id"],
        user_name: jsonData["user_name"],
        email_id: jsonData['email_id'],
        profile_pic: jsonData['profile_pic']);
  }

  //declaring map
  static Map<String, dynamic> toMap(Users task) => {
        "user_id": task.user_id,
        "email_id": task.email_id,
        "user_name": task.user_name,
        "profile_pic": task.profile_pic
      };

  //converting string type to json rep for data storage
  static String encodeTasks(List<Users> tasks) => json.encode(
      tasks.map<Map<String, dynamic>>((tasks) => Users.toMap(tasks)).toList());

  //converting jsonencoded string back to map
  static List<Users> decodeTasks(String tasks) =>
      (json.decode(tasks) as List<dynamic>)
          .map<Users>((item) => Users.fromJson(item))
          .toList();
}
