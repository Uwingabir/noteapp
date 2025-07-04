import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import '../../domain/repositories/auth_repository_interface.dart';
import '../../domain/entities/entities.dart';

class AuthRepository implements AuthRepositoryInterface {
  final firebase_auth.FirebaseAuth _firebaseAuth =
      firebase_auth.FirebaseAuth.instance;

  @override
  Future<User?> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      final firebase_auth.UserCredential result =
          await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return _convertFirebaseUserToDomainUser(result.user);
    } on firebase_auth.FirebaseAuthException catch (e) {
      throw _handleAuthException(e);
    }
  }

  @override
  Future<User?> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      final firebase_auth.UserCredential result =
          await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return _convertFirebaseUserToDomainUser(result.user);
    } on firebase_auth.FirebaseAuthException catch (e) {
      throw _handleAuthException(e);
    }
  }

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  @override
  User? getCurrentUser() {
    return _convertFirebaseUserToDomainUser(_firebaseAuth.currentUser);
  }

  @override
  Stream<User?> get authStateChanges =>
      _firebaseAuth.authStateChanges().map(_convertFirebaseUserToDomainUser);

  User? _convertFirebaseUserToDomainUser(firebase_auth.User? firebaseUser) {
    if (firebaseUser == null) return null;

    return User(
      id: firebaseUser.uid,
      email: firebaseUser.email ?? '',
      displayName: firebaseUser.displayName,
      createdAt: firebaseUser.metadata.creationTime ?? DateTime.now(),
    );
  }

  String _handleAuthException(firebase_auth.FirebaseAuthException e) {
    switch (e.code) {
      case 'user-not-found':
        return 'No user found with this email address.';
      case 'wrong-password':
        return 'Incorrect password. Please try again.';
      case 'invalid-email':
        return 'Please enter a valid email address.';
      case 'user-disabled':
        return 'This user account has been disabled.';
      case 'too-many-requests':
        return 'Too many failed attempts. Please try again later.';
      case 'email-already-in-use':
        return 'An account already exists with this email address.';
      case 'operation-not-allowed':
        return 'Email/password accounts are not enabled.';
      case 'weak-password':
        return 'Password is too weak. Please choose a stronger password.';
      case 'invalid-credential':
        return 'The credentials provided are invalid.';
      default:
        return 'Authentication failed: ${e.message}';
    }
  }
}
