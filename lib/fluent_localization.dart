/// Exports of the Fluent Localization package.
///
/// This file consolidates exports from various modules of the Fluent Localization
/// package, simplifying the import process for end-users and maintaining a cleaner
/// architecture. By importing this single file, users can access all necessary
/// components required for managing and applying localizations in their Flutter applications.
library;

// Exporting extensions that enhance BuildContext and String with localization capabilities.
export 'package:fluent_localization/src/extansions/extansions.dart';

// Exporting the core manager that handles all localization logic.
export 'package:fluent_localization/src/manager/localization_manager.dart';
// Exporting models that represent the data structures used for localization.
export 'package:fluent_localization/src/models/models.dart';
// Exporting the provider that facilitates access to the LocalizationManager via InheritedWidget.
export 'package:fluent_localization/src/provider/provider.dart';

export 'package:flutter/material.dart';
