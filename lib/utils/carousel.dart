library gscarousel;

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:jaz_app/utils/carouselindicator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Carousel extends StatefulWidget {

  // Provide image banner for this Carousel Slider
  final List images;

  // The default transition set to Curves.ease
  final Curve animationCurve;

  // set transition animation duration.
  final Duration animationDuration;

  // set size of indicator
  final Size indicatorSize;

  // set size of active indicator
  final Size indicatorActiveSize;

  // set default space between indicator
  final double indicatorSpacing;

  // set indicator color
  final Color indicatorColor;

  // set indicator active color
  final Color indicatorActiveColor;

  // set indicator background color
  final Color indicatorBackgroundColor;

  // set content mode of image
  final BoxFit contentMode;

  // set autoPlay Bool
  final bool autoPlay;

  // set autoPlay Duration animation transition
  final Duration autoPlayDuration;
  final double bottomPadding;
  final Function(int)? onImageChange;


  Carousel(
      {required this.images,
        this.animationCurve = Curves.ease,
        this.animationDuration = const Duration(milliseconds: 300),
        this.indicatorSize = const Size.square(8.0),
        this.indicatorActiveSize = const Size(18.0, 8.0),
        this.indicatorSpacing = 25.0,
        this.indicatorColor = Colors.white,
        this.indicatorActiveColor = Colors.grey,
        required this.indicatorBackgroundColor,
        this.contentMode = BoxFit.cover,
        this.autoPlay = true,
        this.autoPlayDuration = const Duration(seconds: 3),
        required this.bottomPadding,this.onImageChange})
      : assert(images != null),
        assert(animationCurve != null),
        assert(animationDuration != null),
        assert(indicatorSize != null),
        assert(indicatorSpacing != null),
        assert(indicatorColor != null),
        assert(indicatorActiveColor != null);

  @override
  State createState() => new CarouselState();
}

class CarouselState extends State<Carousel> {
  final _gsController = new PageController();
  int currentPosition = 0;



  @override
  void initState() {
    super.initState();

    if (widget.autoPlay) {
      new Timer.periodic(widget.autoPlayDuration, (_) {
        if (_gsController.page == widget.images.length - 1) {
          setState(() {
            currentPosition = 0;
          });
          _gsController.animateToPage(
            0,
            duration: widget.animationDuration,
            curve: widget.animationCurve,
          );

        } else {
          setState(() {
            currentPosition = _gsController.page!.round() + 1;
          });
          _gsController.nextPage(
              duration: widget.animationDuration, curve: widget.animationCurve);
        }

      });
    }

  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    final List<Widget> listImages = widget.images
        .map((networkImage) => new Container(
        decoration: new BoxDecoration(
            gradient: new LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.center,
                stops: [
                  0.0,
                  0.5,
                ],
                colors: [
                  Colors.blueGrey[800]!.withOpacity(0.2),
                  Colors.blueGrey[800]!.withOpacity(0.0),
                ]))

        /*  decoration: new BoxDecoration(
              borderRadius: new BorderRadius.circular(0.0),
              image: new DecorationImage(
                  image: networkImage,
                  fit: widget.contentMode
              )
          ),*/
        ,
        child:
        networkImage /*CachedNetworkImage(
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  imageUrl: networkImage),*/
    ))
        .toList();

    return Scaffold(
      body: new Stack(
        children: <Widget>[
          new Container(
            child: new PageView(
              physics: new AlwaysScrollableScrollPhysics(),
              controller: _gsController,
              children: listImages,
              onPageChanged: (index){
                setState(() {
                  currentPosition = index;
                  widget.onImageChange?.call(currentPosition);

                });
              },
            ),
          ),
          new Positioned(
            bottom: -10.0,
         //   left: MediaQuery.of(context).size.width-5*30,
           right: 10,
            child: new Container(
              decoration: new BoxDecoration(
                  color: widget.indicatorBackgroundColor == null
                      ? Colors.transparent
                      : widget.indicatorBackgroundColor,
                  borderRadius: new BorderRadius.only(
                      bottomLeft: new Radius.circular(8.0),
                      bottomRight: new Radius.circular(8.0))),
              padding: new EdgeInsets.only(left: 20.0, top: 10.0, bottom: widget.bottomPadding),
              child:
              SmoothPageIndicator(
                  controller: _gsController,  // PageController
                  count:  listImages.length,
                  effect:  ScrollingDotsEffect(activeDotColor: widget.indicatorActiveColor,
                      dotColor: widget.indicatorColor,
                      dotWidth: listImages.length==1?0:widget.indicatorSize.width,
                      dotHeight: listImages.length==1?0:widget.indicatorSize.height),  // your preferred effect
                  onDotClicked: (index){

                  }
              )
              // new CarouselIndicator(
              //   numberOfIndicator: listImages.length,
              //   position: currentPosition,
              //   indicatorSize: widget.indicatorSize,
              //   indicatorActiveSize: widget.indicatorActiveSize,
              //   indicatorColor: widget.indicatorColor,
              //   indicatorActiveColor: widget.indicatorActiveColor,
              //   indicatorActiveShape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(5.0)),
              // ),
            ),
          )
        ],
      ),
    );
  }
}
