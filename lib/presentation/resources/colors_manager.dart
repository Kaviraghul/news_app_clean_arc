import 'package:flutter/animation.dart';

class ColorsManager {
  static const Color primaryColor = Color(0xFFa74343);
  static const Color black =  Color(0xFF212221);
  static const Color halfWhite =  Color(0xFFf2f4f4);
}


extension HexColor on Color{
  static Color fromHex(String hexaColorString){
    hexaColorString = hexaColorString.replaceAll("#", "");
    if(hexaColorString.length == 6){
      hexaColorString = "0xFF$hexaColorString";
    }else {
      hexaColorString = "0x$hexaColorString";
    }

    return Color(int.parse(hexaColorString));
  }
} 