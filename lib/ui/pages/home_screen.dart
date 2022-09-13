import 'package:course/ui/global/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double widthDevice = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: lightModeBgColor,
        body: SafeArea(
            child: ListView(
          padding: EdgeInsets.all(24),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/Profile.png',
                  width: 40,
                  height: 40,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.search,
                      size: 26,
                      color: Color(0xff082431),
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    Icon(
                      Icons.notifications_outlined,
                      size: 26,
                      color: Color(0xff082431),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Want to Study Class what's Today?",
              style: headerTextStyle.copyWith(
                  fontWeight: FontWeight.w600, fontSize: 20),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              width: 300,
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 120,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/icon_softskill.png',
                          width: 62,
                          height: 62,
                        ),
                        SizedBox(
                          height: 17,
                        ),
                        Text("Design",
                            style: headerTextStyle.copyWith(
                                fontSize: 15, fontWeight: FontWeight.w600)),
                        Text("49 course",
                            style: subtitleTextStyle.copyWith(fontSize: 13)),
                      ],
                    ),
                  ),
                  Container(
                    width: 120,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/icon_softskill.png',
                          width: 62,
                          height: 62,
                        ),
                        SizedBox(
                          height: 17,
                        ),
                        Text("Soft Skill",
                            style: headerTextStyle.copyWith(
                                fontSize: 15, fontWeight: FontWeight.w600)),
                        Text("12 Course",
                            style: subtitleTextStyle.copyWith(fontSize: 13)),
                      ],
                    ),
                  ),
                  Container(
                    width: 120,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/icon_art.png',
                          width: 62,
                          height: 62,
                        ),
                        SizedBox(
                          height: 17,
                        ),
                        Text("Art",
                            style: headerTextStyle.copyWith(
                                fontSize: 15, fontWeight: FontWeight.w600)),
                        Text("21 course",
                            style: subtitleTextStyle.copyWith(fontSize: 13)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular Course",
                      style: headerTextStyle.copyWith(
                          fontWeight: FontWeight.w600, fontSize: 17),
                    ),
                    Text(
                      "Show all",
                      style: primaryTextStyle.copyWith(
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),

                SizedBox(height: 24,),
                Container(
                  width: 300,
                  height: 238,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: widthDevice / 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius:
                                  BorderRadius.only(topLeft: Radius.circular(20) ,topRight: Radius.circular(20)),// Image border
                              child: SizedBox.fromSize(
                                child: Image.asset(
                                  'assets/course_image_1.png',
                                  width: 180,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: 12,),
                            Text("Free",style: freeTextStyle.copyWith(fontWeight: FontWeight.w600)),
                            Text("UI Design : Wireframe to Visual Design", overflow: TextOverflow.ellipsis , maxLines: 2,style: headerTextStyle.copyWith(fontWeight: FontWeight.w600),),
                       Row(
                         children: [
                           RatingBarIndicator(
                                  rating: 5,
                                  itemBuilder: (context, index) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  itemCount: 5,
                                  itemSize: 20.0,
                                  direction: Axis.horizontal,
                                ),
                                Text('(124)',style: subtitleTextStyle)
                         ],
                       ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        )));
  }
}
