import 'package:flutter/material.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({
    Key? key,
    this.appBar,
    this.content,
    this.padding,
    this.alignment,
    this.backgroundColor,
    this.safeAreaBottomActivated = false,
    this.floatingActionButton,
    this.bottomNavigationBar,
    this.bottomSheet,
    this.disableSafeArea = true,
    this.resizeToAvoidBottomInset,
    this.isScrollable = false,
  }) : super(key: key);

  final PreferredSizeWidget? appBar;
  final Widget? content;
  final EdgeInsetsGeometry? padding;
  final AlignmentGeometry? alignment;
  final Color? backgroundColor;
  final bool safeAreaBottomActivated;
  final bool disableSafeArea;
  final Widget? floatingActionButton;
  final Widget? bottomNavigationBar;
  final Widget? bottomSheet;
  final bool? resizeToAvoidBottomInset;
  final bool isScrollable;

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  void _hideKeyboard() {
    FocusScope.of(context).unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _hideKeyboard,
      child: Scaffold(
        bottomNavigationBar: widget.bottomNavigationBar,
        bottomSheet: widget.bottomSheet,
        backgroundColor: widget.backgroundColor ?? Colors.white,
        resizeToAvoidBottomInset: widget.resizeToAvoidBottomInset,
        appBar: widget.appBar,
        floatingActionButton: widget.floatingActionButton,
        body: SafeArea(
          bottom: widget.safeAreaBottomActivated,
          top: !widget.disableSafeArea,
          left: !widget.disableSafeArea,
          right: !widget.disableSafeArea,
          child: widget.isScrollable
              ? SingleChildScrollView(
            child: Container(
              alignment: widget.alignment,
              padding: widget.padding,
              child: widget.content ?? Container(),
            ),
          )
              : Container(
            alignment: widget.alignment,
            padding: widget.padding,
            child: widget.content ?? Container(),
          ),
        ),
      ),
    );
  }
}