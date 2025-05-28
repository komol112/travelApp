import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app/home_screen.dart';

class MalumotScreen extends StatelessWidget {
  const MalumotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 470,

              child: Stack(
                fit: StackFit.expand,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      "assets/images/andes.png",
                      fit: BoxFit.cover,
                    ),
                  ),

                  Container(
                    decoration: BoxDecoration(boxShadow: []),

                    height: double.infinity,
                    width: double.infinity,

                    padding: EdgeInsets.all(20),
                    child: Positioned(
                      bottom: 0,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              IconButton(
                                style: IconButton.styleFrom(
                                  backgroundColor: const Color.fromARGB(
                                    197,
                                    0,
                                    0,
                                    0,
                                  ).withOpacity(0.4),
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(
                                  Icons.arrow_back_ios_outlined,
                                  color: Colors.white70,
                                ),
                              ),

                              Spacer(),
                              IconButton(
                                style: IconButton.styleFrom(
                                  backgroundColor: const Color.fromARGB(
                                    197,
                                    0,
                                    0,
                                    0,
                                  ).withOpacity(0.4),
                                ),
                                onPressed: () {},
                                icon: Icon(
                                  Icons.archive_outlined,
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
                                    text: "Andes Mountain ",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 27,
                                    ),
                                    children: [],
                                  ),
                                ),

                                Row(
                                  spacing: 10,
                                  children: [
                                    Icon(
                                      Icons.location_on_outlined,
                                      size: 30,
                                      color: Colors.white70,
                                    ),
                                    Text(
                                      "Sourth America",
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 15,
                                      ),
                                    ),

                                    Spacer(),

                                    Icon(
                                      Icons.star_border_rounded,
                                      size: 20,
                                      color: Colors.white70,
                                    ),

                                    Text(
                                      "230",
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 20,
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
                ],
              ),
            ),

            Row(
              spacing: 30,
              children: [
                Text(
                  "Overview",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),

                Text(
                  "Details",
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  spacing: 5,
                  children: [
                    IconButton(
                      style: IconButton.styleFrom(
                        backgroundColor: Colors.grey.withOpacity(0.2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {},
                      icon: Icon(Icons.access_time_filled, color: Colors.black),
                    ),
                    greyText(text: "8 hours", fontweight: FontWeight.w500),
                  ],
                ),

                Row(
                  spacing: 5,
                  children: [
                    IconButton(
                      style: IconButton.styleFrom(
                        backgroundColor: Colors.grey.withOpacity(0.2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {},
                      icon: Icon(Icons.cloud, color: Colors.black),
                    ),
                    greyText(text: "16 C", fontweight: FontWeight.w500),
                  ],
                ),

                Row(
                  spacing: 5,
                  children: [
                    IconButton(
                      style: IconButton.styleFrom(
                        backgroundColor: Colors.grey.withOpacity(0.2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {},
                      icon: Icon(Icons.star_outlined, color: Colors.black),
                    ),
                    greyText(text: "4.5", fontweight: FontWeight.w500),
                  ],
                ),
              ],
            ),

            SizedBox(
              child: greyText(
                text:
                    "This vast mountain range is renowned for its remarkable diversity in terms of topography and climate. It features towering peaks, active volcanoes, deep canyons, expansive plateaus, and lush valleys. The Andes are also home to ",
              ),
            ),

            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black,
              ),
              child: Row(
                spacing: 20,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Book Now",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),

                  SvgPicture.asset("assets/svgs/Vector.svg"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
