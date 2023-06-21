// ignore_for_file: unused_element

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify/list/list_singer.dart';
import 'package:spotify/routes/route_name.dart';

class EditorsPicks extends StatefulWidget {
  const EditorsPicks({super.key});

  @override
  State<EditorsPicks> createState() => _EditorsPicksState();
}

class _EditorsPicksState extends State<EditorsPicks> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: singerList_homePage.length,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 10.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        selectedIndex = index;
                        
                          if (selectedIndex == 1) {
                            Get.toNamed(RouteName.rexOrange_county);
                          } else if (selectedIndex == 2) {
                            Get.toNamed(RouteName.bruno_mars);
                          } else if (selectedIndex == 3) {
                            Get.toNamed(RouteName.queen);
                          } else if (selectedIndex == 5) {
                            Get.toNamed(RouteName.mcr);
                          } else {
                            Get.toNamed(RouteName.coming_soon);
                          }
                        
                      },
                      child: Image.network(
                        "${singerList_homePage[index].img}",
                        height: 140,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  "${singerList_homePage[index].name}",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
