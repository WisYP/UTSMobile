 import 'package:flutter/material.dart';
 import 'package:shared_preferences/shared_preferences.dart';

 class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool isObscurePassword = true;

  TextEditingController nameController = TextEditingController();
  TextEditingController birthDateController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Load data from SharedPreferences when the widget is created
    loadUserData();
  }

  // Function to load user data from SharedPreferences
  void loadUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      nameController.text = prefs.getString('name') ?? '';
      birthDateController.text = prefs.getString('birthDate') ?? '';
      phoneNumberController.text = prefs.getString('phoneNumber') ?? '';
      emailController.text = prefs.getString('email') ?? '';
      passwordController.text = prefs.getString('password') ?? '';
      addressController.text = prefs.getString('address') ?? '';
    });
  }

  // Function to save user data to SharedPreferences
  void saveUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('name', nameController.text);
    prefs.setString('birthDate', birthDateController.text);
    prefs.setString('phoneNumber', phoneNumberController.text);
    prefs.setString('email', emailController.text);
    prefs.setString('password', passwordController.text);
    prefs.setString('address', addressController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 227, 225, 200),
      appBar: AppBar(
        title: Text("GOY SEWA MOTOR"),
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.black,
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 214, 199, 62),
      ),
      body:Container(
        padding: EdgeInsets.only(
          left: 15,
          top: 20,
          right: 15,
        ),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 4,
                          color: Colors.white,
                          ),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 10,
                            color: Colors.black.withOpacity(0.1)
                          )
                        ],
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/Yogi.jpg")
                        )
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 4,
                            color: Colors.white,
                          ),
                          color: Colors.yellow,
                        ),
                        child: Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30),
              buildTextField("Nama Lengkap", "Wisnu Yogi", false, nameController),
              buildTextField("Tanggal Lahir", "26 September 2002", false, birthDateController),
              buildTextField("Nomor Telepon", "08787664839", false, phoneNumberController),
              buildTextField("E-mail", "wisnuyogipamungkas@gmail.com", false, emailController),
              buildTextField("Password", "********", true, passwordController),
              buildTextField("Alamat", "Jalan Praja Dalam", false, addressController),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Color.fromARGB(255, 237, 215, 15)),
                              ),
                              child: const Text('Close',style: TextStyle(color: Colors.black),)
                              ),
                          ],
                      contentPadding: const EdgeInsets.all(20.0),
                      content: const Text('Your changes has been confirmed'),
                        ));
                    },
                    child: Text("SAVE", style: TextStyle(
                      fontSize: 15,
                      letterSpacing: 2,
                      color: Colors.black,
                    )),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.yellow,
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }


 Widget buildTextField(String labeltext, String placegolder, bool isPasswordTextField, TextEditingController controller) {
    return Padding(
      padding: EdgeInsets.only(bottom: 30),
      child: TextField(
        controller: controller,
        obscureText: isPasswordTextField ? isObscurePassword : false,
        decoration: InputDecoration(
          suffixIcon: isPasswordTextField
              ? IconButton(
                  icon: Icon(
                    isObscurePassword ? Icons.visibility : Icons.visibility_off,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      isObscurePassword = !isObscurePassword;
                    });
                  },
                )
              : null,
          contentPadding: EdgeInsets.only(bottom: 5),
          labelText: labeltext,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: placegolder,
          hintStyle: TextStyle(
            fontSize: 15.0,
            color: Colors.grey,
          ),
        ),
        onChanged: (value) {
          // Save data to SharedPreferences when the text changes
          saveUserData();
        },
      ),
    );
  }
}