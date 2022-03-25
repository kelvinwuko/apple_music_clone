import 'package:flutter/material.dart';
import 'package:apple_music_clone/assets//app_constraint.dart';

///Application text style
const TextStyle fontFamily =
TextStyle(fontFamily: appFontFamily, inherit: true);

const TextStyle thinWeight =
TextStyle(fontWeight: FontWeight.w100, inherit: true);
const TextStyle lightWeight =
TextStyle(fontWeight: FontWeight.w300, inherit: true);
const TextStyle regularWeight =
TextStyle(fontWeight: FontWeight.w400, inherit: true);
const TextStyle mediumWeight =
TextStyle(fontWeight: FontWeight.w500, inherit: true);
const TextStyle boldWeight =
TextStyle(fontWeight: FontWeight.w700, inherit: true);
const TextStyle blackWeight =
TextStyle(fontWeight: FontWeight.w900, inherit: true);

const TextStyle regularStyle =
TextStyle(fontStyle: FontStyle.normal, inherit: true);
const TextStyle italicStyle =
TextStyle(fontStyle: FontStyle.italic, inherit: true);
const TextStyle underLineStyle =
TextStyle(decoration: TextDecoration.underline, inherit: true);

///TextSize style only
const TextStyle titleText = TextStyle(
    fontFamily: appFontFamily, fontSize: h4TextSize, inherit: true, color: Colors.white, fontWeight: FontWeight.w600);

const TextStyle subtitleText = TextStyle(
    fontFamily: appFontFamily, fontSize: h6TextSize, inherit: true, color: Colors.white, fontWeight: FontWeight.w700);

const TextStyle smallText = TextStyle(
    fontFamily: appFontFamily, fontSize: h7TextSize, inherit: true, color: Colors.white);

const TextStyle smallSubtitleText = TextStyle(
    fontFamily: appFontFamily, fontSize: h8TextSize, inherit: true, color: Colors.grey);

const TextStyle h1 =
TextStyle(fontFamily: appFontFamily, fontSize: h1TextSize, inherit: true);
const TextStyle h2 =
TextStyle(fontFamily: appFontFamily, fontSize: h2TextSize, inherit: true);
const TextStyle h3 =
TextStyle(fontFamily: appFontFamily, fontSize: h3TextSize, inherit: true);
const TextStyle h4 =
TextStyle(fontFamily: appFontFamily, fontSize: h4TextSize, inherit: true);
const TextStyle h5 =
TextStyle(fontFamily: appFontFamily, fontSize: h5TextSize, inherit: true);
const TextStyle h6 =
TextStyle(fontFamily: appFontFamily, fontSize: h6TextSize, inherit: true);
const TextStyle s1 = TextStyle(
    fontFamily: appFontFamily, fontSize: subtitle1TextSize, inherit: true);
const TextStyle s2 = TextStyle(
    fontFamily: appFontFamily, fontSize: subtitle2TextSize, inherit: true);
const TextStyle b1 = TextStyle(
    fontFamily: appFontFamily, fontSize: body1TextSize, inherit: true);
const TextStyle b2 = TextStyle(
    fontFamily: appFontFamily, fontSize: body2TextSize, inherit: true);

///TextSize style with FontWeight(Light & Bold)
const TextStyle light = TextStyle(
    fontFamily: appFontFamily,
    fontSize: captionTextSize,
    fontWeight: FontWeight.w300,
    inherit: true);
const TextStyle captionLight = TextStyle(
    fontFamily: appFontFamily,
    fontSize: captionTextSize,
    fontWeight: FontWeight.w300,
    inherit: true);
const TextStyle buttonLight = TextStyle(
    fontFamily: appFontFamily,
    fontSize: buttonTextSize,
    fontWeight: FontWeight.w300,
    inherit: true);
const TextStyle overLineLight = TextStyle(
    fontFamily: appFontFamily,
    fontSize: overLineTextSize,
    fontWeight: FontWeight.w300,
    inherit: true);
const TextStyle h1Light = TextStyle(
    fontFamily: appFontFamily,
    fontSize: h1TextSize,
    fontWeight: FontWeight.w300,
    inherit: true);
