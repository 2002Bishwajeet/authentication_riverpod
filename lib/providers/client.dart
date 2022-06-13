import 'package:appwrite/appwrite.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final clientProvider = Provider<Client>((ref) {
  return Client()
      .setEndpoint(
          'http://8080-2002bishwajeet-appwrite-vb3sqescw8n.ws-us47.gitpod.io/v1') // Your Appwrite Endpoint
      .setProject('test') // Your project ID
      .setSelfSigned(
          status:
              true); // For self signed certificates, only use for development
});
