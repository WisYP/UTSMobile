import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
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
              Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "\nSilahkan Isi Form Booking",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.normal,
                            height: double.minPositive,
                          ),
                        ),
                      ],
                    ),
              SizedBox(height: 30),
              buildTextField("Nama Lengkap", "Wisnu Yogi",false),
              buildTextField("Nomor Telepon", "087876774839",false),
              buildTextField("E-mail", "wisnuyogipamungkas@gmail.com",false),
              buildTextField("Waktu Pengambilan", "Senin, 29 Oktober 2023",false),
              buildTextField("Jaminan Berupa KTP/Paspor", "KTP",false),
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
                              child: const Text('Booking Selesai',style: TextStyle(color: Colors.black),)
                              ),
                          ],
                      backgroundColor: Color.fromARGB(255, 227, 225, 200),
                      contentPadding: const EdgeInsets.all(20.0),
                      content: const Text('Kamu Sudah Menyelesaikan Booking, Silahkan Datang Untuk Pengambilan dan Bawa Persyaratan'),
                        ));
                    },
                    child: Text("BOOKING", style: TextStyle(
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

  Widget buildTextField(String labeltext, String placegolder, bool isPasswordTextField) {
    return Padding(
      padding: EdgeInsets.only(bottom: 30),
      child: TextField(
        obscureText: isPasswordTextField ? true : false,
        decoration: InputDecoration(
          suffixIcon: isPasswordTextField ?
          IconButton(
            icon: Icon(Icons.remove_red_eye, color: Colors.grey),
            onPressed: () {},
          ): null,
        contentPadding: EdgeInsets.only(bottom: 5),
        labelText: labeltext,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: placegolder,
          hintStyle: TextStyle(
            fontSize: 15.0,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}


