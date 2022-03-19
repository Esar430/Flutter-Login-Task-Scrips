import 'package:bloc_login/data/constants/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:bloc_login/main.dart' as bloc_login_test;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized(); // NEW

  testWidgets("web test example", (WidgetTester tester) async {

    bloc_login_test.main();
    await tester.pumpAndSettle(const Duration(seconds: 5));

    //welcome page
    await tester.tap(find.byKey(const Key(welcomeRegisterButtonKey)));
    await tester.pumpAndSettle(const Duration(seconds: 2));

    //Sign up
    await tester.enterText(find.byKey(const Key(registerEmailTextFieldKey)), "abc@gmail.com");
    await tester.pumpAndSettle(const Duration(seconds: 2));
    await tester.enterText(find.byKey(const Key(registerPWDTextFieldKey)), "12345678");
    await tester.pumpAndSettle(const Duration(seconds: 2));
    await tester.dragUntilVisible(
      find.byKey(const ValueKey(registerConfirmPWDTextFieldKey)), // what you want to find
      find.byKey(const ValueKey(registerScrollViewKey)), // widget you want to scroll
      const Offset(-50, 0), // delta to move
    );
    await tester.enterText(find.byKey(const Key(registerConfirmPWDTextFieldKey)), "12345678");
    await tester.pumpAndSettle(const Duration(seconds: 2));
    await tester.dragUntilVisible(
      find.byKey(const ValueKey(registerSubmitBtnKey)), // what you want to find
      find.byKey(const ValueKey(registerScrollViewKey)), // widget you want to scroll
      const Offset(-50, 0), // delta to move
    );
    await tester.tap(find.byKey(const Key(registerSubmitBtnKey)));
    await tester.pumpAndSettle(const Duration(seconds: 2));

    // login forgot text
    await tester.dragUntilVisible(
      find.byKey(const ValueKey(loginFGTPWDTextKey)), // what you want to find
      find.byKey(const ValueKey(loginScrollViewKey)), // widget you want to scroll
      const Offset(-100, 0), // delta to move
    );
    await tester.tap(find.byKey(const Key(loginFGTPWDTextKey)));
    await tester.pumpAndSettle(const Duration(seconds: 2));

    //  reset password
    await tester.enterText(find.byKey(const Key(resetPWDTextFieldKey)), "1234567890");
    await tester.pumpAndSettle(const Duration(seconds: 2));
    await tester.dragUntilVisible(
      find.byKey(const ValueKey(resetConfirmPWDTextFieldKey)), // what you want to find
      find.byKey(const ValueKey(resetScrollViewKey)), // widget you want to scroll
      const Offset(-50, 0), // delta to move
    );
    await tester.enterText(find.byKey(const Key(resetConfirmPWDTextFieldKey)), "1234567890");
    await tester.pumpAndSettle(const Duration(seconds: 2));
    await tester.dragUntilVisible(
      find.byKey(const ValueKey(resetSubmitBtnKey)), // what you want to find
      find.byKey(const ValueKey(resetScrollViewKey)), // widget you want to scroll
      const Offset(-100, 0), // delta to move
    );
    await tester.tap(find.byKey(const Key(resetSubmitBtnKey)));
    await tester.pumpAndSettle(const Duration(seconds: 2));

    //login
    await tester.enterText(find.byKey(const Key(loginEmailTextFieldKey)), "abc@gmail.com");
    await tester.pumpAndSettle(const Duration(seconds: 2));
    await tester.dragUntilVisible(
      find.byKey(const ValueKey(loginPWDTextFieldKey)), // what you want to find
      find.byKey(const ValueKey(loginScrollViewKey)), // widget you want to scroll
      const Offset(-100, 0), // delta to move
    );
    await tester.enterText(find.byKey(const Key(loginPWDTextFieldKey)), "1234567890");
    await tester.pumpAndSettle(const Duration(seconds: 2));
    await tester.dragUntilVisible(
      find.byKey(const ValueKey(loginSubmitBtnKey)), // what you want to find
      find.byKey(const ValueKey(loginScrollViewKey)), // widget you want to scroll
      const Offset(-100, 0), // delta to move
    );
    await tester.tap(find.byKey(const Key(loginSubmitBtnKey)));
    await tester.pumpAndSettle(const Duration(seconds: 5));

  });
}