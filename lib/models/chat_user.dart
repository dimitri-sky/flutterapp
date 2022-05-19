class ChatUser {
  final String uid;
  final String name;
  final String email;
  // final String imageURL;
  // late DateTime lastActive;

  ChatUser({
    required this.uid,
    required this.name,
    required this.email,
    // required this.imageURL,
    // required this.lastActive,
  });

  factory ChatUser.fromJson(Map<String, dynamic> _json) {
    return ChatUser(
      uid: _json['uid'],
      name: _json['name'],
      email: _json['email'],
      // imageURL: _json['imageUrl'],
      // lastActive: DateTime.parse(_json['lastActive'].toDate(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'name': name,
      // 'lastActive': lastActive,
      // 'image': imageURL,
    };
  }

  // String lastActive() {
  //   return ...;
  // }

  // bool wasRecentlyActive() {
  //   return ...;
  // }
}
