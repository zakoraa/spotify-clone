import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify/list/list_singer.dart';
import 'package:spotify/routes/route_name.dart';

class FavoriteSinger extends StatefulWidget {
  const FavoriteSinger({super.key});

  @override
  State<FavoriteSinger> createState() => _FavoriteSingerState();
}

class _FavoriteSingerState extends State<FavoriteSinger> {
  void _sortList() {
    singerList_favSinger.sort((a, b) => a.name!.compareTo(b.name!));
  }

  void _updateList(String value) {
    setState(() {
      singerList_homePage.sort((a, b) => a.name!.compareTo(b.name!));
      singerList_favSinger = singer_list
          .where((element) =>
              element.name!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 40, 15, 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 30,
                          width: 30,
                          child: FloatingActionButton(
                            backgroundColor: Colors.transparent,
                            elevation: 0.0,
                            mini: true,
                            onPressed: () => Get.back(),
                            child: Image.asset(
                              "assets/back.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const Text(
                          "Choose 3 or more artists you like.",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 16),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: TextField(
                        onChanged: ((value) => _updateList(value)),
                        cursorColor: Colors.black,
                        cursorHeight: 16,
                        style:
                            const TextStyle(color: Colors.black, fontSize: 16),
                        decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                            hintText: "Search",
                            hintStyle: const TextStyle(
                              color: Colors.grey,
                            ),
                            fillColor: const Color(0xFFF5F5F5),
                            filled: true,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                )),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                ))),
                      ),
                    ),
                  ],
                ),
              ),
              (singerList_favSinger.isEmpty)
                  ? Padding(
                      padding: const EdgeInsets.fromLTRB(0, 70, 0, 0),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(Icons.search,
                                color: Color.fromARGB(255, 127, 127, 127)),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "No results found",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 127, 127, 127),
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: Center(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Wrap(
                              crossAxisAlignment: WrapCrossAlignment.start,
                              alignment: WrapAlignment.spaceBetween,
                              children: singerList_favSinger.map((item) {
                                _sortList();
                                return SizedBox(
                                  height: 155,
                                  width: 105,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 105,
                                        width: 105,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(105),
                                          child: Image.network(
                                            "${item.img}",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Text(
                                            "${item.name}",
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ))
                                    ],
                                  ),
                                );
                              }).toList()),
                        ),
                      ),
                    )
            ],
          ),
        ),
        Positioned(
          top: 35,
          left: MediaQuery.of(context).size.width * 0.85,
          child: Center(
            child: Container(
              height: 40.0,
              width: 40.0,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(173, 245, 245, 245),
                  borderRadius: BorderRadius.circular(20)),
              child: Material(
                elevation: 0.0,
                borderRadius: BorderRadius.circular(20),
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(20),
                  splashColor: Colors.transparent,
                  onTap: () => 
                    Get.offAllNamed(RouteName.main_page),
                  
                  child: const Center(
                      child: Icon(
                    Icons.arrow_right_alt,
                    color: Colors.black,
                    size: 35,
                  )),
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
