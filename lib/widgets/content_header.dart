import 'package:flutter/material.dart';
import 'package:netflix/models/content.dart';
import 'package:netflix/widgets/responsive.dart';
import 'package:netflix/widgets/vertical_icon_button.dart';
import 'package:video_player/video_player.dart';

class ContentHeader extends StatelessWidget {
  final Content? featuredContent;

  const ContentHeader({
    Key? key,
    this.featuredContent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: ContentHeaderMobile(featuredContent: featuredContent),
      desktop: ContentHeaderDesktop(featuredContent: featuredContent),
    );
  }
}

class ContentHeaderMobile extends StatelessWidget {
  final Content? featuredContent;

  const ContentHeaderMobile({
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

class ContentHeaderDesktop extends StatefulWidget {
  final Content? featuredContent;

  const ContentHeaderDesktop({
    Key? key,
    this.featuredContent,
  }) : super(key: key);

  @override
  _ContentHeaderDesktopState createState() => _ContentHeaderDesktopState();
}

class _ContentHeaderDesktopState extends State<ContentHeaderDesktop> {
  late VideoPlayerController controller;
  bool isMuted = true;

  @override
  void initState() {
    controller =
        VideoPlayerController.network(widget.featuredContent!.videoUrl!)
          ..initialize().then((value) {
            setState(() {});
          })
          ..play();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.value.isPlaying ? controller.pause() : controller.play();
      },
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Container(
            height: 500,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(widget.featuredContent!.imageUrl!),
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
            left: 60,
            right: 60,
            bottom: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 250,
                  child: Image.asset(widget.featuredContent!.titleImageUrl!),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  widget.featuredContent!.description!,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    shadows: [
                      Shadow(
                          color: Colors.black,
                          offset: Offset(2, 4),
                          blurRadius: 6),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _PlayButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton.icon(
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(15, 5, 20, 5),
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
