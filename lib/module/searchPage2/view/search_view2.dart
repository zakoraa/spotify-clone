import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify/list/list_singer.dart';

class SearchView2 extends StatefulWidget {
  const SearchView2({super.key});

  @override
  State<SearchView2> createState() => _SearchView2State();
}

class _SearchView2State extends State<SearchView2> {
  void _updateList(String value) {
    setState(() {
      singerList_homePage = singer_list
          .where((element) =>
              element.name!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
        child: Center(
          child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.95,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                    child: TextField(
                      cursorColor: Colors.white,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                      onChanged: (value) => _updateList(value),
                      decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 20.0),
                        prefixIcon: GestureDetector(
                          onTap: () => Get.back(),
                          child: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        hintText: "Search",
                        hintStyle: const TextStyle(
                          color: Colors.white,
                        ),
                        fillColor: const Color(0xFF282828),
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                            )),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                            )),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  const Text(
                    "  Recent searches",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                  (singerList_homePage.isEmpty)
                      ? Padding(
                          padding: const EdgeInsets.only(top:150),
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
                      : Expanded(
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: ListView.builder(
                              itemBuilder: ((context, index) {
                                return Card(
                                  margin:
                                      const EdgeInsets.only(left: 0, right: 0),
                                  color: const Color.fromARGB(255, 17, 16, 17),
                                  elevation: 0.0,
                                  child: ListTile(
                                    leading: SizedBox(
                                      height: 60,
                                      width: 60,
                                      child: CircleAvatar(
                                        backgroundImage: NetworkImage(
                                          "${singerList_homePage[index].img}",
                                        ),
                                      ),
                                    ),
                                    title: Text(
                                      "${singerList_homePage[index].name}",
                                      style: const TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    subtitle: const Text(
                                      "Artist",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                );
                              }),
                              itemCount: singerList_homePage.length,
                            ),
                          ),
                        )
                ],
              )),
        ),
      ),
    );
  }
}
