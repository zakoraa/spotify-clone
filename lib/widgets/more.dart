// ignore_for_file: prefer_typing_uninitialized_variables, non_constant_identifier_names, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../list/list_singer.dart';
import '../module/albumPage/widget/more_widget.dart';

class MoreIconButton extends StatelessWidget {
  const MoreIconButton(
      {super.key, this.album_img, this.title_album, this.artist, });

  final album_img;
  final title_album;
  final artist;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.more_vert),
      color: Colors.grey,
      onPressed: () {
        Get.bottomSheet(
          isScrollControlled: true,
          Container(
            height: Get.mediaQuery.size.height,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Color.fromARGB(125, 17, 16, 17),
                  Color.fromARGB(255, 17, 16, 17),
                  Color.fromARGB(255, 17, 16, 17),
                  Color.fromARGB(255, 17, 16, 17),
                  Color.fromARGB(255, 17, 16, 17),
                  Color.fromARGB(255, 17, 16, 17),
                  Color.fromARGB(255, 17, 16, 17),
                ])),
            child: Padding(
              padding: const EdgeInsets.only(top: 60),
              child: ListView(children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.25,
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: Image.network(
                            "${singerList_homePage[album_img!].img}",
                            fit: BoxFit.contain,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          "${title_album}",
                          style: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "${artist}",
                          style: const TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        ListGenerateWidget(title_album: title_album,),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          ),
        );
      },
    );
  }
}
