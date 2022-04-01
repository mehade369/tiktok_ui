import 'package:flutter/widgets.dart';

abstract class TikTokIcons {
  TikTokIcons._();

  static const IconData home = IconData(
    0xe800,
    fontFamily: _kFontFam,
  );

  static const IconData inbox = IconData(
    0xe802,
    fontFamily: _kFontFam,
  );

  static const IconData search = IconData(
    0xf002,
    fontFamily: _kFontFam,
  );

  static const IconData share = IconData(
    0xe803,
    fontFamily: _kFontFam,
  );

  static const IconData user = IconData(
    0xe801,
    fontFamily: _kFontFam,
  );

  static const _kFontFam = 'TikTokIcons';
}
