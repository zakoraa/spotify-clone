import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SpotifyWrapped extends StatelessWidget {
  const SpotifyWrapped({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 100.0,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0)),
                              child: Image.network(
                                "https://i.dailymail.co.uk/1s/2022/11/30/12/65087989-11480873-image-a-9_1669812031981.jpg",
                                fit: BoxFit.cover,
                                height: 100.0,
                                width: 100.0,
                              ),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "#SPOTIFYWRAPPED",
                                  style: TextStyle(
                                      color: Color(0xFF9C9C9C), fontSize: 12.0),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  "Your 2022 in review",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 20,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      SizedBox(
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.network(
                                  "https://metro.co.uk/wp-content/uploads/2022/12/spotfiy-warpped-2022-c835.jpg?quality=90&strip=all",
                                  fit: BoxFit.cover,
                                  height: 160.0,
                                  width: 160.0,
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                const Text(
                                  "Your Top Songs 2022",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.network(
                                  "https://storage.googleapis.com/pr-newsroom-wp/1/2021/11/your-artists-revealed-large-300x300.jpg",
                                  fit: BoxFit.cover,
                                  height: 160.0,
                                  width: 160.0,
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                const Text(
                                  "Your Artist Revealed",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            );
  }
}