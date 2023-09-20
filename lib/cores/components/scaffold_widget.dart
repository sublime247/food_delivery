import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_delivery/cores/constants/constants.dart';
import 'package:food_delivery/cores/utils/utils.dart';


class ScaffoldWidget extends StatelessWidget {
  const ScaffoldWidget({
    super.key,
    this.drawer,
    this.bottomNavigationBar,
    this.floatingActionButton,
    required this.body,
    this.appBar,
    this.usePadding = true,
    required this.useSingleScroll,
    this.bg,
    this.scaffoldKey,
    this.controller,
    this.scrollPhysics,
  });

  final Widget? drawer;
  final Widget? bottomNavigationBar;
  final Widget? floatingActionButton;
  final Widget body;
  final AppBar? appBar;
  final bool usePadding;
  final bool useSingleScroll;
  final Color? bg;
  final GlobalKey<ScaffoldState>? scaffoldKey;
  final ScrollController? controller;
  final ScrollPhysics? scrollPhysics;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(
        systemNavigationBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
        statusBarIconBrightness: Brightness.light,
        statusBarColor: Colors.black,
      ),
    );

    return Scaffold(
      drawerEnableOpenDragGesture: true,
      key: scaffoldKey,
      appBar: appBar,
      backgroundColor: bg ?? kcBackground,
      body: SafeArea(
        child: SizedBox(
          height: sh(98),
          child: useSingleScroll
              ? SingleChildScrollView(
                  controller: controller,
                  physics: scrollPhysics,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: usePadding ? sp(kGlobalPadding) : 0,
                      vertical: usePadding ? sp(kXtremeLarge) : 0,
                    ),
                    child: body,
                  ),
                )
              : Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: usePadding ? sp(kGlobalPadding) : 0,
                  ),
                  child: body,
                ),
        ),
      ),
      drawer: drawer,
      bottomNavigationBar: bottomNavigationBar,
      floatingActionButton: floatingActionButton,
    );
  }
}
