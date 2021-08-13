import 'package:flutter/material.dart';
import 'package:netflix/data/data.dart';
import 'package:netflix/widgets/content_header.dart';
import 'package:netflix/widgets/custom_app_bar.dart';
import 'package:netflix/widgets/previews.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late double _scrollOffset = 0.0;
 late  ScrollController _scrollController;

 @override
  void initState() {
    _scrollController = ScrollController()..addListener(() {
      setState(() {
        _scrollOffset = _scrollController.offset;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
  _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey[850],
        child: Icon(Icons.cast),
        onPressed: (){

        },
      ),
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width,50),
        child: CustomAppBar(scrollOffset: _scrollOffset,),
      ),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverToBoxAdapter(
            child: ContentHeader(featuredContent:sintelContent),
          ),
          SliverPadding(
            padding: EdgeInsets.only(top: 20),
            sliver: SliverToBoxAdapter(
              child: Previews(title:"Previews",contentList:previews),
            ),
          )
        ],
      ),
    );
  }
}