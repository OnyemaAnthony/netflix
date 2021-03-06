import 'package:flutter/material.dart';
import 'package:netflix/utilities.dart';
import 'package:netflix/widgets/responsive.dart';

class CustomAppBar extends StatelessWidget {
  final double? scrollOffset;

  const CustomAppBar({
    Key? key,
    this.scrollOffset = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
      color: Colors.black
          .withOpacity((scrollOffset! / 350).clamp(0, 1).toDouble()),
      child: Responsive(
        mobile: _CustomAppBarMobile(),
        desktop: _CustomAppBarDesktop(),
      ),
    );
  }
}

class AppBarButton extends StatelessWidget {
  final String? title;
  final Function()? onTap;

  const AppBarButton({
    Key? key,
    this.title,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        title!,
        style: TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
      ),
    );
  }
}

class _CustomAppBarMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Image.asset(Utilities.netflixLogo0),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AppBarButton(
                  title: "Tv Shows",
                  onTap: () {},
                ),
                AppBarButton(
                  title: "Movies",
                  onTap: () {},
                ),
                AppBarButton(
                  title: "My List",
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CustomAppBarDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Image.asset(Utilities.netflixLogo1),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AppBarButton(
                  title: "Home",
                  onTap: () {},
                ),
                AppBarButton(
                  title: "Tv Shows",
                  onTap: () {},
                ),
                AppBarButton(
                  title: "Movies",
                  onTap: () {},
                ),
                AppBarButton(
                  title: "My List",
                  onTap: () {},
                ),
                AppBarButton(
                  title: "Latest",
                  onTap: () {},
                ),
              ],
            ),
          ),
          Spacer(),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                  iconSize: 28,
                  color: Colors.white,
                  padding: EdgeInsets.zero,
                ),
                AppBarButton(
                  title: "Kids",
                  onTap: () {},
                ),
                AppBarButton(
                  title: "DVD",
                  onTap: () {},
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.card_giftcard),
                  iconSize: 28,
                  color: Colors.white,
                  padding: EdgeInsets.zero,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications ),
                  iconSize: 28,
                  color: Colors.white,
                  padding: EdgeInsets.zero,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
