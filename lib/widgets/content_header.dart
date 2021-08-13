import 'package:flutter/material.dart';
import 'package:netflix/models/content.dart';
import 'package:netflix/widgets/vertical_icon_button.dart';

class ContentHeader extends StatelessWidget {
  final Content? featuredContent;

  const ContentHeader({
    Key? key,
    this.featuredContent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 500,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(featuredContent!.imageUrl!),
            fit: BoxFit.cover,
          )),
        ),
        Container(
          height: 500,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [Colors.black, Colors.transparent],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          )),
        ),
        Positioned(
          bottom: 110,
          child: SizedBox(
            width: 250,
            child: Image.asset(
              featuredContent!.titleImageUrl!,
            ),
          ),
        ),
        Positioned(
          left: 0,
          bottom: 40,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              VerticalIconButton(icon: Icons.add, title: 'List', onTap: () {}),
              _PlayButton(),
              VerticalIconButton(
                  icon: Icons.info_outline, title: 'Info', onTap: () {}),
            ],
          ),
        ),
      ],
    );
  }
}

class _PlayButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton.icon(
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(15, 5, 20, 5 ),
      onPressed: () {},
      icon: Icon(
        Icons.play_arrow,
        size: 30,
      ),
      label: Text(
        'Play',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
