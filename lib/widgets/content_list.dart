import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:netflix/data/data.dart';
import 'package:netflix/models/content.dart';

class ContentList extends StatelessWidget {
  final String? title;
  final List<Content>? contentList;

  final bool? isOriginal;

  const ContentList({
    Key? key,
    this.title,
    this.contentList,
    this.isOriginal = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            title!,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        Container(
          height:  isOriginal! ? 500:220,
           child: ListView.builder(
             scrollDirection: Axis.horizontal,
             padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 16),
               itemCount: contentList!.length,
               itemBuilder: (context,index){
               final Content content = contentList![index];

               return GestureDetector(
                 onTap: (){

                 },
                 child: Container(
                   margin: EdgeInsets.symmetric(horizontal: 8),
                   height:  isOriginal! ? 400:220,
                   width:  isOriginal! ? 200: 130,
                   decoration: BoxDecoration(
                     image: DecorationImage(
                       image: AssetImage(content.imageUrl!),
                       fit: BoxFit.cover,
                     )
                   ),
                 ),
               );

               }
           )
        )
      ]),
    );
  }
}
