import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

import '../pages/home_page.dart';

class AlertBox extends AndWithWorld<FlutterWorld> {
  AlertBox()
      : super(StepDefinitionConfiguration()..timeout = Duration(seconds: 10));

  @override
  Future<void> executeStep() async {
    HomePage homePage = HomePage(world.driver);
    expect(await homePage.alertBoxPresent(),"Alert Text Box 0");
  }

  @override
  RegExp get pattern => RegExp(r"I see alert message box");
}