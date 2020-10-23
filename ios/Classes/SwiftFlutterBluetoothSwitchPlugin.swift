import Flutter
import UIKit

public class SwiftFlutterBluetoothSwitchPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_bluetooth_switch", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterBluetoothSwitchPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
