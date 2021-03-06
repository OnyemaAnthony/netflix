import 'package:flutter/material.dart';
import 'package:netflix/models/content.dart';

class Previews extends StatelessWidget {
  final String? title;
  final List<Content>? contentList;

  const Previews({
    Key? key,
    this.title,
    this.contentList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
          height: 165,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: contentList!.length,
            itemBuilder: (context, index) {
              final Content content = contentList![index];
              return GestureDetector(
                onTap: () {},
                child: Stack(
                  alignment: Alignment.center ,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      height: 130,
                      width: 139,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(content.imageUrl!),
                            fit: BoxFit.cover,
                          ),
                          shape: BoxShape.circle,
                          border: Border.all(color: content.color!, width: 4)),
                    ),
                    Container(
                      height: 130,
                      width: 139,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.black87,
                              Colors.black45,
                              Colors.transparent
                            ],
                            stops: [0,0.25,1],
                            begin: Alignment.bottomCenter,
                          ),
                          shape: BoxShape.circle,
                          border: Border.all(color: content.color!, width: 4)),
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: SizedBox(
                        height: 60,
                        child: Image.asset(content.titleImageUrl!),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
