import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jaz_app/utils/colors.dart' as Uicolors;

class CustomDialogBox extends StatefulWidget {
  //  final String title, descriptions, text;
  // final Image img;
  final List<String> gridItems;
  final String name;
  CustomDialogBox({required this.gridItems, required this.name});

  @override
  _CustomDialogBoxState createState() => _CustomDialogBoxState();
}

int selectedCard = -1;

class _CustomDialogBoxState extends State<CustomDialogBox> {

  void initState(){
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Dialog(
      /*shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimensions.padding),
      ),*/
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  contentBox(context) {
    var gridHeigth = (MediaQuery.of(context).size.height*0.1*(widget.gridItems.length/2)) > (MediaQuery.of(context).size.height * .75)?(MediaQuery.of(context).size.height * .75):(MediaQuery.of(context).size.height*0.1*(widget.gridItems.length/2));
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: gridHeigth+81,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: new BorderRadius.circular(10.0),
          ),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .08,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width
                     * 0.035,
                    right: MediaQuery.of(context).size.width * 0.015),
                child: Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * .01),
                      alignment: Alignment.centerLeft,
                      child: Text(widget.name,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Uicolors.titleText,
                            fontFamily: 'Popins-medium',
                            fontSize: 16.0,
                          )),
                    ),
                    Positioned(
                      right: 0,
                      child: Container(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * .01),
                        child: IconButton(
                          icon: const Icon(Icons.close),
                          color: Uicolors.buttonbg,
                          iconSize: 20,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        decoration: new BoxDecoration(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height * 0.015,
                      left: MediaQuery.of(context).size.width
                       * 0.030,
                      right: MediaQuery.of(context).size.width * 0.030),
                  child: Divider(
                    thickness: 0.5,
                    color: Uicolors.desText,
                  )),
              Container(
                  height:gridHeigth,
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.015,
                      right: MediaQuery.of(context).size.width * 0.015),
                  child: GridView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: widget.gridItems.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 4,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedCard = index;
                            });
                          },
                          child: Container(
                             height: MediaQuery.of(context).size.height*.1,

                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width * 0.015,
                                right:
                                    MediaQuery.of(context).size.width * 0.015),
                            //    alignment: Alignment.center,
                            //  child: Center(
                            child: Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width *
                                          0.01,
                                      top: MediaQuery.of(context).size.height *
                                          0.01),
                                  child: Image.asset(
                                    "assets/images/fullround.png",
                                    width: 8,
                                    color: Uicolors.buttonbg,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width *
                                          0.05,
                                      right:
                                          MediaQuery.of(context).size.width *
                                              0.01),
                                  child: Text(widget.gridItems[index],
                                      style: TextStyle(
                                          color: Uicolors.desText,
                                          fontSize: 12,
                                          fontFamily: 'Popins-regular')),
                                )
                              ],
                            ), //    ),
                          ),
                        );
                      })),
            ],
          ),
        ),
      ],
    );
  }
}
