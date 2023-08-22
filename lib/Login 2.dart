import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

import 'SignUp 3.dart';

class LoginScreen extends StatefulWidget {


  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var formkey = GlobalKey<FormState>();
  bool showpass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
          child:Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/bg gradient3.jpg"))
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("LOGIN",style: GoogleFonts.playfairDisplay(
                  fontSize: 30,
                  color: Colors.white

                ),),
                SizedBox(height: 20,),
                Text("Welcome back! Login with your credentials",style: GoogleFonts.ebGaramond(
                  fontSize: 20,
                  color: Colors.white
                ),),
                Image.asset("assets/icons/person icon.png",height: 100),
               // SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      prefixIconColor: Colors.white,
                      suffixIconColor: Colors.white,
                      focusColor: Colors.white,
                      border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)
                      ),
                      prefixIcon: Icon(Icons.email),
                      hintText: "Enter your Email ID",
                      labelText: "Email ID"

                      ),
                    validator: (email){
                      if(email!.isEmpty || !email.contains("@gmail.com")){
                        return "Email ID is Incorrect";
                      }else{
                        return null;
                      }
                    },
                    ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30,bottom: 50),
                  child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    obscureText: showpass,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                      prefixIconColor: Colors.white,
                      suffixIconColor: Colors.white,

                      suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          if(showpass == true){
                            showpass = false;
                          }else{
                            showpass = true;
                          }
                        });
                      }, icon: Icon(showpass == true ? Icons.visibility_off : Icons.visibility)),
                        border:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)
                        ),
                        prefixIcon: Icon(Icons.password_sharp),
                        hintText: "Enter your Password",
                        labelText: "Password",
                  ),
                    validator: (pass){
                      if(pass!.isEmpty){
                        return "Fields are empty or password incorrect";
                      }else{
                        return null;
                      }
                    },
                  ),
                ),
                MaterialButton(
                  minWidth: 400,
                  height: 60,
                  onPressed: (){
                    final valid = formkey.currentState!.validate();
                    if(valid) {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => LoginScreen()));
                    }else{
                      Fluttertoast.showToast(
                          msg: "This is Center Short Toast",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 16.0
                      );
                    }
                  },
                  color: Colors.cyan,
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          color: Colors.black,
                          width: 1
                      ),
                      borderRadius: BorderRadius.circular(40)
                  ),
                  child: const Text("Login",style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                  ),),
                ),
                SizedBox(height: 20,),
                TextButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUp()));
                }, child: Text("Do not have an Account? SignUp",style: TextStyle(color: Colors.white),)),
              ],
            ),
          ) ),
    );
  }
}
