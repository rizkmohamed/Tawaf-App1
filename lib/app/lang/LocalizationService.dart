import 'package:get/get.dart';
import 'package:twaf/app/lang/lang_core.dart';

class LocalizationService extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys =>
      {'fr': fr, 'en': en, 'ur': ur, 'ar': ar};
}
