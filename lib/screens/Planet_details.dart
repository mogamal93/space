import 'package:flutter/material.dart';

class PlanetDetails extends StatefulWidget {
  const PlanetDetails({super.key});

  @override
  State<PlanetDetails> createState() => _PlanetDetailsState();
}

class _PlanetDetailsState extends State<PlanetDetails> {
  Widget _infoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Text("$label : ",
              style: const TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.w700)),
          Text(value,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700)),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    final List planets = args['planets'];
    int i = args['index'];
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: -100,
              left: 0,
              right: 0,
              child: Opacity(
                opacity: 0.3,
                child: ClipRect(
                  child: Align(
                    alignment: Alignment.center, // الجزء اللي يفضل ظاهر (النص)
                    heightFactor: 0.8, // كل ما تقللي الرقم، الظاهر يقل
                    child: Image.asset(
                      "assets/images/frame2.png",
                      width: MediaQuery.of(context).size.width * 1,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: const Color.fromRGBO(238, 64, 61, 1),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/Explore');
                    },
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                  ),
                ),
                Text(
                  "${planets[i].planetName}",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    height: 1.1,
                  ),
                ),
                Visibility(
                  visible:  (1 != 1)
                  ,
                  child: CircleAvatar(
                    backgroundColor:Color.fromRGBO(238, 64, 61, 1),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward ,color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment(-0.95, -0.7),
              child: Text(
                '${planets[i].title}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  height: 1.1,
                ),
              ),
            ),
            Align(
              alignment: Alignment(0, -0.4),
              child: Image.asset(
                '${planets[i].pngImage}',
                width: MediaQuery.of(context).size.width * .66,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.45,
                padding: const EdgeInsets.all(16),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("About" , style: TextStyle(
                  color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700)),
                      Text("${planets[i].about}", style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w300)),
                      _infoRow("Distance from Sun", "${planets[i].distanceFromSun} km"),
                      _infoRow("Length of Day", "${planets[i].lengthOfDay} hours"),
                      _infoRow("Orbital Period", "${planets[i].orbitalPeriod} years"),
                      _infoRow("Radius", "${planets[i].radius} km"),
                      _infoRow("Mass", "${planets[i].mass} kg"),
                      _infoRow("Gravity", "${planets[i].gravity} m/s²"),
                      _infoRow("Surface Area", "${planets[i].surfaceArea} km²"),

                    ],
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
