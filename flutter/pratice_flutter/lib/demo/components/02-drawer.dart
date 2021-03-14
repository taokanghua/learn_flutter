import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // 文字头部
          // DrawerHeader(
          //   child: Text('header'.toUpperCase()),
          //   decoration: BoxDecoration(
          //     color: Colors.grey[200],
          //   ),
          // ),
          // 用户头部
          UserAccountsDrawerHeader(
            accountName: Text(
              'kanghuat',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            accountEmail: Text(
              'tkanghua@qq.com',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://pic.netbian.com/uploads/allimg/210219/181224-161372954458d6.jpg'),
            ),
            decoration: BoxDecoration(
              color: Colors.yellow[400],
              image: DecorationImage(
                image: NetworkImage(
                    'https://pic.netbian.com/uploads/allimg/210219/181224-161372954458d6.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black87,
                  BlendMode.softLight,
                ),
              ),
            ),
          ),
          ListTile(
            title: Text('Message', textAlign: TextAlign.right),
            trailing: Icon(Icons.message, size: 22, color: Colors.black12),
            onTap: () => Navigator.pop(context), //关闭抽屉
          ),
          ListTile(
            title: Text('Favorite', textAlign: TextAlign.right),
            trailing: Icon(Icons.favorite, size: 22, color: Colors.black12),
            onTap: () => Navigator.pop(context), //关闭抽屉
          ),
          ListTile(
            title: Text('Settings', textAlign: TextAlign.right),
            trailing: Icon(Icons.settings, size: 22, color: Colors.black12),
            onTap: () => Navigator.pop(context), //关闭抽屉
          ),
        ],
      ),
    );
  }
}
