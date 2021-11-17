import 'package:firebase_auth/firebase_auth.dart';
import 'package:drmid/helpers/app_helper.dart';
import 'package:drmid/helpers/super_helper.dart';
import 'package:drmid/models/mixin/has_errors.dart';

class AuthHelper extends SuperHelper with HasErrors {
  static final AuthHelper _singleton = AuthHelper._internal();

  AuthHelper._internal();

  factory AuthHelper() {
    return _singleton;
  }

  static AuthHelper instance() {
    return _singleton;
  }

  static final FirebaseAuth _auth = FirebaseAuth.instance;
  static User? _user;
  ConfirmationResult? _confirmationResult;

  void setUser(User user) {
    _user = user;

    subscribeSession();
  }

  User? getUser() {
    return _user ??= _auth.currentUser;
  }

  Future _signOut() async {
    await _auth.signOut();
    return;
  }

  bool signOut() {
    try {
      _signOut();
    } catch (error) {
      return false;
    }

    return true;
  }

  bool loggedIn() {
    return getUser() != null;
  }

  bool isAnonymous() {
    if (getUser() == null || getUser()!.isAnonymous) return true;

    return false;
  }

  void subscribeSession() {
    _auth.authStateChanges().listen((User? user) {
      // TODO: Add localized text @asaenz
      if (user == null) {
        print('User is currently signed out!');
      }
    });
  }

  void reloadUser() {
    _auth.currentUser?.reload();
  }

  void setPersistance() async {
    await FirebaseAuth.instance.setPersistence(PERSISTANCE);
  }

  Future<void> signUpWithEmailAndPass(String email, String pass) async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(email: email, password: pass);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        // TODO: Add localized text @asaenz)
        AuthHelper.instance().addError('auth', 'The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        AuthHelper.instance().addError('auth', 'The account already exists for that email.');
      }
    } catch (e) {
      AuthHelper.instance().addError('auth', 'Error on sign up process.');
    }

    return;
  }

  Future<String?> signInWithEmailAndPass(String email, String pass) async {
    try {
      UserCredential userCredential =
          await _auth.signInWithEmailAndPassword(email: email, password: pass);

      setUser(userCredential.user!);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        // TODO: Add localized text @asaenz
        AuthHelper.instance().addError('auth', 'No user found for that email.');
      } else if (e.code == 'wrong-password') {
        AuthHelper.instance().addError('auth', 'Wrong password provided for that user.');
      }
    } catch (e) {
      AuthHelper.instance().addError('auth', 'Error on sign up process.');
    }
  }

  Future<String?> deleteUser() async {
    if (_delete) {
      try {
        await _auth.currentUser!.delete();
      } on FirebaseAuthException catch (e) {
        // TODO: Add localized text @asaenz
        if (e.code == 'requires-recent-login') {
          AuthHelper.instance().addError(
              'auth', 'The user must reauthenticate before this operation can be executed.');
        }
      }
    } else {
      AuthHelper.instance()
          .addError('auth', 'User can not be deleted until Auth instance is set to deletion.');
    }
  }

  void setToDelete(bool delete) async {
    _delete = delete;
  }

  void emailVerification() async {
    if (!getUser()!.emailVerified) {
      await getUser()!.sendEmailVerification();
    }
  }

  Future<String?> phoneVerification(String phone) async {
    await _auth.verifyPhoneNumber(
      phoneNumber: phone,
      verificationCompleted: (PhoneAuthCredential credential) async {
        if (AppHelper.isAndroid()) await _auth.signInWithCredential(credential);
      },
      verificationFailed: (FirebaseAuthException e) {
        if (e.code == 'invalid-phone-number') {
          //TODO: handle
          AuthHelper.instance().addError('auth', 'The provided phone number is not valid.');
        }

        // Handle other errors
      },
      codeSent: (String verificationId, int? resendToken) {
        //TODO: handle
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        //TODO: handle
      },
    );

    return null;
  }

  void signInWithPhone(String phone) async {
    _confirmationResult = await _auth.signInWithPhoneNumber(
        phone,
        RecaptchaVerifier(
          //TODO: handle @asaenz
          onSuccess: () => print('reCAPTCHA Completed!'),
          onError: (FirebaseAuthException error) => print(error),
          onExpired: () => print('reCAPTCHA Expired!'),
          container: 'recaptcha',
          size: RecaptchaVerifierSize.compact,
          theme: RecaptchaVerifierTheme.dark,
        ));
  }

  void verifyPhoneSignIn(String code) async {
    UserCredential userCredential = await _confirmationResult!.confirm(code);
    setUser(userCredential.user!);
  }

  bool _delete = false;

  static const PERSISTANCE = Persistence.LOCAL;
}
