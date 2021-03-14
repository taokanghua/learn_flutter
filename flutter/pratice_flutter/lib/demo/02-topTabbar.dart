import 'package:flutter/material.dart';

import './components/02-drawer.dart';
import './components/02-bottomTabbar.dart';

class TopTabbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // ------ 设置tabbar个数
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('tabbar_demo'),
          centerTitle: true,
          elevation: 0,
          // leading: , // 想用默认的抽屉开启 就要注册自定义的leading
          bottom: TabBar(
            unselectedLabelColor: Colors.black26, //未选中label样式
            indicatorColor: Colors.black45, //下划线颜色
            indicatorSize: TabBarIndicatorSize.label, //这里有两种模式
            indicatorWeight: 2, //下划线高度
            tabs: [
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.local_florist, size: 64, color: Colors.black87),
            Icon(Icons.change_history, size: 64, color: Colors.black87),
            Icon(Icons.directions_bike, size: 64, color: Colors.black87),
          ],
        ),
        drawer: MyDrawer(), // 右边抽屉为 endDrawer
        bottomNavigationBar: BottomTabbar(),
      ),
    );
  }
}
