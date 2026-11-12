import 'package:flutter/material.dart';
import 'package:space/model/Planet.dart';
import 'package:space/theme/AppColors.dart';


class Explore extends StatefulWidget {
   Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  final List<Planet> planets = [
    Planet(
      planetName: "Sun",
      pngImage: "assets/images/sun.png",
      model3D: "sun.glb",
      title: "The Sun: Our Solar System's Star",
      about:
      "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun's magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.",
      distanceFromSun: 0.0,
      lengthOfDay: 0.0,
      orbitalPeriod: 0.0,
      radius: 695700.0,
      mass: "1.989 × 10³⁰",
      gravity: 274.0,
      surfaceArea: "6.09 × 10¹²",
    ),
    Planet(
      planetName: "Mercury",
      pngImage: "assets/images/mercury.png",
      model3D: "mercury.glb",
      title: "Mercury: The Closest Planet",
      about:
      "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun's magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.",
      distanceFromSun: 57909227.0,
      lengthOfDay: 1407.6,
      orbitalPeriod: 0.24,
      radius: 2439.7,
      mass: "3.301 × 10²³",
      gravity: 3.7,
      surfaceArea: "7.48 × 10⁷",
    ),
    Planet(
      planetName: "Venus",
      pngImage: "assets/images/venus.png",
      model3D: "venus.glb",
      title: "Venus: Earth's Toxic Twin",
      about:
      "Venus is often referred to as Earth's twin due to its similar size and composition. However, its thick atmosphere, composed primarily of carbon dioxide, traps heat, making it the hottest planet in our solar system. This greenhouse effect has created a hostile environment with temperatures hot enough to melt lead. Venus is also shrouded in a thick layer of sulfuric acid clouds, which reflect sunlight and give it a yellowish appearance.",
      distanceFromSun: 108209072.0,
      lengthOfDay: 5832.2,
      orbitalPeriod: 0.62,
      radius: 6051.8,
      mass: "4.867 × 10²⁴",
      gravity: 8.87,
      surfaceArea: "4.60 × 10⁸",
    ),
    Planet(
      planetName: "Earth",
      pngImage: "assets/images/earth.png",
      model3D: "earth.glb",
      title: "Earth: Our Blue Marble",
      about:
      "Earth is the only known planet in the universe that supports life. Its unique combination of factors, including liquid water, a breathable atmosphere, and a suitable distance from the Sun, has created the ideal conditions for the development of complex organisms. Earth's magnetic field protects it from harmful solar radiation, and its atmosphere helps to regulate temperature and weather patterns.",
      distanceFromSun: 149598026.0,
      lengthOfDay: 23.93,
      orbitalPeriod: 1.0,
      radius: 6371.0,
      mass: "5.972 × 10²⁴",
      gravity: 9.81,
      surfaceArea: "5.10 × 10⁸",
    ),
    Planet(
      planetName: "Mars",
      pngImage: "assets/images/mars.png",
      model3D: "mars.glb",
      title: "Mars: The Red Planet",
      about:
      "Mars, often called the Red Planet due to its reddish hue caused by iron oxide, is a cold, rocky world with a thin atmosphere. It has polar ice caps, ancient riverbeds, and evidence of past volcanic activity, suggesting that it once had a warmer, wetter climate. Mars is a prime target for exploration due to its potential for past or present life, and NASA's Perseverance rover is currently searching for signs of ancient microbial life on the planet's surface.",
      distanceFromSun: 227943824.0,
      lengthOfDay: 24.62,
      orbitalPeriod: 1.88,
      radius: 3389.5,
      mass: "6.39 × 10²³",
      gravity: 3.71,
      surfaceArea: "1.45 × 10⁸",
    ),
    Planet(
      planetName: "Jupiter",
      pngImage: "assets/images/jupiter.png",
      model3D: "jupiter.glb",
      title: "Jupiter: The Gas Giant",
      about:
      "Jupiter is the largest planet in our solar system, a gas giant composed primarily of hydrogen and helium. Its Great Red Spot, a massive storm that has been raging for centuries, is a testament to its turbulent atmosphere. Jupiter has a strong magnetic field and numerous moons, including Europa, which is believed to have a subsurface ocean that could potentially harbor life.",
      distanceFromSun: 778547669.0,
      lengthOfDay: 9.92,
      orbitalPeriod: 11.86,
      radius: 69911.0,
      mass: "1.898 × 10²⁷",
      gravity: 24.79,
      surfaceArea: "6.21 × 10¹⁵",
    ),
    Planet(
      planetName: "Saturn",
      pngImage: "assets/images/saturn.png",
      model3D: "saturn.glb",
      title: "Saturn: The Ringed Planet",
      about:
      "Saturn is best known for its spectacular rings, which are composed of countless ice particles and rocks. It is a gas giant with a composition similar to Jupiter, but its rings and moons give it a distinct appearance. Saturn's largest moon, Titan, has a thick atmosphere and is the only known celestial body outside of Earth with liquid lakes and rivers.",
      distanceFromSun: 1426666422.0,
      lengthOfDay: 10.66,
      orbitalPeriod: 29.46,
      radius: 58232.0,
      mass: "5.683 × 10²⁶",
      gravity: 10.44,
      surfaceArea: "4.27 × 10¹⁵",
    ),
    Planet(
      planetName: "Uranus",
      pngImage: "assets/images/uranus.png",
      model3D: "uranus.glb",
      title: "Uranus: The Tilted Planet",
      about:
      "Uranus is an ice giant with a unique axial tilt, causing its seasons to be extreme. It is surrounded by faint rings and has numerous moons, including Miranda, known for its chaotic terrain. Uranus's atmosphere is composed primarily of hydrogen, helium, and methane, giving it a pale blue color.",
      distanceFromSun: 2870990000.0,
      lengthOfDay: 17.24,
      orbitalPeriod: 84.01,
      radius: 25362.0,
      mass: "8.681 × 10²⁵",
      gravity: 8.69,
      surfaceArea: "8.1 × 10¹⁵",
    ),
    Planet(
      planetName: "Neptune",
      pngImage: "assets/images/neptune.png",
      model3D: "neptune.glb",
      title: "Neptune: The Distant World",
      about:
      "Neptune is the farthest planet from the Sun and is another ice giant. Its atmosphere is similar to Uranus, but it is a deeper blue color due to the presence of methane. Neptune has several moons, including Triton, which orbits the planet in a retrograde direction and is believed to be a captured Kuiper Belt object.",
      distanceFromSun: 4498252900.0,
      lengthOfDay: 16.11,
      orbitalPeriod: 164.8,
      radius: 24622.0,
      mass: "1.024 × 10²⁶",
      gravity: 11.15,
      surfaceArea: "7.65 × 10¹⁵",
    ),
  ];

int i=0;

bool visforward = true;

bool visback = true;

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
             top: -40,
              child: Opacity(
                opacity: 0.5,
                child: Image.asset(
                  "assets/images/frame2.png",
                  width: MediaQuery.of(context).size.width * 1,
                  fit: BoxFit.cover,
                ),
              )
            ),
            const Align(
              alignment: Alignment(0,- 0.95),
              child: Text(
                "Explore",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  height: 1.1,
                ),
              ),
            ),
            const Align(
              alignment: Alignment(-0.85,- 0.55),
              child: Text(
                "Which planet\nwould you like to explore?",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  height: 1.1,
                ),
              ),
            ),
            Align(
                alignment: Alignment(0,0.2),
                child: Image.asset('${planets[i].pngImage}',width: MediaQuery.of(context).size.width * .66,)),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: SizedBox(
                  width: double.infinity,
                  child:
                  ElevatedButton(
                    onPressed: () {},
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
             Align(
              alignment: Alignment(0,.7),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Visibility(
                      visible: (i != 0),
                      child: CircleAvatar(
                        backgroundColor:Color.fromRGBO(238, 64, 61, 1),
                        child: IconButton(
                          onPressed: () {
                            i--;
                            setState(() {

                            });
                          },
                          icon: Icon(Icons.arrow_back ,color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    //SizedBox(width: 20),
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
                        visible:  (i != planets.length - 1)
        ,
                        child: CircleAvatar(
                        backgroundColor:Color.fromRGBO(238, 64, 61, 1),
                        child: IconButton(
                          onPressed: () {
                            i++;
                            setState(() {

                            });
                          },
                          icon: Icon(Icons.arrow_forward ,color: Colors.white,
                          ),
                        ),
                                            ),
                      ),
                  ],
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
                      Navigator.pushNamed(context, '/planet',arguments: {'planets': planets, 'index': i},);
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
