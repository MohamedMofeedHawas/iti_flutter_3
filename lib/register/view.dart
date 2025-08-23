
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:iti_flutter_3/custome/customeTextformfield/view.dart';
import 'package:iti_flutter_3/home_page/view.dart';
import 'package:iti_flutter_3/login/view.dart';
import 'package:iti_flutter_3/profile_page/view.dart';





class MyRegisterScreen extends StatefulWidget {
  const MyRegisterScreen({super.key});

  @override
  State<MyRegisterScreen> createState() => _ScreenState();
}

class _ScreenState extends State<MyRegisterScreen> {
  String? _savedGmail ;
  String? _savedPassword ;
  bool _isShowedPassword = false;
  bool _isShowedConfirmedPassword = false;

  String? governateSelected ;
  String? _selectedGender;
  String? countrySelected;
  List<String> countries = [
    "Afghanistan",
    "Albania",
    "Algeria",
    "Andorra",
    "Angola",
    "Antigua and Barbuda",
    "Argentina",
    "Armenia",
    "Australia",
    "Austria",
    "Azerbaijan",
    "Bahamas",
    "Bahrain",
    "Bangladesh",
    "Barbados",
    "Belarus",
    "Belgium",
    "Belize",
    "Benin",
    "Bhutan",
    "Bolivia",
    "Bosnia and Herzegovina",
    "Botswana",
    "Brazil",
    "Brunei",
    "Bulgaria",
    "Burkina Faso",
    "Burundi",
    "Cabo Verde",
    "Cambodia",
    "Cameroon",
    "Canada",
    "Central African Republic",
    "Chad",
    "Chile",
    "China",
    "Colombia",
    "Comoros",
    "Congo (Congo-Brazzaville)",
    "Costa Rica",
    "Croatia",
    "Cuba",
    "Cyprus",
    "Czech Republic",
    "Democratic Republic of the Congo",
    "Denmark",
    "Djibouti",
    "Dominica",
    "Dominican Republic",
    "Ecuador",
    "Egypt",
    "El Salvador",
    "Equatorial Guinea",
    "Eritrea",
    "Estonia",
    "Eswatini",
    "Ethiopia",
    "Fiji",
    "Finland",
    "France",
    "Gabon",
    "Gambia",
    "Georgia",
    "Germany",
    "Ghana",
    "Greece",
    "Grenada",
    "Guatemala",
    "Guinea",
    "Guinea-Bissau",
    "Guyana",
    "Haiti",
    "Honduras",
    "Hungary",
    "Iceland",
    "India",
    "Indonesia",
    "Iran",
    "Iraq",
    "Ireland",
    "Israel",
    "Italy",
    "Jamaica",
    "Japan",
    "Jordan",
    "Kazakhstan",
    "Kenya",
    "Kiribati",
    "Kuwait",
    "Kyrgyzstan",
    "Laos",
    "Latvia",
    "Lebanon",
    "Lesotho",
    "Liberia",
    "Libya",
    "Liechtenstein",
    "Lithuania",
    "Luxembourg",
    "Madagascar",
    "Malawi",
    "Malaysia",
    "Maldives",
    "Mali",
    "Malta",
    "Marshall Islands",
    "Mauritania",
    "Mauritius",
    "Mexico",
    "Micronesia",
    "Moldova",
    "Monaco",
    "Mongolia",
    "Montenegro",
    "Morocco",
    "Mozambique",
    "Myanmar (Burma)",
    "Namibia",
    "Nauru",
    "Nepal",
    "Netherlands",
    "New Zealand",
    "Nicaragua",
    "Niger",
    "Nigeria",
    "North Korea",
    "North Macedonia",
    "Norway",
    "Oman",
    "Pakistan",
    "Palau",
    "Palestine State",
    "Panama",
    "Papua New Guinea",
    "Paraguay",
    "Peru",
    "Philippines",
    "Poland",
    "Portugal",
    "Qatar",
    "Romania",
    "Russia",
    "Rwanda",
    "Saint Kitts and Nevis",
    "Saint Lucia",
    "Saint Vincent and the Grenadines",
    "Samoa",
    "San Marino",
    "Sao Tome and Principe",
    "Saudi Arabia",
    "Senegal",
    "Serbia",
    "Seychelles",
    "Sierra Leone",
    "Singapore",
    "Slovakia",
    "Slovenia",
    "Solomon Islands",
    "Somalia",
    "South Africa",
    "South Korea",
    "South Sudan",
    "Spain",
    "Sri Lanka",
    "Sudan",
    "Suriname",
    "Sweden",
    "Switzerland",
    "Syria",
    "Tajikistan",
    "Tanzania",
    "Thailand",
    "Timor-Leste",
    "Togo",
    "Tonga",
    "Trinidad and Tobago",
    "Tunisia",
    "Turkey",
    "Turkmenistan",
    "Tuvalu",
    "Uganda",
    "Ukraine",
    "United Arab Emirates",
    "United Kingdom",
    "United States of America",
    "Uruguay",
    "Uzbekistan",
    "Vanuatu",
    "Vatican City",
    "Venezuela",
    "Vietnam",
    "Yemen",
    "Zambia",
    "Zimbabwe"
  ];
  // List<String> egyptGovernorates = [
  //   "Cairo",
  //   "Giza",
  //   "Alexandria",
  //   "Dakahlia",
  //   "Red Sea",
  //   "Beheira",
  //   "Fayoum",
  //   "Gharbia",
  //   "Ismailia",
  //   "Menofia",
  //   // "Minya",
  //   // "Qaliubiya",
  //   // "New Valley",
  //   // "Suez",
  //   // "Aswan",
  //   // "Assiut",
  //   // "Beni Suef",
  //   // "Port Said",
  //   // "Damietta",
  //   // "Sharkia",
  //   // "South Sinai",
  //   // "Kafr El Sheikh",
  //   // "Matrouh",
  //   // "Luxor",
  //   // "Qena",
  //   // "North Sinai",
  //   // "Sohag"
  // ];
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

