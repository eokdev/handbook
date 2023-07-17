import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/services.dart';
import 'package:handbook/animation.dart';
import 'package:handbook/restApi.dart';
import 'package:handbook/sectionPage.dart';

import 'anotherListClass.dart';

Color purple = Color(0xff2F2754);

class HomePage extends ConsumerStatefulWidget {
  HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final _searchController = TextEditingController();
  Key keyy = UniqueKey();
  void restartApp() {
    setState(() {
      keyy = UniqueKey();
    });
  }

  List<RestApi> taskk = [];
  List<RestApi> suggestion = [];
  late List<RestApi> done = Set.of(suggestion).toList();
  @override
  void initState() {
    suggestion;
    //   suggestion = taskk;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final tasks = ref.watch(userDataProvider);
    ScrollController scrollController =
        ScrollController(initialScrollOffset: 0);
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: AnimationConfiguration.synchronized(
        duration: const Duration(milliseconds: 500),
        child: Scaffold(
          key: keyy,
          resizeToAvoidBottomInset: false,
          backgroundColor: Color(0xffF8F4FE),
          body: SafeArea(
            child: ListView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      border: Border(
                    bottom: BorderSide(color: purple, width: 7),
                  )),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: SlidefromLeft(
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: purple,
                                child: Icon(
                                  Icons.shape_line_sharp,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Flexible(
                                child: Text(
                                  "TABLE OF CONTENT",
                                  style: GoogleFonts.inter(
                                      color: purple,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      FadeAnimation(
                        0.2,
                        SlidefromBottom(
                          child: Padding(
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
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
                                              image: AssetImage(
                                                "images/hand.png",
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Expanded(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "JABU STUDENT HANDBOOK",
                                                  style: GoogleFonts.inter(
                                                      color: purple,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 15),
                                                ),
                                                Text("TABLE OF CONTENT",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: GoogleFonts.inter(
                                                        color: purple,
                                                        fontSize: 15)),
                                                ElevatedButton(
                                                    style: ButtonStyle(
                                                        backgroundColor:
                                                            MaterialStateProperty
                                                                .all(
                                                      purple.withOpacity(0.4),
                                                    )),
                                                    onPressed: () {},
                                                    child: Text(
                                                      "HANDBOOK",
                                                      style: GoogleFonts.inter(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold,
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
                                      child: Image(
                                          image:
                                              AssetImage("images/undraw.png")),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      tasks.when(
                        data: (data) {
                          List<RestApi> task = data.map((e) => e).toList();

                          for (int i = 0; i < task.length; i++) {
                            suggestion.add(task[i]);
                          }
                          return Flexible(
                            child: Column(
                              children: [
                                SlidefromRight(
                                  child: Padding(
                                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                                    child: Container(
                                        width: double.infinity,
                                        height: 45,
                                        decoration: BoxDecoration(
                                            border: Border.all(color: purple),
                                            borderRadius:
                                                BorderRadius.circular(25)),
                                        child: TextFormField(
                                          autofocus: false,
                                          controller: _searchController,
                                          cursorColor: purple,
                                          onChanged: (text) {
                                            done = task.where((element) {
                                              final textes = text.toLowerCase();

                                              return element.chapter!
                                                  .toLowerCase()
                                                  .contains(textes);
                                            }).toList();
                                            setState(() {});
                                          },
                                          decoration: InputDecoration(
                                            contentPadding: EdgeInsets.fromLTRB(
                                                15, 8, 15, 8),
                                            hintStyle: GoogleFonts.inter(
                                                fontSize: 18,
                                                color: Colors.grey,
                                                letterSpacing: 2),
                                            hintText: "Search...",
                                            border: InputBorder.none,
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                              borderSide: BorderSide(
                                                  color: purple, width: 2),
                                            ),
                                          ),
                                        )),
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
                                        padding:
                                            EdgeInsets.fromLTRB(10, 10, 10, 0),
                                        child: ListView.builder(
                                            controller: scrollController,
                                            padding: EdgeInsets.only(bottom: 30),
                                            physics: BouncingScrollPhysics(),
                                            shrinkWrap: true,
                                            itemCount: done.length,
                                            itemBuilder:
                                                (BuildContext context, index) {
                                              var test = done[index];
                                              //  print(taskk.length);
                                              return Padding(
                                                padding:
                                                    EdgeInsets.only(bottom: 10),
                                                child: InkWell(
                                                  onTap: () {
                                                    Navigator.push(
                                                        context,
                                                        CupertinoPageRoute(
                                                            builder: (context) =>
                                                                SectionPage(
                                                                  subCategory: test
                                                                      .subCategory,
                                                                  //subCart: test.subCategory,
                                                                  restApi: test
                                                                      .chapter,
                                                                )));
                                                  },
                                                  child: SlidefromBottom(
                                                    child: Column(
                                                      children: [
                                                        Container(
                                                          height: 80,
                                                          child: Card(
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          18),
                                                            ),
                                                            elevation: 5,
                                                            child: Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: ListTile(
                                                                horizontalTitleGap:
                                                                    10,
                                                                contentPadding:
                                                                    EdgeInsets.only(
                                                                        left: 15),
                                                                dense: true,
                                                                leading: Icon(
                                                                    Icons
                                                                        .shape_line,
                                                                    color: purple,
                                                                    size: 25),
                                                                title: Text(
                                                                  test.chapter.toString(),
                                                                    style: GoogleFonts.inter(
                                                                        fontSize:
                                                                            16,
                                                                        color:
                                                                            purple)),
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
                          );
                        },
                        error: (err, s) => tasks.isRefreshing
                            ? Expanded(
                              child: Center(
                                  child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SpinKitFadingFour(color: purple),
                                  ],
                                )),
                            )
                            : Expanded(
                                child: Center(
                                    child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Connect to the Internet "),
                                    ElevatedButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    purple)),
                                        onPressed: () async {
                                          ref.refresh(userDataProvider);
                                        },
                                        child: Text("Refresh",
                                            style: GoogleFonts.inter(
                                                fontSize: 16,
                                                color: Colors.white))),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                        "After refresh, and error persists... Pls, restart Application."),
                                  ],
                                )),
                              ),
                        loading: () => Expanded(
                          child: Center(
                            child: 
                                SpinKitFadingFour(color: purple),
                          ),
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
    );
  }
}

class SlidefromLeft extends ConsumerStatefulWidget {
  final Widget child;
  const SlidefromLeft({super.key, required this.child});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SlidefromLeftState();
}

class _SlidefromLeftState extends ConsumerState<SlidefromLeft>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );

    _animation = Tween<Offset>(
      begin: Offset(1.0, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOut,
    ));

    // Start the animation
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: widget.child,
    );
  }
}

class SlidefromRight extends ConsumerStatefulWidget {
  final Widget child;
  const SlidefromRight({super.key, required this.child});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SlidefromRightState();
}

class _SlidefromRightState extends ConsumerState<SlidefromRight>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );

    _animation = Tween<Offset>(
      begin: Offset(-1.0, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOut,
    ));

    // Start the animation
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: widget.child,
    );
  }
}

class SlidefromBottom extends ConsumerStatefulWidget {
  final Widget child;
  const SlidefromBottom({super.key, required this.child});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SlidefromBottomState();
}

class _SlidefromBottomState extends ConsumerState<SlidefromBottom>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );

    _animation = Tween<Offset>(
      begin: Offset(0.0, 1.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOut,
    ));

    // Start the animation
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: widget.child,
    );
  }
}

class SlidefromTop extends ConsumerStatefulWidget {
  final Widget child;
  const SlidefromTop({super.key, required this.child});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SlidefromTopState();
}

class _SlidefromTopState extends ConsumerState<SlidefromTop>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );

    _animation = Tween<Offset>(
      begin: Offset(0.0, -1.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOut,
    ));

    // Start the animation
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: widget.child,
    );
  }
}
