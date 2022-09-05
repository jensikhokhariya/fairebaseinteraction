import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  Future<String> findUser(String email,String password)async{
    String note="";
    var firebaseAuth = FirebaseAuth.instance;

    try{
      var res= await firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
      note = "Success";
    }on FirebaseAuthException catch(e){
      if(e.code == "weak-password"){
        note = "Password is too short";
      }
      else if(e.code=="email-already-in-use"){
        note="You are already User";
      }else{
        note= "You are already User ${e.message}";
      }
    }
    return note;
  }
}