  final _myFormKey = GlobalKey<FormState>();
  final TextEditingController _myFirstNameController = TextEditingController();
  final TextEditingController _myLastNameController = TextEditingController();
  final TextEditingController _myEmailController = TextEditingController();
  final TextEditingController _myPasswordController = TextEditingController();
  final TextEditingController _myConfirmedPasswordController = TextEditingController();
  final TextEditingController _myNumberController = TextEditingController();
  final TextEditingController _myIDController = TextEditingController();
  final TextEditingController _myLanguageController = TextEditingController();
  final TextEditingController _myState = TextEditingController();

 void  _showDetails () {
   if(_myFormKey.currentState!.validate()) {
     String _userData = """
  First Name : ${_myFirstNameController.text.replaceAll(" ", "")}
  Last  Name : ${_myLastNameController.text.replaceAll(" ", "")}
  Email : ${_myEmailController.text.replaceAll(" ", "")}
  Password : ${_myPasswordController.text.replaceAll(" ", "")}
  Confirmed Password : ${_myPasswordController.text ==
         _myConfirmedPasswordController.text } 
  Phone Number :  ${_myNumberController.text.replaceAll(" ", "")}
  Identifier : ${_myIDController.text.replaceAll(" ", "")}
  Native Language : ${_myLanguageController.text.replaceAll(" ", "")}
  IsMarried : ${_myState.text.replaceAll(" ", "")}
  Gender : $_selectedGender
  Governate : $governateSelected
  Country : $countrySelected
  Birth Date : ${DateFormat('dd/MM/yyyy').format(selectedDate!)}
  
  """;
     showDialog(context: context, builder: (context) =>
         AlertDialog(
           content: Text(_userData),
           title: Text("Your Info",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
           actions: [
             ElevatedButton(onPressed: (){
               Navigator.pop(context);
             }, child: Text("Edit",style: TextStyle(fontWeight: FontWeight.bold),)),
             ElevatedButton(onPressed: (){
              showDialog(context: context, builder: (context) => AlertDialog(
                title: Text("Warning!!!!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.red),),
                content: Text("Do You ensure From This Data Before submitted ? "),
                actions: [
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyRegisterScreen(),));
                  }, child: Text("No ",style: TextStyle(fontWeight: FontWeight.bold),)),

                  ElevatedButton(onPressed: (){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("You Are Successfully Submit, Welcome....")));
                    Navigator.pushNamed(context, "profile");
                  }, child: Text("Yes ",style: TextStyle(fontWeight: FontWeight.bold),)),

                ],
              ),);
             }, child: Text("Confirm",style: TextStyle(fontWeight: FontWeight.bold),))
           ],
         ),);
   }
  }



  @override
  Widget build(BuildContext context) {




    return Scaffold(
      body:
      Form(
        key: _myFormKey,
        child: ListView(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 10,vertical: 10),
        children: [
          Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child:
          TextFormField(
            textInputAction: TextInputAction.next,
            autofocus: true,
            controller: _myFirstNameController,
            validator: (value) => value!.isEmpty ? "First Name Required":null,
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
              labelText: "First Name",
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
          Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child:
          TextFormField(
            textInputAction: TextInputAction.next,
            autofocus: true,
            controller: _myLastNameController,
            validator: (value) => value!.isEmpty ? "Last Name Required":null,
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
              labelText: "Last Name",
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
          Padding(padding: EdgeInsetsGeometry.directional(
              bottom: 10,
            ), child: TextFormField(
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress ,
              controller: _myEmailController,
              validator: (value) => value!.contains("@") && value.contains(".")? null: 'Enter a valid Email That contains "@" and "." ',
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
            ),),
          Padding(
            padding: EdgeInsetsGeometry.directional(

              bottom: 15,
            ),
            child: TextFormField(
              controller: _myPasswordController,
              textInputAction: TextInputAction.next,

              validator: (value) => (value!.isEmpty || (value.contains("#") && value.contains("*") && value.contains("/") && value.contains("_") )) ? "Password Must Required and contains '#','_','/','*'" :null,
              obscureText: _isShowedPassword == false ? true : false,

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
          Padding(padding: EdgeInsetsGeometry.directional(bottom: 15,), child: TextFormField(
              textInputAction: TextInputAction.next,
              controller: _myConfirmedPasswordController,
              validator: (value) => _myConfirmedPasswordController.text == _myPasswordController.text ? null : "Password Must be Confirmed , Enter Again",
              obscureText: _isShowedConfirmedPassword == false
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
                      _isShowedConfirmedPassword =
                      !_isShowedConfirmedPassword;
                    });
                  },
                  icon: _isShowedConfirmedPassword
                      ? Icon(Icons.visibility)
                      : Icon(Icons.visibility_off),
                ),
              ),
            ),),
          Padding(padding: EdgeInsetsGeometry.directional(

        bottom: 15,
      ), child: TextFormField(
          textInputAction: TextInputAction.next,
          controller: _myNumberController,

          maxLength: 11,
          validator: (value) => value!.isEmpty || _myNumberController.text.length !=11 ? "Number Required and must be 11 number" : null,
          keyboardType: TextInputType.phone,
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
        ),),
          Padding(padding: EdgeInsetsGeometry.directional(
              bottom: 15,
            ), child: TextFormField(
              controller: _myIDController,
              maxLength: 14,
              validator: (value) => value!.isEmpty || _myIDController.text.length != 14 ? "ID Required" : null,
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

                prefixIcon: Image.asset("assets/images/ID.png"),

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
          Padding(padding: EdgeInsetsGeometry.directional(
            bottom: 10,
          ), child: TextFormField(
            controller: _myState,
            textInputAction: TextInputAction.next,
            validator: (value) => value!.isEmpty ? "State Required" : null,
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
              labelText: "isMarried (Yes/No)",
              floatingLabelAlignment: FloatingLabelAlignment.center,

              prefixIcon: Icon(Icons.wc),
            ),
          ),),
          Padding(padding: EdgeInsetsGeometry.directional(
            bottom: 10,
          ), child: TextFormField(
            controller: _myLanguageController,
            textInputAction: TextInputAction.next,
            validator: (value) => value!.isEmpty ? "Language Required" : null,
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
              labelText: "Native Language",
              floatingLabelAlignment: FloatingLabelAlignment.center,

              prefixIcon: Icon(Icons.language),
            ),
          ),),
          Padding(
            padding: EdgeInsetsGeometry.directional(start: 0,end: 0),
            child:
            Container(
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
              padding: EdgeInsetsGeometry.directional(start: 10,end: 10),
              child:
              DropdownButtonHideUnderline(
                child: DropdownButtonFormField<String>(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                      prefixIcon: Icon(Icons.person)
                  ),
                  dropdownColor: Colors.tealAccent,
                  elevation: 8,
                  iconSize: 29,
                  style: TextStyle(fontSize: 20,color: Colors.black.withOpacity(0.5)),
                  isExpanded: true,
                  iconEnabledColor: Colors.white,
                  padding: EdgeInsetsGeometry.directional(start: 10,top: 10,bottom: 15),
                  value:  _selectedGender,
                  hint:
                  Text( _selectedGender == null?"Select Gender" : _selectedGender!,style: TextStyle(
                    color: Colors.black.withOpacity(0.4),
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),),
                  items:[
                    DropdownMenuItem(child:    Row(
                children: [
                    Icon(Icons.male),
                SizedBox(width: 20,),
                Text("Male"),
                ],
              ),),
            DropdownMenuItem(value: "Female",child: Row(
              children: [
                Icon(Icons.female),
                SizedBox(width: 20,),
                Text("Female"),
              ],
            ),),

                  ],

                  onChanged: (newValue) {
                    setState(() {
                      _selectedGender = newValue;
                    });
                  },
                ),
              ),
            ),
          ),


Padding(
  padding: const EdgeInsetsGeometry.directional(top: 15,bottom: 15),
  child: Container(
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
    // padding: EdgeInsetsGeometry.directional(start: 10,end: 10,top: 10,bottom: 10),
    // child: DropdownButtonHideUnderline(
    //
    //     child: DropdownButtonFormField(isExpanded: true,
    //
    //     style: TextStyle(fontSize: 20,color: Colors.black.withOpacity(0.5)),
    //
    //     dropdownColor: Colors.tealAccent,
    //     elevation: 8,
    //     iconSize: 29,
    //     borderRadius: BorderRadius.all(Radius.circular(15)),
    //
    //     decoration: InputDecoration(
    //     border: InputBorder.none,
    //     prefixIcon: Icon(Icons.flag)
    //   ),
    //     iconEnabledColor: Colors.white,
    //
    //   //   hint: Text(governateSelected == null ? "Select Governate" : governateSelected!,style: TextStyle(
    //   //   color: Colors.black.withOpacity(0.4),
    //   //   fontSize: 17,
    //   //   fontWeight: FontWeight.bold,
    //   // ),),
    //     value: governateSelected,
    //
    //     items: egyptGovernorates.map((governate){
    //   return DropdownMenuItem(value: governate,child: Text(governate),);
    //
    // }).toList(), onChanged: ((newValue) {
    //
    // setState(() {
    //   governateSelected = newValue;
    //
    // });    }))),
  ),
),
          Padding(
            padding: const EdgeInsetsGeometry.directional(top: 10,bottom: 15),
            child: Container(
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
              padding: EdgeInsetsGeometry.directional(start: 10,end: 10,top: 10,bottom: 10),
              child: DropdownButtonHideUnderline(child: DropdownButtonFormField(
                isExpanded: true,
                  style: TextStyle(fontSize: 20,color: Colors.black.withOpacity(0.5)),

                  dropdownColor: Colors.tealAccent,
                  elevation: 8,
                  iconSize: 29,
                  borderRadius: BorderRadius.all(Radius.circular(15)),

                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Image(image: AssetImage("assets/images/global.png"))
                  ),
                  iconEnabledColor: Colors.white,

                  hint: Text(governateSelected == null ? "Select Country" : governateSelected!,style: TextStyle(
                    color: Colors.black.withOpacity(0.4),
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),),
                  value: governateSelected,

                  items: countries.toSet().toList().map((governate){
                    return DropdownMenuItem(value: governate,child: Text(governate),);

                  }).toList(), onChanged: ((newValue) {

                setState(() {
                  governateSelected = newValue;

                });    }))),
            ),
          ),


          Padding(
            padding: const EdgeInsets.only(top: 15,bottom: 15),
            child: Row(

              children: [
                Expanded(
                  child:
                  Text(selectedDate == null ? 'Select Date' : "Your Birth Date: ${DateFormat('dd/MM/yyyy').format(selectedDate!)}",
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.4),
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ), ),
                ),
                ElevatedButton(style: ElevatedButton.styleFrom(elevation: 5.8,shadowColor: Colors.red.shade200),
                  onPressed: () => _pickDate(context),
                  child: Text("Birth Date",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                ),




              ],
            ),
          ),


SizedBox(height: 20,),

          ElevatedButton(style: ElevatedButton.styleFrom(
              elevation: 5,
              shadowColor: Colors.red,
              backgroundColor: Colors.blue.withOpacity(0.5)
          ),
              onPressed: _showDetails,
              child: Text("Show Details",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23,color: Colors.white),)),

          ElevatedButton(style: ElevatedButton.styleFrom(
              elevation: 5,
              shadowColor: Colors.red,
              backgroundColor: Colors.blue.withOpacity(0.5)
          ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
              },
              child: Text("Save",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23,color: Colors.white),)),


          ElevatedButton(style: ElevatedButton.styleFrom(
            elevation: 5,
            shadowColor: Colors.red,
            backgroundColor: Colors.blue.withOpacity(0.5)
          ),
              onPressed: (){
            if(_myFormKey.currentState!.validate()) {}
          }, child: Text("Submit",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23,color: Colors.white),)),
          SizedBox(height: 20,),



        ] ,
        ),
      ),

      appBar: AppBar(
        title: Text("Register"),

      ),
    );
  }
}

