abstract class AppRoutesPaths {

  static const splash = '/';

  {{#use_profile}}
  static const profile = '/profile';
  {{/use_profile}}

  {{#use_settings}}
  static const settings = '/settings';
  {{/use_settings}}

  static const privacyPolicy = '/privacy-policy';
  static const termsOfUse = '/terms-of-use';
  static const noConnection = '/no-connection';
}
