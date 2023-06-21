import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:spotify/module/home/view/home_view.dart';
import 'package:spotify/module/library/view/library_view.dart';
import 'package:spotify/module/searchPage1/view/search_view1.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _HomeViewState();
}

class _HomeViewState extends State<MainPage> {
  int activeTab = 0;

  Map<dynamic, String> items = {
    FeatherIcons.home: "Home",
    FeatherIcons.search: "Search",
    FeatherIcons.book: "Library",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _buildPage(),
          Positioned(
            bottom: 0,
            child: Container(
              height: 70,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Color.fromARGB(143, 17, 16, 17),
                    Color.fromARGB(153, 17, 16, 17),
                    Color.fromARGB(163, 17, 16, 17),
                    Color.fromARGB(173, 17, 16, 17),
                    Color.fromARGB(183, 17, 16, 17),
                    Color.fromARGB(193, 17, 16, 17),
                    Color.fromARGB(203, 17, 16, 17),
                    Color.fromARGB(213, 17, 16, 17),
                    Color.fromARGB(223, 17, 16, 17),
                    Color.fromARGB(233, 17, 16, 17),
                    Color.fromARGB(243, 17, 16, 17),
                    Color.fromARGB(253, 17, 16, 17),
                    Color.fromARGB(255, 17, 16, 17),
                  ])),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                    items.length,
                    (index) => Column(children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  activeTab = index;
                                });
                              },
                              icon: Icon(
                                items.keys.elementAt(index),
                                color: (activeTab == index)
                                    ? const Color.fromARGB(255, 0, 255, 8)
                                    : Colors.white,
                              )),
                          Text(
                            items.values.elementAt(index),
                            style: const TextStyle(
                                color: Colors.grey, fontSize: 12),
                          )
                        ])),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildPage() {
    switch (activeTab) {
      case 0:
        return const HomeView();
      case 1:
        return const SearchView1();
      case 2:
        return const LibraryView();
      default:
        return const MainPage();
    }
  }
}
