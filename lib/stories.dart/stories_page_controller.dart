import 'dart:async';

import 'package:flutter/material.dart';
import 'package:simple_list_view/stories.dart/story_data_class.dart';
import 'package:simple_list_view/stories.dart/story_full_page.dart';

class StoriesPageController extends StatefulWidget {
  const StoriesPageController({super.key});

  @override
  State<StoriesPageController> createState() => _StoriesPageControllerState();
}

class _StoriesPageControllerState extends State<StoriesPageController> {
  final stories =[
    Story_fullPageView(
            storyData: StoryDataClass(username: "DIANA ", 
            description: "hello there",
             color:Colors.red),

          ),
          Story_fullPageView(
            storyData: StoryDataClass(username: "DIANA ", 
            description: "hello there",
             color:Colors.pinkAccent),

          ),
          Story_fullPageView(
            storyData: StoryDataClass(username: "DIANA ", 
            description: "hello there",
             color:Colors.blue),

          ),
          Story_fullPageView(
            storyData: StoryDataClass(username: "DIANA ", 
            description: "hello there",
             color:Colors.brown),

          ),
          Story_fullPageView(
            storyData: StoryDataClass(username: "DIANA ", 
            description: "hello there",
             color:Colors.deepOrangeAccent),

          ),
          Story_fullPageView(
            storyData: StoryDataClass(username: "DIANA ", 
            description: "hello there",
             color:Colors.black),

          )
  ];
  late final PageController pageController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController=PageController();

    Timer.periodic(Duration(seconds: 1), (Timer r) => autoplaystories());
    
  }
  int currentindex =0;
  void autoplaystories(){
    if(currentindex< stories.length){
      pageController.animateToPage(currentindex +1, duration: Duration(seconds: 5), curve: Curves.bounceIn);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
         
          PageView.builder(
            onPageChanged: (int? i) { 
          
            
              
            setState(() {
               currentindex == i;
            });
              
            },
            controller: pageController,
            itemCount: stories.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, int i) => stories[i],
           
              
           
          ),
           SizedBox( height: 25,
             child: Row
             (mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
              stories.length,
               (index)
          => Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Container(

              height:10,
              width: MediaQuery.of (context).size.width*.9/stories.length,
              decoration: BoxDecoration(
                 color: index<=currentindex?
            Colors.white:
             Colors.grey, 
             borderRadius: BorderRadius.circular(12)
             )),
            
            ),
          ) ,),),
        ]
      ),
    );
  }
}
