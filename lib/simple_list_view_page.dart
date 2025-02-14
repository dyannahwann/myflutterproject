import 'package:flutter/material.dart';
import 'package:simple_list_view/buttons_page.dart';
import 'package:simple_list_view/custom_list_tile.dart';
import 'package:simple_list_view/stories.dart/stories_page_controller.dart';


class SimpleListViewPage extends StatelessWidget {
  const SimpleListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('my list view'),
        actions: [
          IconButton(onPressed:() 
          {Navigator.of(context).push(MaterialPageRoute(builder: (_)=>StoriesPageController()));
          },
           icon: Icon(Icons.more)),
          Icon(Icons.list),
         IconButton(onPressed: (){
         Navigator.push(context,MaterialPageRoute(builder:(_) =>ButtonsPage() ) );
         }, 
         
         icon: Icon(Icons.airplanemode_inactive_outlined))
        ],

      ),
      body:ListView(
        children: [
          ListTile(
            leading: Icon(Icons.person,color: Colors.blue,),
            title: Text('Diana wanjala',style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text('hello there'),
            
            trailing: Text('5'),
          ),
           ListTile(
            leading: Icon(Icons.person,color: Colors.amber,),
            title: Text('Naomi Odwa '),
            subtitle: Text('hello there'),
          ),
          
           ListTile(
            onTap: () {
              //function here
            },
            onLongPress: () {
              
            },
            leading: Icon(Icons.person_2),
            title: Text('Aggy '),
            subtitle: Text('hello there'),
          ),
          
           ListTile(
            leading: Icon(Icons.person),
            title: Text('lina '),
            subtitle: Text('hello there'),
            trailing: Icon(Icons.add_ic_call_outlined),
            onTap: () {
              print("tapped");
            },
          ),
          CustomListTile(
            leading: Icons.flaky,
            title: 'diana custom tile',
            subtitle: 'hello there custom tile diana',
            badgelabel: Text('messages'),
            badgechild: Text('5'),
            onTap: () {
              print("tapped");
            },
          ),
           CustomListTile(
            leading: Icons.g_mobiledata,
            title: 'my learning custom tile',
            subtitle: 'hello there custom tile learning',
            badgelabel: Text('follow me'),
            badgechild: Text('3'),
            onTap: () {
              print("tapped");
            },
          ),
           CustomListTile(
            leading: Icons.cloud_done_outlined,
            title: ' widgets custom tile',
            subtitle: 'lets engage and learn',
            badgelabel: FlutterLogo(),
            badgechild: Text('6'),
            onTap: () {
              print("tapped");
            },
          )
         
        ],
      ) ,

    );
  }
}