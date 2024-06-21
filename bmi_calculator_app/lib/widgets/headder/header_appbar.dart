import 'package:flutter/material.dart';

class HeaderAppbar extends StatelessWidget implements PreferredSizeWidget{

  const HeaderAppbar({ super.key });

   @override
   Widget build(BuildContext context) {
       return AppBar(
        toolbarHeight: preferredSize.height,
        title: const Text('BMİ CALCULATOR'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        titleTextStyle: const TextStyle(fontSize: 24, color: Colors.white),
      );
  }
  
  @override
 
  Size get preferredSize =>const Size.fromHeight(kToolbarHeight );
}