import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
class Database{
  final GoogleSignIn googleSignIn = GoogleSignIn();
  Future<User?> singIn() async {
    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signIn();
    final GoogleSignInAuthentication? googleSignInAuthentication =
        await googleSignInAccount!.authentication;
    final AuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleSignInAuthentication!.idToken,
        accessToken: googleSignInAuthentication.accessToken);
    final UserCredential authResult =
    await FirebaseAuth.instance.signInWithCredential(credential);

    final User? user = authResult.user;

    Map<String, dynamic> usuario = {
      'nome': user!.displayName,
      'email': user.email,
      'foto': user.photoURL,
      'uid': user.uid,
    };

    FirebaseFirestore.instance.collection('users').doc(user.uid).set(usuario);

    return user;
  }
}