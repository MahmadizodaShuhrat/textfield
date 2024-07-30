import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  bool ikonka = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "UMAR AZIZOV",
            style: TextStyle(color: Colors.blue),
          ),
          centerTitle: true,
        ),
        body: (SingleChildScrollView(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Image.asset("images/image.png"),
              SizedBox(
                height: 20,
              ),
              Container(
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Telefon",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "Email",
                      style: TextStyle(color: Colors.blue, fontSize: 20),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child:  Column(
                  children: [
                   const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Enter your name",
                      ),
                    ),
                  const  SizedBox(
                      height: 30,
                    ),
                  const  TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Enter your username",
                      ),
                    ),
                  const  SizedBox(
                      height: 30,
                    ),
                    TextField(
                      obscureText: ikonka,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        suffixIcon: IconButton(onPressed: (){
                          setState(() {
                          ikonka = !ikonka;
                            
                          });
                        }, icon: ikonka ? Icon(Icons.visibility_outlined) : Icon(Icons.visibility_off_outlined)),
                        labelText: "Enter your password",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40,),
              Container(
                alignment: Alignment.center,
                width: 350,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "Zaregistirovatsya",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
