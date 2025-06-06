import 'package:flutter/material.dart';
import 'package:konfa/gen/proto/konfa/hub/v1/auth_provider.pb.dart';
import 'package:openid_client/openid_client.dart';
import 'openid.dart';

class OpenIdSettings {
  final String issuer;
  final String clientId;
  final String clientSecret;

  OpenIdSettings({required this.issuer, required this.clientId, required this.clientSecret});
}

class AuthState extends ChangeNotifier {
  Credential? _credential;

  String get providerName => _providerName ?? 'Not Authenticated';
  String? _providerName;

  Future<void> authenticate(AuthProvider authProvider) async {
    // Use the provided OpenID Connect settings if available
    if (authProvider.hasOpenidConnect()) {
      await _authenticateWithOpenId(
        OpenIdSettings(
          issuer: authProvider.openidConnect.issuer,
          clientId: authProvider.openidConnect.clientId,
          clientSecret: authProvider.openidConnect.clientSecret,
        ),
      );

      _providerName = authProvider.name;
    } else {
      throw Exception('Trying to authenticate with unknown provider');
    }

    notifyListeners();
  }

  // Authenticate using provided OpenID Connect settings
  Future<void> _authenticateWithOpenId(OpenIdSettings settings) async {
    final issuer = await Issuer.discover(Uri.parse(settings.issuer));
    final client = Client(issuer, settings.clientId, clientSecret: settings.clientSecret);

    // Use provided scope or default to standard OpenID scopes
    const scopes = ['openid', 'profile', 'email'];

    _credential = await authenticateOIDC(client, scopes: scopes);
  }

  void logout() {
    _credential = null;
    notifyListeners();
  }

  Future<TokenResponse> getToken() async {
    if (_credential == null) {
      throw Exception('User is not authenticated');
    }
    return _credential!.getTokenResponse();
  }
}
