import 'package:flutter/material.dart';

import '../../../list/list_playlist.dart';

class GridViewPlaylist extends StatelessWidget {
  const GridViewPlaylist({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 150,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 50,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: playlist_copied.length,
        itemBuilder: (context, index) {
          return Container(
            height: 60,
            width: 185,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 49, 47, 50),
                borderRadius: BorderRadius.circular(5)),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(5),
                      bottomLeft: Radius.circular(5)),
                  child: Image.network(
                    "${playlist[index].img}",
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  "${playlist[index].name}",
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: "Arial",
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