const TextStyle h2Light = TextStyle(
    fontFamily: appFontFamily,
    fontSize: h2TextSize,
    fontWeight: FontWeight.w300,
    inherit: true);
const TextStyle h3Light = TextStyle(
    fontFamily: appFontFamily,
    fontSize: h3TextSize,
    fontWeight: FontWeight.w300,
    inherit: true);
const TextStyle h4Light = TextStyle(
    fontFamily: appFontFamily,
    fontSize: h4TextSize,
    fontWeight: FontWeight.w300,
    inherit: true);
const TextStyle h5Light = TextStyle(
    fontFamily: appFontFamily,
    fontSize: h5TextSize,
    fontWeight: FontWeight.w300,
    inherit: true);
const TextStyle h6Light = TextStyle(
    fontFamily: appFontFamily,
    fontSize: h6TextSize,
    fontWeight: FontWeight.w300,
    inherit: true);
const TextStyle s1Light = TextStyle(
    fontFamily: appFontFamily,
    fontSize: subtitle1TextSize,
    fontWeight: FontWeight.w300,
    inherit: true);
const TextStyle s2Light = TextStyle(
    fontFamily: appFontFamily,
    fontSize: subtitle2TextSize,
    fontWeight: FontWeight.w300,
    inherit: true);
const TextStyle b1Light = TextStyle(
    fontFamily: appFontFamily,
    fontSize: body1TextSize,
    fontWeight: FontWeight.w300,
    inherit: true);
const TextStyle b2Light = TextStyle(
    fontFamily: appFontFamily,
    fontSize: body2TextSize,
    fontWeight: FontWeight.w300,
    inherit: true);

const TextStyle bold = TextStyle(
    fontFamily: appFontFamily,
    fontSize: captionTextSize,
    fontWeight: FontWeight.w700,
    inherit: true);
const TextStyle captionBold = TextStyle(
    fontFamily: appFontFamily,
    fontSize: captionTextSize,
    fontWeight: FontWeight.w700,
    inherit: true);
const TextStyle buttonBold = TextStyle(
    fontFamily: appFontFamily,
    fontSize: buttonTextSize,
    fontWeight: FontWeight.w700,
    inherit: true);
const TextStyle overLineBold = TextStyle(
    fontFamily: appFontFamily,
    fontSize: overLineTextSize,
    fontWeight: FontWeight.w700,
    inherit: true);
const TextStyle h1Bold = TextStyle(
    fontFamily: appFontFamily,
    fontSize: h1TextSize,
    fontWeight: FontWeight.w700,
    inherit: true);
const TextStyle h2Bold = TextStyle(
    fontFamily: appFontFamily,
    fontSize: h2TextSize,
    fontWeight: FontWeight.w700,
    inherit: true);
const TextStyle h3Bold = TextStyle(
    fontFamily: appFontFamily,
    fontSize: h3TextSize,
    fontWeight: FontWeight.w700,
    inherit: true);
const TextStyle h4Bold = TextStyle(
    fontFamily: appFontFamily,
    fontSize: h4TextSize,
    fontWeight: FontWeight.w700,
    inherit: true);
const TextStyle h5Bold = TextStyle(
    fontFamily: appFontFamily,
    fontSize: h5TextSize,
    fontWeight: FontWeight.w700,
    inherit: true);
const TextStyle h6Bold = TextStyle(
    fontFamily: appFontFamily,
    fontSize: h6TextSize,
    fontWeight: FontWeight.w700,
    inherit: true);
const TextStyle s1Bold = TextStyle(
    fontFamily: appFontFamily,
    fontSize: subtitle1TextSize,
    fontWeight: FontWeight.w700,
    inherit: true);
const TextStyle s2Bold = TextStyle(
    fontFamily: appFontFamily,
    fontSize: subtitle2TextSize,
    fontWeight: FontWeight.w700,
    inherit: true);
const TextStyle b1Bold = TextStyle(
    fontFamily: appFontFamily,
    fontSize: body1TextSize,
    fontWeight: FontWeight.w700,
    inherit: true);
