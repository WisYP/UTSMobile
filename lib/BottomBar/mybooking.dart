import 'package:flutter/material.dart';
import 'package:sewamotor/Order%20Form/order.dart';

class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
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
      body: Container(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Container(
                height: 50.0,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "\nPilih Motor Yang Ingin Anda Sewa",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            height: double.minPositive,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Deskripsi'),
                        backgroundColor: Color.fromARGB(255, 227, 225, 200),
                        content: Container(
                          width: 600,
                          height: 300,
                          child: ListView(
                            children: [
                              Column(children: [
                                Image.asset("assets/beat.jpg",
                                    fit: BoxFit.fill),
                                const SizedBox(height: 10),
                                Row(children: [Text("Motor Matic Beat 110cc")]),
                                Row(children: [Text("Include Helm")]),
                                Row(children: [Text("Include Jas Hujan")]),
                                Row(children: [
                                  Text(
                                    "Harga 75.000/Hari",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  )
                                ]),
                              ]),
                            ],
                          ),
                        ),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => Order()),
                                );
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Color.fromARGB(255, 237, 215, 15)),
                              ),
                              child: Text(
                                'Book Now',
                                style: TextStyle(color: Colors.black),
                              )),
                        ],
                      );
                    },
                  );
                },
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1.0),
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/beat.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Deskripsi'),
                        backgroundColor: Color.fromARGB(255, 227, 225, 200),
                        content: Container(
                          width: 600,
                          height: 300,
                          child: ListView(
                            children: [
                              Column(children: [
                                Image.asset("assets/vario.jpg",
                                    fit: BoxFit.fill),
                                const SizedBox(height: 10),
                                Row(children: [
                                  Text("Motor Honda Vario 125cc")
                                ]),
                                Row(children: [Text("Include Helm")]),
                                Row(children: [Text("Include Jas Hujan")]),
                                Row(children: [
                                  Text(
                                    "Harga 110.000/Hari",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  )
                                ]),
                              ]),
                            ],
                          ),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => Order()),
                              );
                            },
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Color.fromARGB(255, 237, 215, 15)),
                              ),
                            child: Text('Book Now',style: TextStyle(color: Colors.black),),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1.0),
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/vario.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Deskripsi'),
                        backgroundColor: Color.fromARGB(255, 227, 225, 200),
                        content: Container(
                          width: 600,
                          height: 300,
                          child: ListView(
                            children: [
                              Column(children: [
                                Image.asset("assets/scoopy.jpg",
                                    fit: BoxFit.fill),
                                const SizedBox(height: 10),
                                Row(children: [
                                  Text("Motor Matic Honda Scoopy 125cc")
                                ]),
                                Row(children: [Text("Include Helm")]),
                                Row(children: [Text("Include Jas Hujan")]),
                                Row(children: [
                                  Text(
                                    "Harga 110.000/Hari",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  )
                                ]),
                              ]),
                            ],
                          ),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => Order()),
                              );
                            },
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Color.fromARGB(255, 237, 215, 15)),
                              ),
                            child: Text('Book Now',style: TextStyle(color: Colors.black),),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1.0),
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/scoopy.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Deskripsi'),
                        backgroundColor: Color.fromARGB(255, 227, 225, 200),
                        content: Container(
                          width: 600,
                          height: 300,
                          child: ListView(
                            children: [
                              Column(children: [
                                Image.asset("assets/nmax.jpg",
                                    fit: BoxFit.fill),
                                const SizedBox(height: 10),
                                Row(children: [
                                  Text("Motor Matic Yamaha Nmax 150cc")
                                ]),
                                Row(children: [Text("Include Helm")]),
                                Row(children: [Text("Include Jas Hujan")]),
                                Row(children: [
                                  Text(
                                    "Harga 150.000/Hari",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  )
                                ]),
                              ]),
                            ],
                          ),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => Order()),
                              );
                            },
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Color.fromARGB(255, 237, 215, 15)),
                              ),
                            child: Text('Book Now',style: TextStyle(color: Colors.black),),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1.0),
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/nmax.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
