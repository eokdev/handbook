// ignore_for_file: file_names, unused_import, prefer_const_constructors, unnecessary_import, prefer_const_literals_to_create_immutables, depend_on_referenced_packages, unrelated_type_equality_checks, unused_local_variable, must_be_immutable, prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables, sized_box_for_whitespace, unnecessary_string_interpolations, avoid_print, avoid_unnecessary_containers, deprecated_member_use, no_leading_underscores_for_local_identifiers
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:handbook/book.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:handbook/restApi.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'animation.dart';
import 'homepage.dart';

class SectionPage extends StatefulWidget {
  final List<SubCategoryElement>? subCategory;

  final String? restApi;
  SectionPage({
    Key? key,
    this.subCategory,
    this.restApi,
  }) : super(key: key);

  @override
  State<SectionPage> createState() => _SectionPageState();
}

class _SectionPageState extends State<SectionPage> {
  var icons = [
    Icons.format_indent_increase,
    Icons.format_list_bulleted,
    Icons.grid_on,
    Icons.format_align_justify,
    Icons.reorder,
    Icons.sort
  ];
  var color = [
    Colors.white,
    Color(0xffBFB9CB),
    Color(0xffdba976),
    Color(0xffbcf2d9)
  ];

  List<SubCategoryElement> subCart = [];
  late List<SubCategoryElement> subCartfilter = Set.of(subCart).toList();
  var random = Random();
  @override
  void initState() {
    super.initState();
//  subCart= widget.subCategory;
  }

  @override
  Widget build(BuildContext context) {
    ScrollController scrollController =
        ScrollController(initialScrollOffset: 0);
    int gt = random.nextInt(color.length);
    var subCategory = widget.subCategory;
    var restApi = widget.restApi;
    var randomItem = (color.toList()..shuffle()).first;
    for (int i = 0; i < subCategory!.length; i++) {
      subCart.add(subCategory[i]);
    }
    // subCart = subCategory;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xffF8F4FE),
        body: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: CircleAvatar(
                          backgroundColor: purple,
                          child: Icon(
                            FontAwesomeIcons.arrowLeftLong,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Flexible(
                        child: Text(
                          restApi!,
                          overflow: TextOverflow.visible,
                          style: GoogleFonts.inter(
                              color: purple,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                FadeAnimation(
                  1,
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: Container(
                      height: 140,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: purple.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Container(
                                      height: 120,
                                      width: 60,
                                      decoration: BoxDecoration(
                                          color: purple,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Image(
                                          image:
                                              AssetImage("images/hand.png"))),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "JABU STUDENT HANDBOOK",
                                          style: GoogleFonts.inter(
                                              color: purple,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                        Text(restApi,
                                            overflow: TextOverflow.ellipsis,
                                            style: GoogleFonts.inter(
                                              color: purple,
                                              fontSize: 15,
                                            )),
                                        ElevatedButton(
                                            style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all(
                                              purple.withOpacity(0.4),
                                            )),
                                            onPressed: () {},
                                            child: Text(
                                              "HANDBOOK",
                                              style: GoogleFonts.inter(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 10),
                                            ))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 70,
                              height: 100,
                              child:
                                  Image(image: AssetImage("images/undraw.png")),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                FadeAnimation(
                  1,
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: Container(
                      width: double.infinity,
                      height: 45,
                      decoration: BoxDecoration(
                          border: Border.all(color: purple),
                          borderRadius: BorderRadius.circular(25)),
                      child: TextFormField(
                        onChanged: (text) {
                          subCartfilter = subCategory.where((element) {
                            final textes = text.toLowerCase();
                            return element.name!.toLowerCase().contains(textes);
                          }).toList();
                          setState(() {});
                        },
                        autofocus: false,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(15, 8, 15, 8),
                          hintStyle: GoogleFonts.inter(
                              fontSize: 18,
                              color: Colors.grey,
                              letterSpacing: 2),
                          hintText: "Search...",
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(color: purple, width: 2),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: CupertinoScrollbar(
                    thumbVisibility: true,
                    controller: scrollController,
                    child: Theme(
                      data: Theme.of(context).copyWith(
                        scrollbarTheme: ScrollbarThemeData(
                          crossAxisMargin: 0,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: ListView.builder(
                            controller: scrollController,
                            padding: EdgeInsets.only(bottom: 30),
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: subCartfilter.length,
                            itemBuilder: (BuildContext context, index) {
                              var test = subCartfilter[index];
                              return Padding(
                                padding: EdgeInsets.only(bottom: 10),
                                child: InkWell(
                                  onTap: () {
                                    test.content.isEmpty
                                        ? null
                                        : Navigator.push(
                                            context,
                                            CupertinoPageRoute(
                                                builder: (context) => Book(
                                                      book: test.content,
                                                      reciever: test.name,
                                                    )));
                                  },
                                  child: SlidefromBottom(
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 80,
                                          child: Card(
                                            color:    test.content.isEmpty
                                        ? Colors.grey.shade300:Colors.white,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(18),
                                            ),
                                            elevation: 5,
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: ListTile(
                                                horizontalTitleGap: 10,
                                                contentPadding:
                                                    EdgeInsets.only(left: 15),
                                                dense: true,
                                                leading: Icon(Icons.shape_line,
                                                    color: purple, size: 25),
                                                title: Text(
                                                    test.name.toString(),
                                                    style: GoogleFonts.inter(
                                                        fontSize: 16,
                                                        color: purple)),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