const TextStyle b2Bold = TextStyle(
    fontFamily: appFontFamily,
    fontSize: body2TextSize,
    fontWeight: FontWeight.w700,
    inherit: true);

///TextSize style with FontStyle(Regular & Italic)
const TextStyle reg = TextStyle(
    fontFamily: appFontFamily,
    fontSize: captionTextSize,
    fontStyle: FontStyle.normal,
    inherit: true);
const TextStyle captionReg = TextStyle(
    fontFamily: appFontFamily,
    fontSize: captionTextSize,
    fontStyle: FontStyle.normal,
    inherit: true);
const TextStyle buttonReg = TextStyle(
    fontFamily: appFontFamily,
    fontSize: buttonTextSize,
    fontStyle: FontStyle.normal,
    inherit: true);
const TextStyle overLineReg = TextStyle(
    fontFamily: appFontFamily,
    fontSize: overLineTextSize,
    fontStyle: FontStyle.normal,
    inherit: true);
const TextStyle h1Reg = TextStyle(
    fontFamily: appFontFamily,
    fontSize: h1TextSize,
    fontStyle: FontStyle.normal,
    inherit: true);
const TextStyle h2Reg = TextStyle(
    fontFamily: appFontFamily,
    fontSize: h2TextSize,
    fontStyle: FontStyle.normal,
    inherit: true);
const TextStyle h3Reg = TextStyle(
    fontFamily: appFontFamily,
    fontSize: h3TextSize,
    fontStyle: FontStyle.normal,
    inherit: true);
const TextStyle h4Reg = TextStyle(
    fontFamily: appFontFamily,
    fontSize: h4TextSize,
    fontStyle: FontStyle.normal,
    inherit: true);
const TextStyle h5Reg = TextStyle(
    fontFamily: appFontFamily,
    fontSize: h5TextSize,
    fontStyle: FontStyle.normal,
    inherit: true);
const TextStyle h6Reg = TextStyle(
    fontFamily: appFontFamily,
    fontSize: h6TextSize,
    fontStyle: FontStyle.normal,
    inherit: true);
const TextStyle s1Reg = TextStyle(
    fontFamily: appFontFamily,
    fontSize: subtitle1TextSize,
    fontStyle: FontStyle.normal,
    inherit: true);
const TextStyle s2Reg = TextStyle(
    fontFamily: appFontFamily,
    fontSize: subtitle2TextSize,
    fontStyle: FontStyle.normal,
    inherit: true);
const TextStyle b1Reg = TextStyle(
    fontFamily: appFontFamily,
    fontSize: body1TextSize,
    fontStyle: FontStyle.normal,
    inherit: true);
const TextStyle b2Reg = TextStyle(
    fontFamily: appFontFamily,
    fontSize: body2TextSize,
    fontStyle: FontStyle.normal,
    inherit: true);

const TextStyle italic = TextStyle(
    fontFamily: appFontFamily,
    fontSize: captionTextSize,
    fontStyle: FontStyle.italic,
    inherit: true);
const TextStyle captionItalic = TextStyle(
    fontFamily: appFontFamily,
    fontSize: captionTextSize,
    fontStyle: FontStyle.italic,
    inherit: true);
const TextStyle buttonItalic = TextStyle(
    fontFamily: appFontFamily,
    fontSize: buttonTextSize,
    fontStyle: FontStyle.italic,
    inherit: true);
const TextStyle overLineItalic = TextStyle(
    fontFamily: appFontFamily,
    fontSize: overLineTextSize,
    fontStyle: FontStyle.italic,
    inherit: true);
const TextStyle h1Italic = TextStyle(
    fontFamily: appFontFamily,
    fontSize: h1TextSize,
    fontStyle: FontStyle.italic,
    inherit: true);
const TextStyle h2Italic = TextStyle(
    fontFamily: appFontFamily,
    fontSize: h2TextSize,
    fontStyle: FontStyle.italic,
    inherit: true);
const TextStyle h3Italic = TextStyle(
    fontFamily: appFontFamily,
    fontSize: h3TextSize,
    fontStyle: FontStyle.italic,
    inherit: true);
