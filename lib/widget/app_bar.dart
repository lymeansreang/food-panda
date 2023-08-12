import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Myappbar extends StatelessWidget implements PreferredSizeWidget{
  const Myappbar({
    required GlobalKey<ScaffoldState> key,
  }) : _key = key;

  final GlobalKey<ScaffoldState> _key;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: const ListTile(
        title: Text('2 St 562 ',style: TextStyle(
          fontWeight: FontWeight.bold,
        ),),
        subtitle: Text("Phnom Penh"),
      ),
      // centerTitle: true,
      leading: IconButton(
          onPressed: (){
            // Scaffold.of(context).openDrawer();
            _key.currentState!.openDrawer();
          },
          icon: const Icon(Icons.line_weight),color: Colors.white,),
      leadingWidth: 20,
      actions: const[
        Icon(Icons.favorite,color: Colors.white,),
        SizedBox(width: 10),
        Icon(Icons.shopping_cart,color: Colors.white,),
        SizedBox(width: 10),
      ],

    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(50);
}
