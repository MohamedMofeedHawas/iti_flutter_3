import 'package:flutter/material.dart';
import 'package:iti_flutter_3/home_page/view.dart';

import '../register/view.dart';

bool _isShowedPassword = false;
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

 final  TextEditingController _myEmailLogin = TextEditingController();
 final  TextEditingController _myPasswordLogin = TextEditingController();

 // String _savedPasswordLogin  = "";
 // String _savedGmailLogin = "";
 // bool? isLoggin;

  // Future<void> _loadData () async {
  //   SharedPreferences pref = await SharedPreferences.getInstance();
  //   setState(() {
  //     _savedPasswordLogin = pref.getString('Password') ??"";
  //     _savedGmailLogin = pref.getString('Gmail') ??"";
  //     isLoggin = true;
  //
  //   });
  // }


  final _myLoginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(child: CircularProgressIndicator(),),
          Container(
            foregroundDecoration: BoxDecoration(
              color: Colors.black.withOpacity(0.7),
            ),
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.transparent,

              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                  "https://www.kindpng.com/picc/m/161-1619663_ecommerce-website-images-with-transparent-background-hd-png.png",
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Text(
                "Login Info...",
                style: TextStyle(
                  shadows: [
                    BoxShadow(
                      color: Colors.yellow,
                      blurRadius: 3,
                      offset: Offset(0, 2)
                    ),
                    BoxShadow(
                      color: Colors.red,
                      blurRadius: 2.5,
                      offset: Offset(0, 2)
                    ),
                  ],
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
              Spacer(flex: 2),
              SizedBox(height: 40),
              Container(
                margin: EdgeInsetsGeometry.directional(start: 15, end: 15),
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusGeometry.all(Radius.circular(20)),
                  color: Colors.green.withOpacity(0.4),
                ),
                child: Form(
                  key: _myLoginFormKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsetsGeometry.directional(
                          start: 10,
                          end: 10,
                          top: 25,
                          bottom: 10,
                        ),
                        child: TextFormField(
                          controller: _myEmailLogin,

                          autofocus: true,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) =>
                              value!.contains("@") && value.contains(".")
                              ? null
                              : 'Enter a valid Email That contains "@" and "." ',
                          decoration: InputDecoration(
                            errorStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 14),

                            hintStyle: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.5),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              borderSide: BorderSide(
                                color: Colors.black.withOpacity(0.4),
                                width: 2.6,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                            ),
                            hintText: "Email",
                            floatingLabelAlignment: FloatingLabelAlignment.center,

                            prefixIcon: Icon(Icons.mail),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsGeometry.directional(
                          start: 10,
                          end: 10,
                          top: 25,
                          bottom: 15,
                        ),
                        child: TextFormField(

controller: _myPasswordLogin,
                          textInputAction: TextInputAction.done,

                          validator: (value) => (value!.isEmpty || (value.contains("#") && value.contains("*") && value.contains("/") && value.contains("_") )) ? "Password Must Required and contains '#','_','/','*'" :null,
                          obscureText: _isShowedPassword == false ? true : false,

                          decoration: InputDecoration(
                            errorStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 14),
                            hintStyle: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),

                            filled: true,
                            fillColor: Colors.white.withOpacity(0.5),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              borderSide: BorderSide(
                                color: Colors.black.withOpacity(0.8),
                                width: 2.6,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                            ),
                           hintText: "Password",
                            floatingLabelAlignment: FloatingLabelAlignment.center,

                            prefixIcon: Icon(Icons.password),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _isShowedPassword = !_isShowedPassword;
                                });
                              },
                              icon: _isShowedPassword
                                  ? Icon(Icons.visibility)
                                  : Icon(Icons.visibility_off),
                            ),
                          ),
                        ),
                      ),
                  SizedBox(height: 15,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                    ElevatedButton(

                        style: ElevatedButton.styleFrom(
                            elevation: 3,
                            shadowColor: Colors.white,
                            backgroundColor: Colors.blueGrey
                        ),
                        onPressed: (){
                          if((_myLoginFormKey.currentState!.validate())   ){
                              Navigator.pushReplacement(context, MaterialPageRoute(builder:  (context) => HomePage(),));


                          }

                        }, child: Text("Login ",style: TextStyle(
                        fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white
                    ),))
                      ,ElevatedButton(

                        style: ElevatedButton.styleFrom(
                            elevation: 3,
                            shadowColor: Colors.white,
                            backgroundColor: Colors.blueGrey
                        ),
                        onPressed: (){

                          Navigator.pushReplacement(context, MaterialPageRoute(builder:  (context) => MyRegisterScreen(),));
                        }, child: Text("Register Now! ",style: TextStyle(
                        fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white
                    ),))


                  ],)                  ],
                  ),
                ),
              ),
              Spacer(flex: 3),
            ],
          ),
        ],
      ),
    );
  }
}
