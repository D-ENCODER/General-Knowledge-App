import 'dart:io';

import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdMobService {
  static String get bannerAdUnitId => Platform.isAndroid
      ? 'ca-app-pub-3212778043779043/1663029636'
      : 'ca-app-pub-3212778043779043/1663029636';

// ca-app-pub-3940256099942544/6300978111

  static initialize() {
    // ignore: unnecessary_null_comparison
    if (MobileAds.instance == null) {
      MobileAds.instance.initialize();
    }
  }

  static BannerAd createBannerAd() {
    BannerAd ad = new BannerAd(
        size: AdSize.banner,
        adUnitId: bannerAdUnitId,
        listener: BannerAdListener(
          onAdLoaded: (Ad ad) => print('ad loaded'),
          onAdFailedToLoad: (Ad ad, LoadAdError error) {
            ad.dispose();
          },
          onAdOpened: (Ad ad) => print('ad opened'),
          onAdClosed: (Ad ad) => print('ad closed'),
        ),
        request: AdRequest());
    return ad;
  }
}
