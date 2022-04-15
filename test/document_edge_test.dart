import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

class DocumentEdge {
  static const MethodChannel _channel = MethodChannel('document_edge');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}

void main() {
  const MethodChannel channel = MethodChannel('document_edge');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await DocumentEdge.platformVersion, '42');
  });
}
