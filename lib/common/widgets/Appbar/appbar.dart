import 'package:flutter/material.dart';
import 'package:listen_music/common/helper/is_darkmode.dart';

class Appbars extends StatelessWidget implements PreferredSizeWidget{
  final Widget ?title;
  const Appbars({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: title?? Text(""),
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              color:context.isDarkMode? Colors.white.withOpacity(0.03): Colors.black.withOpacity(0.04), shape: BoxShape.circle),
          child: Icon(
            Icons.arrow_back_ios,
            size: 15,
            color: context.isDarkMode?Colors.white:Colors.black,
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
