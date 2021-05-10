import 'package:firebase_auth/firebase_auth.dart';
import 'package:upwork/firebaseApp.dart';

class AuthService {
  Future<bool> signIn(String email, String password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      return true;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
      return false;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<void> signOut() async {
    await auth.signOut();
  }

  Future<String> getCurrentUserUid() async {
    return auth.currentUser.uid;
  }
}

// final FirebaseAuth auth = FirebaseAuth.instance;

// void inputData() async {
//     final FirebaseUser user = await auth.currentUser();
//     final uid = user.uid;
//     // here you write the codes to input the data into firestore
//   }

// Future<bool> register(String email, String password) async {
//   try {
//     await FirebaseAuth.instance
//         .createUserWithEmailAndPassword(email: email, password: password);
//     return true;
//   } on FirebaseAuthException catch (e) {
//     if (e.code == 'weak-password') {
//       print('The password provided is too weak.');
//     } else if (e.code == 'email-already-in-use') {
//       print('The account already exists for that email.');
//     }
//     return false;
//   } catch (e) {
//     print(e.toString());
//     return false;
//   }
// }