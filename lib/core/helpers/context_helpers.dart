import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension BuildContextHelper on BuildContext {
  AppLocalizations? get localizations {
    return AppLocalizations.of(this);
  }
}
