import 'package:flutter/material.dart';

bool isShowedPassword = false;
bool isShowedConfirmedPassword = false;
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  bool notifications = false;

  DateTime? selectedDate;

  Future<void> _pickDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      confirmText: "Confirm",
      cancelText: "Cancel",

      context: context,
      firstDate: DateTime(1960),
      lastDate: DateTime(2050),
      initialDate: DateTime.now(),
    );

    if (picked != null) {
      setState(() {
        selectedDate = picked;
      });
    }
  }


  String? selectedGender ;

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      key: scaffoldKey,
      body: Padding(
        padding: EdgeInsetsGeometry.directional(
          start: 10,
          top: 10,
          end: 10,
          bottom: 10,
        ),
        child:
        Form(
          key: _formKey,
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsetsGeometry.directional(
                  start: 10,
                  end: 10,
                  bottom: 15,
                  top: 15,
                ),
                child:
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 2.9,
                        color: Colors.red,
                        blurRadius: 3,

                        offset: Offset(2, 3),
                      ),
                      BoxShadow(
                        color: Colors.greenAccent,
                        blurRadius: 3,
                        offset: Offset(-2, -3),
                        spreadRadius: 2.5,
                      ),
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 3,
                        offset: Offset(-2, -3),
                        spreadRadius: 2.5,
                      ),
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 3,
                        offset: Offset(2, 3),
                        spreadRadius: 2.5,
                      ),
                      BoxShadow(
                        color: Colors.blue,
                        blurRadius: 5,
                        offset: Offset(-2, 1.5),
                        spreadRadius: 1.5,
                      ),
                    ],

                  ),
                  child: TextFormField(
                    controller: _nameController,
                    validator: (value) => value!.isEmpty ? "failed required":null,
                    decoration: InputDecoration(
                      labelStyle: TextStyle(
                        color: Colors.black.withOpacity(0.6),
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                      filled: true,
                      fillColor: Colors.white,
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
                      labelText: "Name",
                      floatingLabelAlignment: FloatingLabelAlignment.center,

                      prefixIcon: Icon(Icons.account_circle_sharp),

                      icon: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadiusDirectional.all(
                            Radius.circular(15),
                          ),
                          border: BoxBorder.all(
                            color: Colors.black.withOpacity(0.8),
                            width: 2.6,
                          ),
                        ),
                        width: 55,
                        height: 55,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 15),
                            Expanded(
                              child: Image.network(
                                "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiQEj9lw6O3szrlwFGHgiRklWXYtJ-4E2FacLWZAwD9QmG2IaILEtZmfGudXGb4dntaW4lko8pxplPensftvhu7T8OAw2gM7XW15H_3vKMqbq1j5yjXyo0pRTaIAH_5dJ81jP7e6cehpf8/s1600/egypt-flag-reflection.jpg",
                                height: 50,
                                width: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              ElevatedButton(onPressed: (){
                if (_formKey.currentState!.validate()){}

              }, child: Text("data")),
              Padding(
                padding: EdgeInsetsGeometry.directional(
                  bottom: 10,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelStyle: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                    filled: true,
                    fillColor: Colors.white,
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
                    labelText: "Email",
                    floatingLabelAlignment: FloatingLabelAlignment.center,

                    prefixIcon: Icon(Icons.mail),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsGeometry.directional(

                  bottom: 15,
                ),
                child: TextFormField(
                  obscureText: isShowedPassword == false ? true : false,

                  decoration: InputDecoration(
                    labelStyle: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),

                    filled: true,
                    fillColor: Colors.white,
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
                    labelText: "Password",
                    floatingLabelAlignment: FloatingLabelAlignment.center,

                    prefixIcon: Icon(Icons.password),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isShowedPassword = !isShowedPassword;
                        });
                      },
                      icon: isShowedPassword
                          ? Icon(Icons.visibility)
                          : Icon(Icons.visibility_off),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsGeometry.directional(

                  bottom: 15,
                ),
                child: TextFormField(
                  obscureText: isShowedConfirmedPassword == false
                      ? true
                      : false,

                  decoration: InputDecoration(
                    labelStyle: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                    filled: true,
                    fillColor: Colors.white,
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
                    labelText: "Confirm Password",
                    floatingLabelAlignment: FloatingLabelAlignment.center,

                    prefixIcon: Icon(Icons.password),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isShowedConfirmedPassword =
                          !isShowedConfirmedPassword;
                        });
                      },
                      icon: isShowedConfirmedPassword
                          ? Icon(Icons.visibility)
                          : Icon(Icons.visibility_off),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsGeometry.directional(
                  start: 10,
                  end: 10,
                  bottom: 15,
                ),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.yellow.withOpacity(0.3), Colors.blue],
                    ),
                    color: Color(0xfffef7ff),

                    borderRadius: BorderRadiusDirectional.all(
                      Radius.circular(15),
                    ),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 2.9,
                        color: Colors.red,
                        offset: Offset(2, 3),
                      ),
                      BoxShadow(
                        color: Colors.greenAccent,
                        blurRadius: 3,
                        offset: Offset(-2, -3),
                        spreadRadius: 2.5,
                      ),
                      BoxShadow(
                        color: Colors.blue,
                        blurRadius: 5,
                        offset: Offset(-2, 1.5),
                        spreadRadius: 1.5,
                      ),
                    ],
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelStyle: TextStyle(
                        color: Colors.black.withOpacity(0.4),
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                      filled: true,
                      fillColor: Colors.white,
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
                      labelText: "Number",
                      floatingLabelAlignment: FloatingLabelAlignment.center,

                      prefixIcon: Icon(Icons.phone),

                      icon: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadiusDirectional.all(
                            Radius.circular(15),
                          ),
                          border: BoxBorder.all(
                            color: Colors.black.withOpacity(0.8),
                            width: 2.6,
                          ),
                        ),
                        width: 55,
                        height: 55,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 15),
                            Expanded(
                              child: Text(
                                "+20",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black.withOpacity(0.5),
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsGeometry.directional(
                  start: 10,
                  end: 10,
                  bottom: 15,
                  top: 15,
                ),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.yellow.withOpacity(0.3), Colors.blue],
                    ),
                    color: Color(0xfffef7ff),

                    borderRadius: BorderRadiusDirectional.all(
                      Radius.circular(15),
                    ),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 2.9,
                        color: Colors.red,
                        offset: Offset(2, 3),
                      ),
                      BoxShadow(
                        color: Colors.greenAccent,
                        blurRadius: 3,
                        offset: Offset(-2, -3),
                        spreadRadius: 2.5,
                      ),
                      BoxShadow(
                        color: Colors.blue,
                        blurRadius: 5,
                        offset: Offset(-2, 1.5),
                        spreadRadius: 1.5,
                      ),
                    ],
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelStyle: TextStyle(
                        color: Colors.black.withOpacity(0.4),
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                      filled: true,
                      fillColor: Colors.white,
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
                      labelText: "ID",
                      floatingLabelAlignment: FloatingLabelAlignment.center,

                      prefixIcon: Icon(Icons.phone),

                      icon: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadiusDirectional.all(
                            Radius.circular(15),
                          ),
                          border: BoxBorder.all(
                            color: Colors.black.withOpacity(0.8),
                            width: 2.6,
                          ),
                        ),
                        width: 55,
                        height: 55,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 2),
                            Expanded(
                              child: Image(
                                image: NetworkImage(
                                  "https://zaaednews.com/wp-content/uploads/2024/09/406aa2eac61eaa71830c5e2830236b81.webp",
                                ),
                                height: 30,
                                width: 35,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsetsGeometry.directional(start: 10,end: 10,top: 12),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      border: BoxBorder.all(
                          color: Colors.black,
                          width: 2.3
                      ),
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue,
                      gradient: LinearGradient(colors: [
                        Colors.blue.withOpacity(0.5),Colors.red.withOpacity(0.5),Colors.orange.withOpacity(0.5)
                      ])


                  ),
                  child: Container(

                    padding: EdgeInsetsGeometry.directional(start: 10,end: 10),
                    child: DropdownButtonFormField<String>(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person)
                      ),
                      dropdownColor: Colors.tealAccent,
                      elevation: 8,
                      iconSize: 29,
                      style: TextStyle(fontSize: 20,color: Colors.black.withOpacity(0.5)),
                      isExpanded: true,
                      iconEnabledColor: Colors.red,
                      padding: EdgeInsetsGeometry.directional(start: 10,top: 10,bottom: 15),
                      value: selectedGender,
                      hint: Text("Select Gender",style: TextStyle(
                        color: Colors.black.withOpacity(0.4),
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),),
                      items: ["Male", "Female"].map((gender) {
                        return DropdownMenuItem(
                          value: gender,
                          child: Text(gender,style: TextStyle(
                            color: Colors.black.withOpacity(0.8),
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedGender = newValue;
                        });
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(

                  children: [
                    Expanded(
                      child:
                      Text(selectedDate == null ? 'Select Date' : "Date: ${selectedDate.toString().split(' ')[0]}",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.4),
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ), ),
                    ),
                    ElevatedButton(
                      onPressed: () => _pickDate(context),
                      child: Text("Birth Date",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
      appBar: AppBar(title: Text("Register")),
    );
  }
}
