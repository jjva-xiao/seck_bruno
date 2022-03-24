import 'package:bruno_fork/src/theme/brn_theme_configurator.dart';
import 'package:bruno_fork/src/theme/configs/brn_all_config.dart';
import 'package:bruno_fork/src/theme/img/brn_theme_default_utils.dart';
import 'package:bruno_fork/src/theme/img/brn_theme_img_utils.dart';

///bruno_fork初始化

class BrnInitializer {
  /// 手动注册时，默认注册渠道是 GLOBAL_CONFIG_ID
  static register(
      {BrnAllThemeConfig allThemeConfig,
      String configId = BrnThemeConfigurator.GLOBAL_CONFIG_ID,
      BrnThemeImgUtils bruno_forkImgUtils}) {
    /// 配置图片
    if (bruno_forkImgUtils != null) {
      BrnThemeImg.register(bruno_forkImgUtils: bruno_forkImgUtils);
    }
    /// 配置主题定制
    BrnThemeConfigurator.instance.register(allThemeConfig, configId: configId);
  }
}
