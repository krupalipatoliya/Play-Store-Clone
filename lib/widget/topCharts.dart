import 'package:flutter/material.dart';
import 'package:play_story/detailsPage.dart';
import 'package:play_story/homePage.dart';

class TopChart extends StatefulWidget {
  const TopChart({Key? key}) : super(key: key);

  @override
  State<TopChart> createState() => _TopChartState();
}

class _TopChartState extends State<TopChart> {

  int val = 10;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              children: [
                const Text(
                  "Show installed apps",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                Switch(
                  activeColor: const Color(0xff15704f),
                  value: isSwitch,
                  onChanged: (val) {
                    setState(() {
                      isSwitch = val;
                    });
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 35,
            width: 400,
            child: Padding(
              padding: const EdgeInsets.only(left: 18),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                      color: const Color(0xff15704f)
                          .withOpacity(0.1),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Center(
                      child: Text(
                        "Top free",
                        style: TextStyle(
                            color: Color(0xff15704f),
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 30,
                    width: 130,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey.withOpacity(0.7),
                          width: 1),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        "Top grossing",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.withOpacity(0.7),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        "Tranding",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey.withOpacity(0.7),
                          width: 1),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        "Top paid",
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.7),
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 380,
            width: 350,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                     AppDetailsScreen(
                      image:   'assets/images/apps/${val + 10}.png',

                    ),
                  ),
                );
              },
              child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, index) {
                    val = index;

                    return ListTile(
                      title: const Text("Game name"),
                      subtitle: const Text("game subtitle"),
                      leading: SizedBox(
                        width: 90,
                        child: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Text("${index + 1}"),
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.circular(10),
                              ),
                              child: Image.asset(
                                  'assets/images/apps/${index + 10}.png'),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
