import 'dart:ui';

import 'package:bruno_fork/src/constants/brn_asset_constants.dart';
import 'package:bruno_fork/src/theme/img/brn_theme_img_utils.dart';
import 'package:bruno_fork/src/utils/brn_tools.dart';
import 'package:flutter/material.dart';

class BrnThemeImg {
  BrnThemeImgUtils _defaultbruno_forkImg;

  static BrnThemeImg _instance;

  BrnThemeImg._(BrnThemeImgUtils bruno_forkImgUtils) {
    this._defaultbruno_forkImg = bruno_forkImgUtils ?? BrnDefaultThemeImgUtil();
  }

  factory BrnThemeImg.register({BrnThemeImgUtils bruno_forkImgUtils}) {
    _instance = BrnThemeImg._(bruno_forkImgUtils);
    return _instance;
  }

  static BrnThemeImg get instance {
    if (_instance == null) {
      BrnThemeImg.register();
    }
    return _instance;
  }

  Image get ARROW_REFRESH_UP =>
      _defaultbruno_forkImg?.getARROW_REFRESH_UP() ??
      bruno_forkTools.getAssetImage(BrnAsset.refreshArrowUp);

  Image get ARROW_REFRESH_DOWN =>
      _defaultbruno_forkImg?.getARROW_REFRESH_DOWN() ??
      bruno_forkTools.getAssetImage(BrnAsset.refreshArrowDown);

  Image get CHECKED_STATUS =>
      _defaultbruno_forkImg?.getCHECKED_STATUS() ??
      bruno_forkTools.getAssetImage(BrnAsset.SELECT_CHECKED_STATUS);

  Image get STEP_ICON {
    return _defaultbruno_forkImg?.getStepIcon() ?? bruno_forkTools.getAssetImage(BrnAsset.stepTitle);
  }
}

///默认link绿
class BrnDefaultThemeImgUtil extends BrnThemeImgUtils {
  @override
  Image getARROW_REFRESH_UP() {
    return bruno_forkTools.getAssetImageWithBandColor(BrnAsset.refreshArrowUp);
  }

  @override
  Image getARROW_REFRESH_DOWN() {
    return bruno_forkTools.getAssetImageWithBandColor(BrnAsset.refreshArrowDown);
  }

  @override
  Image getCHECKED_STATUS() {
    return bruno_forkTools.getAssetImageWithBandColor(BrnAsset.SELECT_CHECKED_STATUS);
  }

  @override
  Image getStepIcon() {
    return bruno_forkTools.getAssetImageWithBandColor(BrnAsset.stepTitle);
  }
}
