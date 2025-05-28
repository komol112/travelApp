import 'package:flutter/material.dart';
import 'package:travel_app/malumot_screen.dart';

void main(List<String> args) {
  runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            headerRow(),
            searchContainer(),
            Row(
              children: [
                Text(
                  "Popular places",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: greyText(text: "View all", fonsize: 13),
                ),
              ],
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 35,
                children: [
                  buttonOnRow(text: "Most Viewed"),
                  buttonOnRow(
                    text: "Nearby",
                    color: const Color.fromARGB(216, 255, 253, 253),
                    textColor: Colors.grey,
                  ),
                  buttonOnRow(
                    text: "Latest",
                    color: const Color.fromARGB(216, 255, 253, 253),
                    textColor: Colors.grey,
                  ),
                ],
              ),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 20,
                children: [
                  travelCard(
                    context: context,
                    backgroundImagePath: "assets/images/tog.png",
                    country: "Mount Fuji, ",
                    state: "Tokyo, Japan",
                  ),

                  travelCard(
                    context: context,
                    backgroundImagePath: "assets/images/andes.png",
                    country: "Andes Mountain ",
                    state: "South americ.",
                  ),

                  travelCard(
                    context: context,
                    backgroundImagePath: "assets/images/image.webp",
                    country: "Pretty Mountain",
                    state: "Tokyo",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        iconSize: 30,
        elevation: 0,

        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,

        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time_rounded),
            label: "hour",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_rounded),
            label: "like",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "person",
          ),
        ],
      ),
    );
  }
}

SizedBox travelCard({
  required BuildContext context,
  required String backgroundImagePath,
  required String country,
  required String state,
}) {
  return SizedBox(
    width: 270,
    height: 420,

    child: Stack(
      fit: StackFit.expand,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.asset(backgroundImagePath, fit: BoxFit.cover),
        ),

        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MalumotScreen()),
            );
          },
          child: Container(
            height: double.infinity,
            width: double.infinity,

            padding: EdgeInsets.all(20),
            child: Positioned(
              bottom: 0,
              child: Column(
                children: [
                  Row(
                    children: [
                      Spacer(),
                      IconButton(
                        style: IconButton.styleFrom(
                          backgroundColor: const Color.fromARGB(
                            255,
                            138,
                            137,
                            137,
                          ),
                        ),
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),

                  Spacer(),

                  Container(
                    padding: EdgeInsets.all(15),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(
                        197,
                        0,
                        0,
                        0,
                      ).withOpacity(0.4),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 10,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: country,
                            style: TextStyle(color: Colors.white, fontSize: 15),
                            children: [
                              TextSpan(
                                text: state,
                                style: TextStyle(
                                  color: const Color.fromARGB(
                                    255,
                                    228,
                                    227,
                                    227,
                                  ),
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),

                        Row(
                          spacing: 10,
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              size: 20,
                              color: Colors.white70,
                            ),
                            Text(
                              state,
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 11,
                              ),
                            ),

                            Spacer(),

                            Icon(
                              Icons.star_border_rounded,
                              size: 20,
                              color: Colors.white70,
                            ),

                            Text(
                              "4.8",
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

ElevatedButton buttonOnRow({
  required String text,
  Color? color,
  Color? textColor,
}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: color ?? const Color.fromARGB(255, 41, 41, 41),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),
    onPressed: () {},
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),

      child: Text(
        text,
        style: TextStyle(
          color: textColor ?? Colors.white,
          fontSize: 13.3,
          fontWeight: FontWeight.w300,
        ),
      ),
    ),
  );
}

Container searchContainer() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Row(
      spacing: 15,
      children: [
        greyText(text: "Search places"),
        Spacer(),
        greyText(text: "|", fonsize: 26, fontweight: FontWeight.w100),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.format_list_bulleted_sharp, color: Colors.grey),
        ),
      ],
    ),
  );
}

Text greyText({
  required String text,
  double? fonsize,
  FontWeight? fontweight,
}) => Text(
  text,
  style: TextStyle(
    color: Colors.grey,
    fontSize: fonsize,
    fontWeight: fontweight,
  ),
);

Row headerRow() {
  return Row(
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hi, David 👋",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
          ),
          Text(
            "Explorre the world",
            style: TextStyle(color: Colors.grey, fontSize: 17),
          ),
        ],
      ),

      Spacer(),

      CircleAvatar(
        maxRadius: 24,
        backgroundImage: NetworkImage(
          "https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D",
        ),
      ),
    ],
  );
}
