

import '../../app_element/header.dart';

Text text({String? text, maxLine, textAlign, overflow,TextStyle? style}) {
  return Text(
    text!,
    style: style,
    textAlign: textAlign,
    overflow:overflow ?? TextOverflow.ellipsis,
    maxLines: maxLine,
  );
}

TextStyle bodyText20wBold({double? spacing, required Color color}) {
  return TextStyle(
    fontSize: 20,
    height: spacing,
    color: color,
    fontWeight:FontWeight.bold
  );
}
TextStyle bodyText20normal({double? spacing, required Color color}) {
  return TextStyle(
      fontSize: 20,
      height: spacing,
      color: color,
  );
}
TextStyle bodyText14w600({required Color color, double? spacing}) {
  return TextStyle(
      height: spacing, fontSize: 14, color: color, fontWeight: FontWeight.w600);
}
