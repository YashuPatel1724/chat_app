import 'package:chat_app/modal/user_modal.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseCloudService
{
  static FirebaseCloudService firebaseCloudService =FirebaseCloudService._();
  FirebaseCloudService._();

  FirebaseFirestore firestore =  FirebaseFirestore.instance;

  Future<void> insertUserIntoFireStore(UserModal usersModal)
  async {
    await firestore.collection("user").doc(usersModal.email).set({
      'email' : usersModal.email,
      'name' : usersModal.name,
      'phone' : usersModal.phone,
      'image' : usersModal.image,
      'token' : usersModal.token,
    });
  }
}