import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Stack(
            children: [
              Positioned(

                left: -400,
                child: Image.asset(
                  "assets/images/frame1.png",
                  width: MediaQuery.of(context).size.width * 1.7,
                  height: MediaQuery.of(context).size.height * .99,
                  fit: BoxFit.fitHeight,
                ),
              ),

              const Align(
                alignment: Alignment(-0.85, -0.05),
                child: Text(
                  "Explore\nThe\nUniverse",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontWeight: FontWeight.w900,
                    height: 1.1,
                  ),
                ),
              ),

              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: SizedBox(
                    width: double.infinity,
                    child:
                    ElevatedButton(
  onPressed: () {
    Navigator.pushNamed(context, '/Explore');
  },
  child:  const Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text("Explore",
          style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600)),
      Icon(Icons.arrow_forward, color: Colors.white),
    ],
  ),
  style: ElevatedButton.styleFrom(
    backgroundColor: Color.fromRGBO(238, 64, 61, 1),

    minimumSize: const Size(double.infinity, 50),
    padding: const EdgeInsets.all(16),
    elevation: 0,

    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),

    textStyle: const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.normal,
    ),
  ),
),
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}
