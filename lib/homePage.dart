import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:play_story/detailsPage.dart';
import 'package:play_story/widget/topCharts.dart';

bool isSwitch = false;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  late PageController _pageController;
  int bottomNavbarIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
              padding: const EdgeInsets.symmetric(horizontal: 13),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 7,
                    ),
                  ]),
              child: Row(
                children: [
                  const Icon(Icons.menu),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Search for apps & games",
                    style: TextStyle(
                      color: Colors.grey.withOpacity(0.6),
                      fontSize: 18,
                    ),
                  ),
                  const Spacer(),
                  const Icon(Icons.mic),
                ],
              ),
            ),
            TabBar(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              controller: _tabController,
              labelColor: const Color(0xff15704f),
              unselectedLabelColor: Colors.grey,
              labelStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow,
                  fontSize: 17),
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 3,
              indicatorColor: const Color(0xff15704f),
              isScrollable: true,
              tabs: const [
                Tab(
                  text: "For you",
                ),
                Tab(
                  text: "Top charts",
                ),
                Tab(
                  text: "Categories",
                ),
                Tab(
                  text: "Editor's Choice",
                ),
              ],
            ),
            const Divider(),
            SizedBox(
              height: 416,
              child: PageView(
                controller: _pageController,
                onPageChanged: (val) {
                  setState(() {
                    _tabController.animateTo(val);
                    bottomNavbarIndex = val;
                  });
                },
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18),
                          child: Row(
                            children: const [
                              Text(
                                "Recommended for you",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Spacer(),
                              Icon(Icons.arrow_forward),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          height: 150,
                          width: 370,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (BuildContext context, val) {
                              return SizedBox(
                                height: 140,
                                width: 120,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 105,
                                        width: 105,
                                        decoration: BoxDecoration(
                                          // color: Colors.redAccent,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Image.asset(
                                            'assets/images/apps/${val + 1}.png'),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      const Text("Title",
                                          style: TextStyle(fontSize: 16)),
                                      Row(
                                        children: const [
                                          Text(
                                            "4.2",
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 14,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18),
                          child: Row(
                            children: const [
                              Text(
                                "New & Updated apps",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Spacer(),
                              Icon(Icons.arrow_forward),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          height: 150,
                          width: 370,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            itemBuilder: (BuildContext context, val) {
                              return SizedBox(
                                height: 140,
                                width: 120,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 105,
                                        width: 105,
                                        decoration: BoxDecoration(
                                          // color: Colors.deepOrangeAccent,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Image.asset(
                                            'assets/images/apps/${val + 5}.png'),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      const Text("Title",
                                          style: TextStyle(fontSize: 16)),
                                      Row(
                                        children: const [
                                          Text(
                                            "4.2",
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 14,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18),
                          child: Row(
                            children: const [
                              Text(
                                "Suggested for you",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Spacer(),
                              Icon(Icons.arrow_forward),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          height: 150,
                          width: 370,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            itemBuilder: (BuildContext context, val) {
                              return SizedBox(
                                height: 140,
                                width: 120,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 105,
                                        width: 105,
                                        decoration: BoxDecoration(
                                          // color: Colors.orangeAccent,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Image.asset(
                                            'assets/images/apps/$val.png'),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      const Text("Title",
                                          style: TextStyle(fontSize: 16)),
                                      Row(
                                        children: const [
                                          Text(
                                            "4.2",
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 14,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  const TopChart(),
                  const Center(
                    child: Text("Page 3"),
                  ),
                  const Center(
                    child: Text("Page 4"),
                  ),
                ],
              ),
            ),
            BottomNavigationBar(
              currentIndex: bottomNavbarIndex,
              backgroundColor: const Color(0xff15704f),
              unselectedItemColor: Colors.grey,
              showUnselectedLabels: true,
              unselectedLabelStyle: const TextStyle(
                color: Colors.grey,
              ),
              selectedItemColor: const Color(0xff15704f),
              selectedFontSize: 16,
              onTap: (val) {
                setState(() {
                  _tabController.animateTo(val);
                  _pageController.animateToPage(
                    val,
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.linear,
                  );
                  bottomNavbarIndex = val;
                });
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.games),
                  label: 'GAME',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.apps),
                  label: 'APP',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.movie),
                  label: 'MOVIE',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.book),
                  label: 'BOOK',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
