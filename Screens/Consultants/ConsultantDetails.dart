import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/Widgets/Pshyciatrist/consultant_bio.dart';
import 'package:login/Widgets/Pshyciatrist/custom_experience_bar.dart';

import '../../Widgets/Pshyciatrist/consultant_nav_bar.dart';

class ConsultantsDetails extends StatelessWidget {
  const ConsultantsDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body:CustomScrollView(
          slivers: [
      SliverPersistentHeader(
      delegate: CustomSliverAppbarDelegate(expandedHeight: size.height * 0.3),
      pinned: true,
      floating: false,
    ),
            _customPage(size)
          ]
      ),

      /*SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: size.height,
          width: size.width,
          padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.04,
              vertical: size.width * 0.04
          ),
          color: Color(0xfff1f1f1),
          child: Column(
            children: [
              SizedBox(
                height : size.height * 0.05,
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back), onPressed: () { },
                  ),
                ),
              ),
              ConsultantBio(),
              Container(
                height: size.height * 0.15,
                decoration: BoxDecoration(
                  color: Color(0xfff1f1f1),
                  borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                    BoxShadow(
                      color: Color(0xff28203e),
                      offset: Offset(2,2),
                      blurRadius: 20
                    ),
                    BoxShadow(
                        color: Colors.grey.shade100,
                        offset: Offset(-2,-2),
                      blurRadius: 15
                    )
                  ]
                ),
                padding: EdgeInsets.symmetric(vertical: size.height* 0.04),
                margin: EdgeInsets.symmetric(vertical: size.height * 0.01),
                child: Center(
                  child: Column(
                    children: [
                      Text('Experience'),
                      Text('Patients')
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),*/
      bottomNavigationBar: ConsultantNavigationBar()
    );
  }

  SliverToBoxAdapter _customPage(Size size) => SliverToBoxAdapter(
    child: Container(
      child: Column(
        children: [
          SizedBox(height: size.height * 0.1,),
          Experience()

        ],
      ),
    ),
  );
}

class CustomSliverAppbarDelegate extends SliverPersistentHeaderDelegate{
  CustomSliverAppbarDelegate({ required this.expandedHeight});
  final double expandedHeight;


  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    var size = MediaQuery.of(context).size;
    return Stack(
      fit: StackFit.expand,
      overflow: Overflow.visible,
      children: [
        _customBackGround(shrinkOffset, context , size ),
        _customAppBar(shrinkOffset, context),
        Positioned(
            top: expandedHeight - shrinkOffset - size.height * 0.09,
            left:  30,
            right: 30,
            child: Opacity(
                opacity: disAppear(shrinkOffset),
                child: const ConsultantBio()
            )
        )
      ],
    );
  }
  double appear(double shrinkOffset) => shrinkOffset / expandedHeight ;

  double disAppear(double shrinkOffset) => 1 - shrinkOffset / expandedHeight ;

  Widget _customMenuButton(BuildContext context) => IconButton(
      onPressed: () {},
      icon:const Icon(Icons.menu)
  );
  var time = DateTime.now().toString();

  Widget _customBackGround(double shrinkOffset,BuildContext context ,Size size ) => Opacity(
    opacity: disAppear(shrinkOffset) ,
    child: Container(
      decoration: BoxDecoration(
        color: Color(0xff28203e),
        borderRadius: BorderRadius.vertical(
            bottom: Radius.elliptical(
                MediaQuery.of(context).size.width, 50.0)),

      ),
      padding: EdgeInsets.only(
          top: size.height * 0.1 >= 0 ?
          size.height * 0.08: 0,
          left: 15
      ),
      alignment: Alignment.topLeft,
      child: Row(
        children: [
          IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back , color: Colors.white,)),
          SizedBox(width: size.width * 0.18,),
          Text('Doctor Detail' , style: TextStyle(color: Colors.white , fontSize: size.height * 0.03),)
        ],
      ),
    ),
  );

  Widget _customAppBar(double shrinkOffset , BuildContext context) => Opacity(
    opacity: appear(shrinkOffset) > 1? appear(shrinkOffset)+0.1: appear(shrinkOffset),
    child: AppBar(
      leading: _customMenuButton(context),
      title: const Text("Home"),
    ),
  );
  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight + 20;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) => true;
}
