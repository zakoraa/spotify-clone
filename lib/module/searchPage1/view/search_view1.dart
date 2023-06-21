import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify/routes/route_name.dart';

import '../widget/content.dart';

class SearchView1 extends StatefulWidget {
  const SearchView1({super.key});

  @override
  State<SearchView1> createState() => _SearchView1State();
}

class _SearchView1State extends State<SearchView1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
          child: Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.95,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            "Search",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.camera_alt_outlined,
                            color: Colors.white,
                            size: 25,
                          ),
                        )
                      ]),
                  const SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    height: 60,
                    width: MediaQuery.of(context).size.width * 0.95,
                    child: Material(
                      borderRadius: BorderRadius.circular(15),
                      elevation: 0.0,
                      color: Colors.white,
                      child: InkWell(
                        splashColor: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        onTap: () {
                          Get.toNamed(RouteName.search_view2);
                        },
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              SizedBox(
                                width: 10.0,
                              ),
                              Icon(
                                Icons.search,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              Text(
                                "Artist, Songs, or Pods",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 14),
                              )
                            ]),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ContentSearchView1(
                    img1: "assets/Search Link.png",
                    img2: "assets/Search Link (1).png",
                    txt: "Your top genres",
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ContentSearchView1(
                      txt: "Popular podcast categories",
                      img1: "assets/Search Link (2).png",
                      img2: "assets/Search Link (3).png"),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ContentSearchView1(
                    txt: "Popular podcast categories",
                    img1: "assets/Search Link (4).png",
                    img2: "assets/Search Link (2).png",
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        "assets/Search Link (2).png",
                        width: 165,
                        height: 100,
                        fit: BoxFit.contain,
                      ),
                      Image.asset(
                        "assets/Search Link (3).png",
                        width: 165,
                        height: 100,
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 70.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
