
import 'package:flutter/material.dart';
import 'package:simple_list_view/buttons_page.dart';

class Tabs extends StatelessWidget {
  const Tabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('my Tab bar '),
        actions: [
          Icon(Icons.list),
         IconButton(onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (_) => ButtonsPage()));
         }, 
         
         icon: Icon(Icons.airplanemode_inactive_outlined))
        ],

      ),
      body: DefaultTabController(
        length: 3, 
        child: Scaffold(
          appBar: AppBar(bottom:  TabBar(
            tabs:[
              Tab(icon: Icon(Icons.import_contacts),),
              Tab(icon: Icon(Icons.home),),
              Tab(icon: Icon(Icons.zoom_out                                                                                                            
              ),),
              Tab(icon: Icon(Icons.card_membership),),
            ] )
            
          ,),
        )),
    );
  }
}