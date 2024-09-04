import 'package:flutter/material.dart';

class CloneUI extends StatelessWidget {
  const CloneUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Positioned(
                child: Container(
                  height: 500,
                  child: Stack(
                    children: [
                      Positioned(
                        child: Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'https://i.pinimg.com/736x/1a/54/75/1a547562390ada2008469a56a6df4a08.jpg'))),
                          height: 450,
                          // ignore: prefer_const_constructors
                          child: Positioned(
                            child: const Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 50),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(16),
                                        child: Icon(
                                          Icons.arrow_back,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(16),
                                        child: Icon(
                                          Icons.favorite,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                bottom: 0,
                right: 24,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      'https://preview.redd.it/created-random-people-using-chatgpt-midjourney-do-you-know-v0-q1aa450i5dqb1.png?width=640&crop=smart&auto=webp&s=d87cecc44334f13e584bc273c5fd27d7318643c0'),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Madrid City Tour For Designers',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'city madrid espanol designers vl UK travel',
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 15,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                rowIconText('20', Icons.favorite_border_outlined),
                rowIconText('34', Icons.file_upload_outlined),
                rowIconText('82', Icons.message_rounded),
                rowIconText('295', Icons.face),
              ],
            ),
          ),
          const Divider(
            endIndent: 20,
            indent: 20,
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Wrap(
              children: [
                Text(
                    "In a quaint little village, nestled between rolling hills and ancient oak trees, a mysterious old bookshop stood quietly. The shop’s wooden sign, weathered by time, creaked softly in the breeze. Inside, rows upon rows of books stretched endlessly, their spines a mosaic of colors and stories. As the afternoon sun filtered through dusty windows, it cast a warm, golden glow over the shop’s cozy corners. Each book held a secret, and each shelf whispered tales of adventures and forgotten lore, inviting the curious and the adventurous to explore the magic within "),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget rowIconText(String text, IconData icon) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Icon(icon),
      ],
    );
  }
}
