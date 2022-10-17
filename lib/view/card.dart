import 'package:flutter/material.dart';

class CardCharacter extends StatelessWidget {
  const CardCharacter(
    this._image,
    this._id,
    this._name,
    this._species,
    this._from, {
    Key? key,
  }) : super(key: key);

  final String _image;
  final int _id;
  final String _name;
  final String _species;
  final String _from;

  @override
  Widget build(BuildContext context) => Container(
        width: 400,
        height: 200,
        child: Card(
          color: Colors.white38,
          child: Container(
            margin: EdgeInsets.only(top: 22),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 22),
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(_image),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "id: $_id",
                        style: TextStyle(
                            color: Color(0xff00b0c8),
                            fontSize: 18,
                            fontFamily: 'GetSchwifty'),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "name: $_name",
                        style: TextStyle(
                            color: Color(0xff00b0c8),
                            fontSize: 18,
                            fontFamily: 'GetSchwifty'),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "species: $_species",
                        style: TextStyle(
                            color: Color(0xff00b0c8),
                            fontSize: 18,
                            fontFamily: 'GetSchwifty'),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "from: $_from",
                        style: TextStyle(
                            color: Color(0xff00b0c8),
                            fontSize: 18,
                            fontFamily: 'GetSchwifty'),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
