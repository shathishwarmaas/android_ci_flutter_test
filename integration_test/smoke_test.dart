import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();
  testWidgets('Smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp()); // Create main app
    await tester.pumpAndSettle(); // Finish animations and scheduled microtasks
    await tester.pump(Duration(seconds: 2)); // Render another frame in 2s
  });
}