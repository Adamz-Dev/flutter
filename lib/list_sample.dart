import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:test/models/list_item.dart';

class ListSample extends StatefulWidget {
  const ListSample({super.key});

  @override
  State<ListSample> createState() => _ListSampleState();
}

class _ListSampleState extends State<ListSample> {
    int _currentIndex = 0;

    List<String> _titles = ["Home", "Search", "Comments", "Profile"];

  List<ListItem> items =[
    ListItem(subTitle: "Can you come back home", title: "Lusi"),
    ListItem(subTitle: "Yeah can i call you later", title: "Jio"),
    ListItem(subTitle: "Hi, tomorrow is holiday", title: "Kuproy"),
    ListItem(subTitle: "O.k Senior man", title: "Aisyh"),
    ListItem(subTitle: "Are you busy today", title: "Jopii"),
    ListItem(subTitle: "Are you busy tomorrow", title: "Kuti Pare")

    // ListItem(subTitle: "Who kill my dog", title: "John wick 3 is out", type: "x"),

    
  ] ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: _bars(),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.edit),),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          ListItem item = items[index];
          if (item.type == null) {
            return _itemView(item);
          } else {
            return _headerView(item);
          }
        },
      )
    );
  
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      leading: const Icon(
        Icons.menu,
        color: Colors.black,
      ),
      elevation: 1,
      title: Text(
        _titles[_currentIndex],
        style: TextStyle(color: Colors.black),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              color: Colors.grey,
            ))
      ],
    );
  }

   List<BottomNavigationBarItem> _bars() {
    return const [
      BottomNavigationBarItem(
          activeIcon: Icon(
            Icons.home,
            color: Colors.green,
          ),
          icon: Icon(
            Icons.home,
            color: Colors.grey,
          ),
          label: "Home"),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            color: Colors.grey,
          ),
          label: "Search"),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.comment,
            color: Colors.grey,
          ),
          label: "Comment"),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.verified_user,
            color: Colors.grey,
          ),
          label: "Profile"),
    ];
  }


  Widget _headerView(ListItem item) {
    return Container(
      color: Colors.blue,
      padding: const EdgeInsets.all(16),
      child: Text (item.title),
    );
  }

    Widget _itemView(ListItem value) {
      return ListTile(
          leading: Container(
           color: Colors.amber,
           height: 60,
           width: 60,
           child: Image.asset("assets/images/dog.png"), 
          ),
        title: Text(value.title),
        subtitle: Text(value.subTitle),
        trailing: const Text("00.25"),
      );
    }
}