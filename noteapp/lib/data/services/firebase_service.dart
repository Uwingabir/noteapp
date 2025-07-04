import 'package:firebase_core/firebase_core.dart';
import '../../firebase_options.dart';

class FirebaseService {
  static Future<void> initializeFirebase() async {
    try {
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
    } catch (e) {
      // Firebase is already initialized, which is fine
      if (e.toString().contains('duplicate-app')) {
        print('Firebase already initialized');
      } else {
        rethrow;
      }
    }
  }
}