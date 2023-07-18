// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, unused_import, unnecessary_import, sized_box_for_whitespace, avoid_unnecessary_containers, unused_local_variable, unnecessary_null_comparison, prefer_typing_uninitialized_variables, avoid_print, prefer_is_empty, unnecessary_string_interpolations

import 'dart:math';
import 'package:fluttericon/entypo_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:handbook/restApi.dart';
import "animation.dart";

import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';
import "apiController.dart";
import 'homepage.dart';

class Book extends StatefulWidget {
  final List<Content>? book;
  final String? reciever;
  const Book({Key? key, required this.book, required this.reciever})
      : super(key: key);

  @override
  State<Book> createState() => _BookState();
}

class _BookState extends State<Book> {
  PageController controller = PageController();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var book = widget.book;

    var reciever = widget.reciever;
    return Scaffold(
      backgroundColor: Color(0xffF8F4FE),
      body: Padding(
        padding: EdgeInsets.fromLTRB(8, 10, 8, 0),
        child: SafeArea(
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: CircleAvatar(
                      backgroundColor: purple,
                      child: Icon(Entypo.cancel, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Flexible(
                    child: Text(
                      reciever!,
                      overflow: TextOverflow.visible,
                      style: GoogleFonts.inter(
                          color: purple,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                reciever,
                overflow: TextOverflow.visible,
                style: GoogleFonts.inter(
                    color: purple, fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  height: MediaQuery.of(context).size.height,
                  child: PageView(
                    controller: controller,
                    children: [
                      Container(
                        child: ListView.builder(
                            physics: BouncingScrollPhysics(
                                parent: AlwaysScrollableScrollPhysics()),
                            itemCount: book!.length,
                            itemBuilder: (context, index) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      book[index].title == null
                                          ? ""
                                          : book[index].title.toString(),
                                      style: GoogleFonts.inter(
                                          color: purple,
                                          fontSize: 18,
                                          fontWeight: book[index].isBold == true
                                              ? FontWeight.bold
                                              : FontWeight.normal)),
                                  // SizedBox(
                                  //   height: 10,
                                  // ),
                                  Text(
                                      book[index].body != null
                                          ? book[index].body.toString()
                                          : "",
                                      style: GoogleFonts.inter(
                                          color: purple,
                                          fontSize: 15,
                                          fontWeight: book[index].isBold == true
                                              ? FontWeight.bold
                                              : FontWeight.normal)),
                                  // SizedBox(
                                  //   height: 10,
                                  // ),
                                  Contents(
                                    contents: book[index].listContents,
                                    subContent: book[index].listSubContent,
                                    tableHeader: book[index].listTableHeader,
                                  )
                                ],
                              );
                            }),
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class Contents extends StatelessWidget {
  final List<ListContent>? contents;
  final List<ListContent>? subContent;
  final List<ListContent>? tableHeader;

  const Contents({
    Key? key,
    required this.contents,
    required this.subContent,
    required this.tableHeader,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Scrollbar(
          child: ListView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: contents!.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    SizedBox(
                      height: 7,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            contents![index].number == null
                                ? ""
                                : contents![index].number.toString(),
                            overflow: TextOverflow.visible,
                            style: GoogleFonts.inter(
                                color: purple,
                                fontSize: 15,
                                fontWeight: contents![index].isBold == true
                                    ? FontWeight.bold
                                    : FontWeight.normal)),
                        SizedBox(
                          width: 5,
                        ),
                        Flexible(
                          child: Text(contents![index].name.toString(),
                              overflow: TextOverflow.visible,
                              style: GoogleFonts.inter(
                                  color: purple,
                                  fontSize: 15,
                                  fontWeight: contents![index].isBold == true
                                      ? FontWeight.bold
                                      : FontWeight.normal)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 7,
                    ),
                  ],
                );
              }),
        ),
        AnotherContent(
          subContent: subContent,
        ),
        SizedBox(
          height: 7,
        ),
        SizedBox(
          height: 7,
        ),
        TableHeader(
          tableHeader: tableHeader,
        ),
      ],
    );
  }
}

class AnotherContent extends StatelessWidget {
  final List<ListContent>? subContent;
  const AnotherContent({Key? key, required this.subContent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return subContent!.isEmpty == null
        ? Container()
        : Column(
            children: [
              ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: subContent!.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Text(
                            subContent![index].name == null
                                ? ""
                                : subContent![index].name.toString(),
                            overflow: TextOverflow.visible,
                            style: GoogleFonts.inter(
                                color: purple,
                                fontSize: 18,
                                fontWeight: subContent![index].isBold == true
                                    ? FontWeight.bold
                                    : FontWeight.normal)),
                        SizedBox(
                          height: 7,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 7,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    subContent![index].number == null
                                        ? ""
                                        : subContent![index].number.toString(),
                                    overflow: TextOverflow.visible,
                                    style: GoogleFonts.inter(
                                        color: purple,
                                        fontSize: 15,
                                        fontWeight:
                                            subContent![index].isBold == true
                                                ? FontWeight.bold
                                                : FontWeight.normal)),
                                SizedBox(
                                  width: 5,
                                ),
                                Flexible(
                                  child: Text(
                                      subContent![index].body.toString(),
                                      overflow: TextOverflow.visible,
                                      style: GoogleFonts.inter(
                                          color: purple,
                                          fontSize: 15,
                                          fontWeight:
                                              subContent![index].isBold == true
                                                  ? FontWeight.bold
                                                  : FontWeight.normal)),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 7,
                            ),
                          ],
                        ),
                      ],
                    );
                  })
            ],
          );
  }
}

