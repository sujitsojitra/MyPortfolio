import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myportfolio/ui/responsive_widget.dart';
import 'package:url_launcher/url_launcher.dart';

import 'about.dart';
import 'contact_us.dart';
import 'footer.dart';
import 'header.dart';
import 'icon.dart';
import 'my_projects.dart';
import 'statistics.dart';
import 'working_process.dart';
import '../config/colors.dart';
import '../config/constants.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _headerGlobalKey = GlobalKey();
  final _aboutGlobaleKey = GlobalKey();
  final _statisticsGlobaleKey = GlobalKey();
  final _workingProcessGlobaleKye = GlobalKey();
  final _recentProjectsGlobaleKey = GlobalKey();
  final _contactUsGlobaleKey = GlobalKey();

  final _scrollController = ScrollController();

  final _fabStream = StreamController<bool>();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      _fabStream.sink.add(_scrollController.offset > 500);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktopScreen: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: CustomScrollView(
            controller: _scrollController,
            slivers: [
              SliverAppBar(
                key: _headerGlobalKey,
                titleSpacing: 0,
                toolbarHeight: 100,
                backgroundColor: Colors.transparent,
                flexibleSpace: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/cover.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black,
                          Colors.black87,
                          Colors.transparent
                        ],
                      ),
                    ),
                  ),
                ),
                title: Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * .15,
                  ),

                ),
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(500),
                  child: Header(),
                ),
                actions: [
                  Row(
                    children: [
                      MaterialButton(
                        onPressed: ()=>_scrollToAbout(false),
                        highlightColor: Colors.white60,
                        child: Text(
                          'About Me',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                      MaterialButton(
                        onPressed: ()=>_scrollToStatistics(false),
                        child: Text(
                          'Experience',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                      MaterialButton(
                        onPressed:()=> _scrollToWorkingProcess(false),
                        child: Text(
                          'Process',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                      MaterialButton(
                        onPressed:()=> _scrollToRecentProjects(false),
                        child: Text(
                          'Portfolio',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(width: 20),
                      RaisedButton(
                        onPressed:()=> _scrollToContactUs(false),
                        color: AppColors.blue,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 15,
                        ),
                        child: Text(
                          'Contact Me',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * .15),
                ],
              ),
              ..._slivers(),
            ],
          ),
        ),
        floatingActionButton: _buildFab(),
      ),
      mobileScreen: Scaffold(
        drawer: Drawer(
          child:SafeArea(child:  SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    color: AppColors.blue,
                    borderRadius: BorderRadius.circular(1000),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(1000),
                    child: Image.asset(
                      'assets/images/jasmin.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Divider(color: AppColors.blue,),
                      ListTile(
                        onTap: ()=>_scrollToAbout(true),
                        title: Text(
                          'About Me',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      ListTile(
                        onTap:()=> _scrollToStatistics(true),
                        title: Text(
                          'Experience',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      ListTile(
                        onTap:()=> _scrollToWorkingProcess(true),
                        title: Text(
                          'Process',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      ListTile(
                        onTap:()=> _scrollToRecentProjects(true),
                        title: Text(
                          'Portfolio',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Divider(color: AppColors.blue,),
                      const SizedBox(height: 20),
                      ListTile(
                        title: RaisedButton(
                          onPressed:()=> _scrollToContactUs(true),
                          color: AppColors.blue.withOpacity(0.6),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 40,
                            vertical: 15,
                          ),
                          child: Text(
                            'Contact Me',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () async {
                              launch(AppConstants.github);
                            },
                            child: AppIcon(
                              'assets/icons/github.png',
                              color: AppColors.black,
                            ),
                          ),
                          const SizedBox(width: 20),
                          InkWell(
                            onTap: () {
                              launch(AppConstants.linkedin);
                            },
                            child: AppIcon(
                              'assets/icons/linkedin.png',
                              color: AppColors.black,
                            ),
                          ),
                          // const SizedBox(width: 20),
                          // InkWell(
                          //   onTap: () {
                          //     launch(AppConstants.twitter);
                          //   },
                          //   child: AppIcon(
                          //     'assets/icons/twitter.png',
                          //     color: AppColors.black,
                          //   ),
                          // ),
                          // const SizedBox(width: 20),
                          // InkWell(
                          //   onTap: () {
                          //     launch(AppConstants.facebook);
                          //   },
                          //   child: AppIcon(
                          //     'assets/icons/facebook.png',
                          //     color: AppColors.black,
                          //   ),
                          // ),
                        ],
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                )
              ],
            ),
          ),),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: CustomScrollView(
            controller: _scrollController,
            slivers: [
              SliverAppBar(
                key: _headerGlobalKey,
                titleSpacing: 0,
                centerTitle: true,
                backgroundColor: Colors.transparent,
                leading: Align(
                  child: Builder(
                    builder: (ctx) => InkWell(
                      onTap: () {
                        Scaffold.of(ctx).openDrawer();
                      },
                      child: ClipRRect(
                        child: Container(
                          width: 30,
                          height: 30,
                          child: Image.asset('assets/images/menu.png',color: Colors.white,),
                        ),
                      ),
                    ),
                  ),
                ),
                flexibleSpace: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/cover.jpg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black,
                          Colors.black87,
                          Colors.transparent
                        ],
                      ),
                    ),
                  ),
                ),
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(350),
                  child: Header(),
                ),
              ),
              ..._slivers(),
            ],
          ),
        ),
        floatingActionButton: _buildFab(),
      ),
    );
  }

  List<Widget> _slivers() => [
        SliverToBoxAdapter(
          key: _aboutGlobaleKey,
          child: About(),
        ),
        SliverToBoxAdapter(
          key: _statisticsGlobaleKey,
          child: Statistics(),
        ),
        SliverToBoxAdapter(
          key: _workingProcessGlobaleKye,
          child: WorkingProcess(),
        ),
        SliverToBoxAdapter(
          key: _recentProjectsGlobaleKey,
          child: MyProjects(),
        ),
        SliverToBoxAdapter(
          key: _contactUsGlobaleKey,
          child: ContactUs(),
        ),
        SliverToBoxAdapter(
          child: Footer(),
        ),
      ];

  Widget _buildFab() {
    return StreamBuilder<bool>(
      stream: _fabStream.stream,
      builder: (_, data) {
        final bool showFab = data.hasData && data.data;
        return AnimatedOpacity(
          opacity: showFab ? 1 : 0,
          duration: const Duration(milliseconds: 500),
          child: FloatingActionButton(
            onPressed: showFab
                ? _scrollToHeader
                : null, // make sure user cannot click when button hidden
            mini: true,
            child: AppIcon('assets/icons/double-up-arrow.png', size: 20),
          ),
        );
      },
    );
  }

  void _scrollToHeader() {
    Scrollable.ensureVisible(
      _headerGlobalKey.currentContext,
      duration: const Duration(seconds: 1),
    );
  }

  void _scrollToAbout(bool FromNavigation) {
    if(FromNavigation){
      FocusScope.of(context).requestFocus(new FocusNode());
      Navigator.of(context).pop();
    }
    Scrollable.ensureVisible(
      _aboutGlobaleKey.currentContext,
      duration: const Duration(seconds: 1),
    );
  }

  void _scrollToStatistics(bool FromNavigation) {
    FocusScope.of(context).requestFocus(new FocusNode());
    if(FromNavigation){
      FocusScope.of(context).requestFocus(new FocusNode());
      Navigator.of(context).pop();
    }
    Scrollable.ensureVisible(
      _statisticsGlobaleKey.currentContext,
      duration: const Duration(seconds: 1),
    );
  }

  void _scrollToWorkingProcess(bool FromNavigation) {
    FocusScope.of(context).requestFocus(new FocusNode());
    if(FromNavigation){
      FocusScope.of(context).requestFocus(new FocusNode());
      Navigator.of(context).pop();
    }
    Scrollable.ensureVisible(
      _workingProcessGlobaleKye.currentContext,
      duration: const Duration(seconds: 1),
    );
  }

  void _scrollToRecentProjects(bool FromNavigation) {
    if(FromNavigation){
      FocusScope.of(context).requestFocus(new FocusNode());
      Navigator.of(context).pop();
    }
    Scrollable.ensureVisible(
      _recentProjectsGlobaleKey.currentContext,
      duration: const Duration(seconds: 1),
    );
  }

  void _scrollToContactUs(bool FromNavigation) {

    if(FromNavigation){
      FocusScope.of(context).requestFocus(new FocusNode());
      Navigator.of(context).pop();
    }
    Scrollable.ensureVisible(
      _contactUsGlobaleKey.currentContext,
      duration: const Duration(seconds: 1),
    );
  }

  @override
  void dispose() {
    _fabStream.close();
    super.dispose();
  }
}
