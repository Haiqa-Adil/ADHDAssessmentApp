import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adhdassessmentapp/Models/global_values.dart';
import 'package:adhdassessmentapp/Widgets/Pshyciatrist/consultant_bio.dart';
import 'package:adhdassessmentapp/Widgets/Pshyciatrist/custom_experience_bar.dart';
import 'package:adhdassessmentapp/Widgets/Pshyciatrist/custom_wrap.dart';

import '../../Widgets/Pshyciatrist/consultant_nav_bar.dart';

class ConsultantsDetails extends StatefulWidget {
  ConsultantsDetails({Key? key}) : super(key: key);

  @override
  State<ConsultantsDetails> createState() => _ConsultantsDetailsState();
}

class _ConsultantsDetailsState extends State<ConsultantsDetails> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: CustomScrollView(slivers: [
          SliverPersistentHeader(
            delegate:
                CustomSliverAppbarDelegate(expandedHeight: size.height * 0.3),
            pinned: true,
            floating: false,
          ),
          _customPage(size),
        ]),

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
        bottomNavigationBar: ConsultantNavigationBar());
  }

  SliverToBoxAdapter _customPage(Size size) => SliverToBoxAdapter(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.1,
              ),
              Experience(),
              SizedBox(
                height: size.height * 0.03,
              ),
              CustomWrap(
                  name: 'Qualification',
                  wrapText: ['MBBs', 'MBBs', 'MBBs', 'MBBs', 'MBBs', 'MBBs']),
              CustomWrap(name: 'Experience', wrapText: [
                'ADHD',
                'MBBsdfgyud',
                'MBBs',
                'MBBs',
                'MBBs',
                'MBBs',
                'MBBsdfgyud',
                'MBBsdfgyud',
                'MBBsdfgyud'
              ]),
              SizedBox(
                height: size.height * 0.04,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Location",
                    style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: size.height * 0.028,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(size.width * 0.05),
                child: Column(children: [
                  _customeExpasionTile(size),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  _customeExpasionTile(size),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  _customeExpasionTile(size),
                ]),
              ),
              SizedBox(
                height: size.height * 0.1,
              )
            ],
          ),
        ),
      );

  Card _customeExpasionTile(Size size) {
    bool isExpanded = false;
    return Card(
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
            20), //side: BorderSide(width: 5 , color:  Colors.black)
      ),
      child: ExpansionTile(
        childrenPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
        backgroundColor: colorCodes[13].withOpacity(0.6),
        collapsedTextColor: Colors.blueGrey,
        collapsedIconColor: Colors.blueGrey,
        iconColor: Colors.blueGrey,
        textColor: Colors.white,
        title: Text(
          'Jinnah',
          style: TextStyle(
              //  color: Colors.grey[800],
              fontSize: size.height * 0.03,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w700),
        ),
        trailing: Icon(
          isExpanded
              ? Icons.keyboard_arrow_up_rounded
              : Icons.keyboard_arrow_down_rounded,
          size: size.height * 0.04,
          color: isExpanded ? Colors.white : Colors.blueGrey,
        ),
        onExpansionChanged: (exp) {
          setState(() {
            isExpanded = exp;
          });
        },
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Address fytuhgjb ihyidu tkgytj uithy kchuit',
              style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: size.height * 0.02,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700),
            ),
          ),
          Divider(
            color: Colors.white,
            thickness: 2,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '9:00AM - 12:00PM',
              style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: size.height * 0.02,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700),
            ),
          ),
          Divider(
            color: Colors.white,
            thickness: 2,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '300',
              style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: size.height * 0.02,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            clipBehavior: Clip.hardEdge,
            padding: EdgeInsets.symmetric(vertical: size.height * 0.01),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
            height: 200,
            child: Image.network(
              'https://developers.google.com/maps/images/landing/hero_directions_api.png',
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}

class CustomSliverAppbarDelegate extends SliverPersistentHeaderDelegate {
  CustomSliverAppbarDelegate({required this.expandedHeight});
  final double expandedHeight;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    var size = MediaQuery.of(context).size;
    return Stack(
      fit: StackFit.expand,
      //overflow: Overflow.visible,
      children: [
        _customBackGround(shrinkOffset, context, size),
        _customAppBar(shrinkOffset, context),
        Positioned(
            top: expandedHeight - shrinkOffset - size.height * 0.09,
            left: 30,
            right: 30,
            child: Opacity(
                opacity: expandedHeight - shrinkOffset > 95
                    ? disAppear(shrinkOffset)
                    : disAppear(shrinkOffset),
                child: const ConsultantBio()))
      ],
    );
  }

  double appear(double shrinkOffset) => (shrinkOffset) / expandedHeight;

  double disAppear(double shrinkOffset) => 1 - (shrinkOffset) / expandedHeight;

  Widget _customMenuButton(BuildContext context) =>
      IconButton(onPressed: () {}, icon: const Icon(Icons.menu));
  var time = DateTime.now().toString();

  Widget _customBackGround(
          double shrinkOffset, BuildContext context, Size size) =>
      Opacity(
        opacity: expandedHeight - shrinkOffset > 85
            ? disAppear(shrinkOffset)
            : disAppear(shrinkOffset),
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xff28203e),
            borderRadius: BorderRadius.vertical(
                bottom:
                    Radius.elliptical(MediaQuery.of(context).size.width, 50.0)),
          ),
          padding: EdgeInsets.only(
              top: size.height * 0.1 >= 0 ? size.height * 0.08 : 0, left: 15),
          alignment: Alignment.topLeft,
          child: Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  )),
              SizedBox(
                width: size.width * 0.18,
              ),
              Text(
                'Doctor Detail',
                style: TextStyle(
                    color: Colors.white, fontSize: size.height * 0.03),
              )
            ],
          ),
        ),
      );

  Widget _customAppBar(double shrinkOffset, BuildContext context) => Opacity(
        opacity:
            expandedHeight - shrinkOffset > 100 ? appear(shrinkOffset * 0) : 1,
        child: AppBar(
          title: const Text("DoctorDetail"),
          backgroundColor: Color(0xff28203e),
        ),
      );
  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => 80;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
