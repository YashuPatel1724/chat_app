import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoggleService {
  static GoggleService goggleService = GoggleService._();
  GoggleService._();

  GoogleSignIn googleSignIn = GoogleSignIn();

  Future<void> signInWithGoogle() async {
    try{
      GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
      GoogleSignInAuthentication authentication =
      await googleSignInAccount!.authentication;

      AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: authentication.accessToken,
          idToken: authentication.idToken);
      UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(credential);

    }catch(e)
    {
      Get.snackbar("Google Sign Failed!", e.toString());
    }
  }

  Future<void> googleSignOut()
  async {
    await googleSignIn.signOut();
  }
}
