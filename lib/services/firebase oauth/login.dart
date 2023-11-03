import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../../models/account/account.dart';
import '../../utils/constant.dart';
import '../shared preferences/sharedPreferences.dart';

abstract class AuthenticationService {
  Future<User?> signInWithGoogle();
  Future<void> signOut();
}

class FirebaseAuthenticationService implements AuthenticationService {
  final Dio _dio = Dio();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Future<User?> signInWithGoogle() async {
    final googleSignIn = GoogleSignIn();
    final googleSignInAccount = await googleSignIn.signIn();

    if (googleSignInAccount == null) {
      return null;
    }

    final googleSignInAuthentication = await googleSignInAccount.authentication;
    final authCredential = GoogleAuthProvider.credential(
      accessToken: googleSignInAuthentication.accessToken,
      idToken: googleSignInAuthentication.idToken,
    );

    try {
      final userCredential = await _auth.signInWithCredential(authCredential);
      final user = userCredential.user;

      final response = await _dio.post(
        '$baseUrl/api/login',
        data: {
          'email': user?.email,
          'uid': user?.uid,
        },
        options: Options(headers: {'Content-Type': 'application/json'}),
      );

      if (response.statusCode == 200) {
        final data = response.data;
        final account = Account(
          data['IDCus'].toString(),
          data['Email'].toString(),
          data['PhoneNumber'].toString(),
          data['FirstName'].toString(),
        );

        await SharedPreferencesObject().saveLoginState(account);
        final storedAccount = await SharedPreferencesObject().futureGetAccountLocal();
        if (storedAccount.idcus.isNotEmpty) {
          print(storedAccount.idcus);
        }
      }

      return user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'account-exists-with-different-credential') {
        print("error2");
        print(e.code);
      } else if (e.code == 'invalid-credential') {
        print("error3");
      }
      return null;
    } catch (e) {
      print("error 1");
      print(e);
      return null;
    }
  }

  @override
  Future<void> signOut() async {
    await _auth.signOut();
  }
}
