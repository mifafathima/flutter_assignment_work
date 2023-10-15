import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../Product List.dart';
import 'Home Page.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey:"AIzaSyANBP86SfFfZIg_kluVCIElcd_LnzcML-w" ,
        appId: "1:688679644329:android:5b3dd8d078bf39a8680db8",
        messagingSenderId: '',
        projectId:"phoneauthenticationfireb-c3fb3"
    )
  );
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: PhoneAuth(),
  ) );
}

class PhoneAuth extends StatefulWidget {
  const PhoneAuth({super.key});

  @override
  State<PhoneAuth> createState() => _PhoneAuthState();
}

class _PhoneAuthState extends State<PhoneAuth> {

  final TextEditingController phoneController = TextEditingController();
  final TextEditingController otpController = TextEditingController();

  String userNumber = '';

  FirebaseAuth auth = FirebaseAuth.instance;

  var otpFeildVisibility = false;
  var receivedID = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Login Using Phone Number"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: IntlPhoneField(
                controller: phoneController,
                decoration: InputDecoration(
                    hintText: "Enter your Phone Number",
                    labelText: "Phone",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)
                    )
                ),
                initialCountryCode: 'NG',
                onChanged: (val) {
                  userNumber = val.completeNumber;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Visibility(
                  visible: otpFeildVisibility,
                  child: TextField(
                    controller: otpController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)
                        ),
                        hintText: "Enter your 6 digit OTP code",
                        labelText: "OTP"
                    ),
                  )
              ),
            ),
            ElevatedButton(onPressed: () {
              if (otpFeildVisibility) {
                verifyOTPCode();
              } else {
                verifyUserPhoneNumber();
              }
            }, child: Text(otpFeildVisibility ? "Login" : "Verify"))
          ],
        ),
      ),
    );
  }

  Future<void> verifyOTPCode() async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
      verificationId: receivedID,
      smsCode: otpController.text,
    );
    await auth.signInWithCredential(credential).then((value) async {
      if (value.user != null) {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) =>  HomePhone()),
                (route) => false);
      }
    });
  }

  void verifyUserPhoneNumber() {
    auth.verifyPhoneNumber(
      phoneNumber: userNumber,
        verificationCompleted:(PhoneAuthCredential credential) async{
          await auth.signInWithCredential(credential).then((value) async {
            if (value.user != null) {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) =>  HomePhone()),
                      (route) => false);
            }
          });
    },
        verificationFailed: (FirebaseAuthException e){
          print(e.message);
        },
        codeSent: (String verificationId, int? resendToken){
          receivedID = verificationId;
          otpFeildVisibility = true;
          setState(() {});
        },
        codeAutoRetrievalTimeout: (String verificationId){});
  }
}
