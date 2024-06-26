
![Logo](https://firebasestorage.googleapis.com/v0/b/shaxobcha-1ac32.appspot.com/o/2024-05-19%2017.30.43.jpg?alt=media&token=f6b663d2-e326-4bdf-828f-4850659df78d)
# Fluent Localization

A dynamic Flutter package for seamless localization management.

`Fluent Localization` simplifies the process of adding and managing multiple languages in your Flutter applications. Designed with flexibility in mind, it supports dynamic language switching, runtime translation updates, and provides a streamlined API to enhance the localization experience. Whether you're building a small app or a large scale project, `Fluent Localization` makes it easy to deliver a localized interface that adapts to your users' languages on the fly.
## Getting Started

Welcome to `Fluent Localization`, the dynamic localization solution for Flutter apps. This guide will help you integrate `Fluent Localization` into your project effortlessly.

### Step 1: Add the package to your project

First, you need to add `Fluent Localization` to your project. Insert the following line into your `pubspec.yaml` under the dependencies section:

```yaml
dependencies:
  fluent_localization: ^1.0.0
```
### Step 2: Install the package
After updating your pubspec.yaml, run the following command to install the package:

``` yaml
flutter pub get
```
This command fetches the package and installs it into your project.

### Step 3: Import the package
Add the following import to the Dart files where you want to use the localization features:

```yaml
import 'package:fluent_localization/fluent_localization.dart';
```
# Usage

The `Fluent Localization` package offers comprehensive localization functionalities. Below is a guide on how to utilize all features in your Flutter application.

## Setting Up Locales and Translations

First, define the locales your application will support along with the corresponding translation files. Here's an example of how to set up supported locales and their translations:

```dart
List<SupportedLocale> supportedLocales = [
  SupportedLocale(
    locale: Locale('en', 'US'),
    translations: [
      SupportedTranslation(name: 'home', path: 'assets/locales/en_US/home.json'),
      SupportedTranslation(name: 'settings', path: 'assets/locales/en_US/settings.json'),
    ]
  ),
  SupportedLocale(
    locale: Locale('es', 'ES'),
    translations: [
      SupportedTranslation(name: 'home', path: 'assets/locales/es_ES/home.json'),
      SupportedTranslation(name: 'settings', path: 'assets/locales/es_ES/settings.json'),
    ]
  )
];

```

Ensure your JSON translation files are structured properly and stored at the specified paths.

## Initialization in Main

``` Dart

void main(){
// Initialize the LocalizationManager
  LocalizationManager locManager = LocalizationManager(
    supportedLocales: supportedLocales,
    initialLocale: Locale('en', 'US'),
    initialTranslations: ['home'],
    debugMode: true  // Toggle this based on your environment
  );

  // Run the app and wrap MyApp with LocalizationProvider
  runApp(LocalizationProvider(
    localizationManager: locManager,
    child: MyApp()
  ));
}

```

# Dynamic Translation Management
To dynamically add or remove translations during runtime, you can use methods provided by the LocalizationManager through the context. For instance:

## Adding a Translation
``` Dart
context.addTranslation('settings');
```
This would load the 'settings' translation for the current locale.

## Removing a Translation
``` Dart
context.removeTranslation('settings');
```
This would unload the 'settings' translation from the current locale.

## Changing Locale
Change the application's locale dynamically and reload the necessary translations:

``` Dart
context.changeLocale(Locale('es', 'ES'));
```
This switches the application's locale to Spanish and loads the appropriate translations.

## Translating Strings
Extend the String class to use translations easily in your UI code:
```Dart
Text('home_title'.tr(context))
```


# Features

`Fluent Localization`, developed and supported by Samandar Ahadjonov in collaboration with the Uzbekistan Flutter community, provides a robust and flexible solution for managing localizations in Flutter applications. This package is designed to cater to the specific needs of developers both globally and within the vibrant tech community of Uzbekistan. Here are some of the standout features:

## Community-Driven Development
- **Supported by Uzbekistan's Flutter Community**: This package benefits from the active involvement and support of the local Flutter community, ensuring it meets the high standards and specific needs of developers in Uzbekistan and beyond.
- **Endorsed by Samandar Ahadjonov**: As a prominent member of the Uzbekistan Flutter community, Samandar Ahadjonov’s leadership in the development of this package guarantees quality and relevance to local and international developers.

## Dynamic Localization Management
- **Real-time Language Switching**: Allows users to switch languages seamlessly at runtime without the need for restarting the app, thus enhancing user experience.
- **Dynamic Translation Loading**: Efficiently load and unload translations as needed, ideal for applications with extensive and varied localization demands.

## Developer-Friendly Features
- **Simplified Setup**: Offers a straightforward setup process that reduces initial development overhead, making it easier to integrate into projects.
- **Intuitive API**: Provides a clear and concise API that simplifies the management of translations and locale changes, enhancing code readability and maintainability.

## Performance and Flexibility
- **Efficient Resource Usage**: Designed to minimize the impact on application performance, ensuring that localization does not detract from the user experience.
- **Caching Mechanism**: Implements intelligent caching to expedite translation loading times and reduce operational overhead.

## Comprehensive Language Support
- **Multiple Locale Support**: Easily configure and manage multiple locales, allowing for smooth transitions based on user preferences or system settings.
- **RTL Support**: Full support for Right-to-Left (RTL) languages, ensuring comprehensive usability for languages like Arabic and Hebrew.

## Customizability and Extensibility
- **Flexible Translation Files**: Utilizes JSON files for translations which can be edited and extended easily without altering the core app code.
- **Modular Design**: Architecturally designed to be easily extendable, providing flexibility to adapt or enhance according to project-specific requirements.

Supported and endorsed by the local tech community and led by Samandar Ahadjonov, `Fluent Localization` is your go-to solution for adding efficient, dynamic localization to your Flutter apps.
# Frequently Asked Questions (FAQ)

Here are answers to some of the most common questions about the `Fluent Localization` package:

### 1. What is `Fluent Localization`?
`Fluent Localization` is a Flutter package designed to facilitate the easy management of multiple languages in Flutter applications, offering features like dynamic language switching and runtime translation updates.

### 2. How do I install `Fluent Localization`?
Add `fluent_localization` to your `pubspec.yaml` file under dependencies, and run `flutter pub get` in your terminal.

### 3. How do I use `Fluent Localization` in my project?
After installation, import the package using `import 'package:fluent_localization/fluent_localization.dart';`, define your supported locales and translations, and use the provided APIs to manage translations and locale changes.

### 4. Can I dynamically add translations at runtime?
Yes, `Fluent Localization` supports dynamic loading and unloading of translations at runtime without needing to restart the application.

### 5. How do I switch languages in my app using `Fluent Localization`?
Use the `changeLocale` method provided by the `LocalizationManager` to change the language. This can be triggered by user input or any event in your application.

### 6. Does `Fluent Localization` support Right-to-Left (RTL) languages?
Yes, it includes full support for RTL languages, ensuring that your application can seamlessly handle languages such as Arabic and Hebrew.

### 7. Where should I store my translation files?
Store your translation files in the `assets/locales` directory or any directory you prefer, but ensure to specify the correct path when setting up your `SupportedTranslation` instances.

### 8. What file format is used for translations?
Translations should be stored in JSON format, which allows for a structured and easily manageable way of handling localization data.

### 9. Is `Fluent Localization` supported by the Uzbekistan Flutter community?
Yes, this package is developed with the support and involvement of the Uzbekistan Flutter community, ensuring it meets the specific needs and standards of both local and international developers.

### 10. How can I contribute to the development of `Fluent Localization`?
Contributions are welcome! Check out the repository, submit pull requests, or report issues and feature requests on the GitHub page of the project.

### 11. What is the performance impact of using `Fluent Localization`?
The package is designed to minimize performance impact through efficient caching mechanisms and dynamic loading, ensuring that localization does not negatively affect the app's performance.

### 12. How do I handle pluralizations and gender-specific translations?
`Fluent Localization` currently requires manual handling of pluralizations and gender-specific translations within your JSON files, but we are looking to add more sophisticated linguistic features in future releases.

This FAQ section aims to clear up common questions and help developers get the most out of `Fluent Localization`. For more detailed documentation, refer to the API reference section or the package documentation.

## Support

For support, email samandarahadjonov@gmail.com.


## License

[UMD GROUP](https://t.me/umdgroupuz)

