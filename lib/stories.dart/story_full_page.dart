import 'package:flutter/material.dart';
import 'package:simple_list_view/stories.dart/story_data_class.dart';

class Story_fullPageView extends StatelessWidget {
  const Story_fullPageView({super.key, this.storyData});
  final StoryDataClass? storyData;

  @override
  Widget build(BuildContext context) {
    return  Material(
      child: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: DecoratedBox(decoration: BoxDecoration(
              color: storyData?.color ?? Colors.green,
            )),
          ),
          Align(alignment:Alignment.bottomCenter,
          
            child: Column(
              mainAxisSize: MainAxisSize.min,
            children: [
              Text(storyData?.username ??"username should be here"),
              Text(storyData?. description ??""),
            ],
          ),)
        ],
      ),
    );
  }
}