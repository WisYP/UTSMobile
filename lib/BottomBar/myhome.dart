import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
      body: ListView(
        children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Container(
                height: 100.0,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Hai, Selamat Datang!!!",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10), 
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.black,
                          size: 25.0,
                        ),
                        SizedBox(width: 5), // Spasi antara ikon dan teks alamat
                        Text(
                          "Jalan Bumi Sehat No 10, Kemanisan,\nJakarta Barat, DKI Jakarta",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.normal,
                              height: double.minPositive),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
          Padding(
            padding: EdgeInsets.fromLTRB(12.0, 10.0, 12.0, 0.0),
            child: Container(
              height: 200.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Container(
                      height: 150,
                      width: 200,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1.0),
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage('assets/motor1.png'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Container(
                      height: 150,
                      width: 200,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1.0),
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage('assets/motor2.jpg'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Container(
              height: 210.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "\nKami dengan penuh kebanggaan menyambut Anda di Aplikasi Goy Sewa Motor, tempat yang tepat ketika anda membutuhkan motor untuk anda bepergian. Hanya dengan 75.000 Kalian dapat memilih motor yang ingin kalian sewa dan jusa sesuai dengan budget, kebutuhan, dan style.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.normal,
                        height: double.minPositive),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 4.0),
            child: Container(
              height: 200.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Container(
                      height: 150,
                      width: 200,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1.0),
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage('assets/motor3.jpg'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Container(
                      height: 150,
                      width: 200,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1.0),
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage('assets/motor4.jpg'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Container(
                height: 350.0,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "About Us",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "\nSelamat datang di Aplikasi Goy Sewa Motor, kami menyediakan jasa sewa motor untuk anda yang membutuhkan dengan kualitas motor yang bagus dan aman.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.normal,
                        height: double.minPositive,
                      ),
                    ),
                    Text(
                      "\n\nKami memegang teguh nilai-nilai seperti kualitas, keramahan, dan inovasi. Kami selalu merawat motor yang disewakan dengan baik dan langsung memperbaiki apabila terjadi kerusakan.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.normal,
                        height: double.minPositive,
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
