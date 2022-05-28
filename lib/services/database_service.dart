// Packages
import 'package:cloud_firestore/cloud_firestore.dart';

const String USER_COLLECTION = "Users";
const String CHAT_COLLECTION = "Chats";
const String MESSAGES_COLLECTION = "Messages";

class DatabaseService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  DatabaseService() {}

  Future<void> createUser(String _uid, String _name, String _email) async {
    try {
      await _db.collection(USER_COLLECTION).doc(_uid).set(
        {
          'email': _email,
          'name': _name,
        },
      );
    } on Exception catch (error) {
      print(error);
    } catch (error) {
      print(error);
    }
  }

  Future<DocumentSnapshot> getUser(String _uid) {
    return _db.collection(USER_COLLECTION).doc(_uid).get();
  }
}
