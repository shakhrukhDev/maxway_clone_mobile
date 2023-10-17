import UIKit
import Flutter
import YandexMapsMobile

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
      YMKMapKit.setLocale("YOUR_LOCALE") // Your preferred language. Not required, defaults to system language
      YMKMapKit.setApiKey("ec4429c0-7c77-4488-9bbd-d21af99d29ea")
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
