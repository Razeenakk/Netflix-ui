import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DowloadPage extends StatelessWidget {
  const DowloadPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.black,
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Downloads',
                    style: GoogleFonts.rubik(color: Colors.white, fontSize: 26),
                  ),
                  Row(children: [
                    Icon(
                      Icons.cast,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      height: 25,
                      width: 25,
                      color: Colors.blue,
                    ),
                  ])
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.settings, color: Colors.white, size: 20,),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Smart Downloads',
                      style:
                          GoogleFonts.rubik(color: Colors.white, fontSize: 11),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      // color: Colors.red,
                      child: Text(
                        'Introducing Downloads for you',
                        style: GoogleFonts.rubik(
                          color: Colors.white,
                          fontSize: 22,fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ),
                  Container(
                     // color: Colors.red,
                      width: 300,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                              "We will downloads a personalised selection of\n movies and shows for you, so there's\n always something to watch on your\n device",
                              style: GoogleFonts.rubik(color: Colors.grey.withOpacity(.7)),
                          textAlign: TextAlign.center,),
                        ],
                      )),
                ],
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20,left: 30),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey.withOpacity(.6),
                      radius: 150,
                    ),
                  ),

                  Positioned(
                    top: 80,
                    bottom: 30,
                    left: 150,
                    child: Transform.rotate(
                      angle:120,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage('https://m.media-amazon.com/images/I/51gPKlYLbjL.jpg')
                          )
                        ),

                        height: 200,
                        width: 170,),
                    ),
                  ),
                  Positioned(
                    left: 40,
                    top:80,
                    bottom: 30,
                    child: Transform.rotate(
                      angle: -120,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage('https://www.filmibeat.com/img/popcorn/movie_posters/padayottam-20180814125756-16746.jpg')
                          )
                        ),
                        height: 200,
                        width: 170,),
                    ),
                  ),
                  Positioned(
                    left: 120,
                      bottom: 20,
                      child: Transform.rotate(
                        angle: 0,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.red,
                            image: DecorationImage(
                             image: NetworkImage('https://www.filmibeat.com/img/318x466/popcorn/home_page_promotions/15833269382799second-look-poster-of-malik.jpg',

                              ),
                              fit: BoxFit.fill
                             )

                          ),

                          height: 240,
                          width: 140,
                        ),
                      )),
                ]),
              Padding(
                padding: const EdgeInsets.only(top: 30.0,left: 10,right: 10,bottom: 10),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.indigo,
                    borderRadius: BorderRadius.circular(5)
                  ),

                    height: 30,
                    width: 30,
                    child: Center(
                        child: Text('Setup',style: GoogleFonts.rubik(color: Colors.white),))),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50,right: 50),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                    borderRadius: BorderRadius.circular(5)
                  ),

                    height: 30,
                    child: Center(
                        child: Text('See what you can Download',style: GoogleFonts.rubik(fontWeight: FontWeight.w700,fontSize: 16),))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
