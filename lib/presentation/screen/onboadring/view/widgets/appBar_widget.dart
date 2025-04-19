import 'package:flutter/material.dart';
class appBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String appBarTitle;
  const appBarWidget({
    super.key, required this.appBarTitle,
  });
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: Icon(
        Icons.menu,
        color: Colors.black54,
      ),
      title: Text(
        appBarTitle,
        style: TextStyle(
            color: Colors.green.shade700, fontSize: 20, fontWeight: FontWeight.w700),
      ),
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Icon(
            Icons.search,
            color: Colors.black54,
          ),
        )
      ],
    );
  }
}