const TextStyle h4Italic = TextStyle(
    fontFamily: appFontFamily,
    fontSize: h4TextSize,
    fontStyle: FontStyle.italic,
    inherit: true);
const TextStyle h5Italic = TextStyle(
    fontFamily: appFontFamily,
    fontSize: h5TextSize,
    fontStyle: FontStyle.italic,
    inherit: true);
const TextStyle h6Italic = TextStyle(
    fontFamily: appFontFamily,
    fontSize: h6TextSize,
    fontStyle: FontStyle.italic,
    inherit: true);
const TextStyle s1Italic = TextStyle(
    fontFamily: appFontFamily,
    fontSize: subtitle1TextSize,
    fontStyle: FontStyle.italic,
    inherit: true);
const TextStyle s2Italic = TextStyle(
    fontFamily: appFontFamily,
    fontSize: subtitle2TextSize,
    fontStyle: FontStyle.italic,
    inherit: true);
const TextStyle b1Italic = TextStyle(
    fontFamily: appFontFamily,
    fontSize: body1TextSize,
    fontStyle: FontStyle.italic,
    inherit: true);
const TextStyle b2Italic = TextStyle(
    fontFamily: appFontFamily,
    fontSize: body2TextSize,
    fontStyle: FontStyle.italic,
    inherit: true);

///TextSize style with TextDecoration(UnderLine)
const TextStyle underLine = TextStyle(
    fontFamily: appFontFamily,
    fontSize: captionTextSize,
    decoration: TextDecoration.underline,
    inherit: true);
const TextStyle captionUnderLine = TextStyle(
    fontFamily: appFontFamily,
    fontSize: captionTextSize,
    decoration: TextDecoration.underline,
    inherit: true);
const TextStyle buttonUnderLine = TextStyle(
    fontFamily: appFontFamily,
    fontSize: buttonTextSize,
    decoration: TextDecoration.underline,
    inherit: true);
const TextStyle overLineUnderLine = TextStyle(
    fontFamily: appFontFamily,
    fontSize: overLineTextSize,
    decoration: TextDecoration.underline,
    inherit: true);
const TextStyle h1UnderLine = TextStyle(
    fontFamily: appFontFamily,
    fontSize: h1TextSize,
    decoration: TextDecoration.underline,
    inherit: true);
const TextStyle h2UnderLine = TextStyle(
    fontFamily: appFontFamily,
    fontSize: h2TextSize,
    decoration: TextDecoration.underline,
    inherit: true);
const TextStyle h3UnderLine = TextStyle(
    fontFamily: appFontFamily,
    fontSize: h3TextSize,
    decoration: TextDecoration.underline,
    inherit: true);
const TextStyle h4UnderLine = TextStyle(
    fontFamily: appFontFamily,
    fontSize: h4TextSize,
    decoration: TextDecoration.underline,
    inherit: true);
const TextStyle h5UnderLine = TextStyle(
    fontFamily: appFontFamily,
    fontSize: h5TextSize,
    decoration: TextDecoration.underline,
    inherit: true);
const TextStyle h6UnderLine = TextStyle(
    fontFamily: appFontFamily,
    fontSize: h6TextSize,
    decoration: TextDecoration.underline,
    inherit: true);
const TextStyle s1UnderLine = TextStyle(
    fontFamily: appFontFamily,
    fontSize: subtitle1TextSize,
    decoration: TextDecoration.underline,
    inherit: true);
const TextStyle s2UnderLine = TextStyle(
    fontFamily: appFontFamily,
    fontSize: subtitle2TextSize,
    decoration: TextDecoration.underline,
    inherit: true);
const TextStyle b1UnderLine = TextStyle(
    fontFamily: appFontFamily,
    fontSize: body1TextSize,
    decoration: TextDecoration.underline,
    inherit: true);
const TextStyle b2UnderLine = TextStyle(
    fontFamily: appFontFamily,
    fontSize: body2TextSize,
    decoration: TextDecoration.underline,
    inherit: true);
