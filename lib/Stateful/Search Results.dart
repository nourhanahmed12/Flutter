 import 'package:flutter/material.dart';
import 'package:cars/Color.dart';

class SearchResults extends StatefulWidget {
  @override
  _SearchResultsState createState() => _SearchResultsState();
}

class _SearchResultsState extends State<SearchResults> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: profile',
      style: optionStyle,
    ),
    Text(
      'Index 1: notification',
      style: optionStyle,
    ),
    Text(
      'Index 2: awards',
      style: optionStyle,
    ),
    Text(
      'Index 3: favourite',
      style: optionStyle,
    ),
    Text(
      'Index 4: Home',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    MediaQueryData queryData = MediaQuery.of(context);

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              width: queryData.size.width,
              height: queryData.size.height * 0.417,
              child: Container(
                constraints: BoxConstraints.expand(),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/bg.png"), fit: BoxFit.cover)),
              ),
            ),
            Positioned(
              // width: queryData.size.width*0.136,
              // height: queryData.size.height*0.4,
              //bottom: queryData.size.height * 0.257,
                top:queryData.size.height*0.05,
                right: queryData.size.width * 0.064,
                child: Text(
                  "نتائج البحث",
                  style: TextStyle(
                      color: AppColors.white,
                      fontSize: 30,
                      fontFamily: 'Nizar Cocon Kurdish Bold.ttf',
                      fontWeight: FontWeight.bold),
                )),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(

                width: queryData.size.width,
                height: queryData.size.height*0.755,
                child: DefaultTabController(
                  length: 3,
                  child: Scaffold(
                    appBar: AppBar(
                      //leadingWidth: 0.1,
                      toolbarHeight: 48,
                      elevation: 0,
                      backgroundColor: Colors.transparent,
                      shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(90.0),
                          topRight: Radius.circular(90.0),
                        ),
                      ),
                      bottom: TabBar(
                        unselectedLabelColor: AppColors.darkGray,
                        labelColor: AppColors.blue,

                        tabs: [
                          Tab(
                            child: Text(
                              " الكل",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Nizar Cocon Kurdish Bold',
                                  fontWeight: FontWeight.bold),                            ),
                          ),
                          Tab(
                            child: Text(
                              "المفتوح",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Nizar Cocon Kurdish Bold',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Tab(
                            child: Text(
                              "المغلق",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Nizar Cocon Kurdish Bold',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    body: TabBarView(
                      children: <Widget>[
                        Icon(Icons.ac_unit),
                        Icon(Icons.ac_unit),
                        Icon(Icons.ac_unit),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(15), topLeft: Radius.circular(15)),
            boxShadow: [
              BoxShadow(
                  color: AppColors.darkGray, spreadRadius: 0, blurRadius: 6),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0),
              topRight: Radius.circular(15.0),
            ),
            child: BottomNavigationBar(
              onTap: (index) => _onItemTapped(index),
              type: BottomNavigationBarType.fixed,
              currentIndex: _selectedIndex,
              selectedLabelStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColors.blue,
              ),
              unselectedLabelStyle: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColors.lightGray,
              ),
              showSelectedLabels: true,
              showUnselectedLabels: true,
              selectedItemColor: AppColors.blue,
              unselectedItemColor: AppColors.lightGray,
              iconSize: 30.0,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.map_outlined),
                  label: "الخريطه",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.widgets_outlined),
                  label: "الخدمات",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_border),
                  label: "المفضلة",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.list_alt),
                  label: "الطلبات",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.format_list_bulleted),
                  label: "القائمة",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
