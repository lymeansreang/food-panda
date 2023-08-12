import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
        width: MediaQuery.of(context).size.width * .85,//dynamic size
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzR4XesmdXEneGAIRQAn9hvoQPg_AgvvJJ1SVMUzl6Qw&s'),
                  //fit: BoxFit.fill,
                ),

                currentAccountPictureSize: const Size.square(45),
                accountName: null,
                accountEmail: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Username'),
                        Text('Personal Account'),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: ElevatedButton(onPressed: (){},  child: const Text('Switch')),
                    ),
                  ],
                )),
            const ListTile(title: Text('Option 1'),leading: Icon(Icons.abc),),
            const ListTile(title: Text('Option 2'),leading: Icon(Icons.abc),),
            const ListTile(title: Text('Option 3'),leading: Icon(Icons.abc),),
            const ListTile(title: Text('Option 4'),leading: Icon(Icons.abc),),
            const ListTile(title: Text('Option 5'),leading: Icon(Icons.abc),),
            const ListTile(title: Text('Option 6'),leading: Icon(Icons.abc),),
          ],
        )
    );
  }
}