class TableHeader extends StatelessWidget {
  final List<ListContent>? tableHeader;

  const TableHeader({Key? key, required this.tableHeader}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return tableHeader!.isEmpty
        ? Container()
        : SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              constraints: BoxConstraints(
                minHeight: 800, 
                maxHeight: tableHeader![1].name!.contains("OFFENCES")? 1600:1100
              ),
              width: tableHeader!.length > 3
                  ? 1000
                  : tableHeader!.length == 2
                      ? MediaQuery.of(context).size.width
                      : MediaQuery.of(context).size.width,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: PageScrollPhysics(),
                  itemCount: tableHeader!.length,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 80,
                          width: tableHeader!.length == 2
                              ? MediaQuery.of(context).size.width / 2
                              : 130,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.symmetric(
                                  horizontal: BorderSide(
                                      width: 1, color: Colors.black))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("${tableHeader![index].name.toString()}  ",
                                  overflow: TextOverflow.visible,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.inter(
                                      color: purple,
                                      fontSize: 18,
                                      fontWeight:
                                          tableHeader![index].isBold == true
                                              ? FontWeight.bold
                                              : FontWeight.normal)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TableBody(
                          tableBody: tableHeader![index].tableBody,
                          tableHeader: tableHeader,
                        )
                      ],
                    );
                  }),
            ),
          );
  }
}

class TableBody extends StatelessWidget {
  final List<ListContent>? tableBody;
  final List<ListContent>? tableHeader;
  const TableBody(
      {Key? key, required this.tableBody, required this.tableHeader})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return tableBody!.isEmpty
        ? Container()
        : Container(
           constraints: BoxConstraints(
            minHeight: 800, 
            maxHeight: tableBody!.length>13? 1590:1000
           ),
            width: tableHeader!.length == 2
                ? MediaQuery.of(context).size.width / 2
                : 130,
            child: ListView.separated(
                separatorBuilder: ((context, index) => Divider(
                      color: Colors.black,
                    )),
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: tableBody!.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        height: 70,
                        width: tableHeader!.length == 2
                            ? MediaQuery.of(context).size.width / 2
                            : 140,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                              tableBody![index].name == null
                                  ? ""
                                  : tableBody![index].name.toString(),
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                  color: purple,
                                  fontSize: 15,
                                  fontWeight: tableBody![index].isBold == true
                                      ? FontWeight.bold
                                      : FontWeight.normal)),
                        ),
                      ),
                    ],
                  );
                }),
          );
  }
}
