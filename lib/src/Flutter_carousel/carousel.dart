import 'package:flutter/material.dart';

class FLutterCarousel extends StatefulWidget {
  @override
  _FLutterCarouselState createState() => _FLutterCarouselState();
}

class _FLutterCarouselState extends State<FLutterCarousel> {
  int photoi = 0;
  var image = [
    'https://images.unsplash.com/photo-1557409835-0e90016730f8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80',
    'https://images.pexels.com/photos/1391498/pexels-photo-1391498.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.unsplash.com/photo-1503185912284-5271ff81b9a8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80',
  ];

  void previousImage(){
    setState(() {
      photoi = photoi > 0 ? photoi - 1 : 0;
    });
  }

  void nextImage(){
    setState(() {
      photoi = photoi < image.length - 1 ? photoi + 1 : photoi;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carousel Flutter'),
        centerTitle: true,
      ),

      body: Column(
        children: <Widget>[
          SizedBox(height: 20,),
          Center(
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    image: DecorationImage(
                      image: NetworkImage(image[photoi]),
                      fit: BoxFit.cover
                    )
                  ),

                  height: 500,
                  width: 400,
                ),

                Positioned(
                  top: 375,
                  left: 24,
                  right: 24,
                  child: SelectedPhoto(image.length, photoi),
                )
              ],
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Icon(Icons.arrow_left),
                onPressed: previousImage,
                elevation: 5.0,
                color: Colors.green[100],
              ),
              SizedBox(
                width: 6,
              ),
              RaisedButton(
                child: Icon(Icons.arrow_right),
                onPressed: nextImage,
                elevation: 5.0,
                color: Colors.green[100],
              )
            ],
          )
        ],
      ),
      
    );
  }
}

class SelectedPhoto extends StatelessWidget {
  final int numbI;
  final int photoI;

  SelectedPhoto(this.numbI, this.photoI);

  Widget inactive(){
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 3.2, right: 3.2),
        child: Container(
          height: 8.0,
          width: 8.0,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(4.0)
          ),
        ),
      ),
    );
  }

  Widget activeP(){
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 5, right: 5),
        child: Container(
          height: 10.0,
          width: 10.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5.0)
          ),
        ),
      ),
    );
  }

  List<Widget> buildDots(){
    List<Widget> dots = [];
    for(int i=0; i<numbI; ++i){
      dots.add(
        i == photoI ? activeP() : inactive()
      );
    }
    return dots;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: buildDots(),
      ),
      
    );
  }
}