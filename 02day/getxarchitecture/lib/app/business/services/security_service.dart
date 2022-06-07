import 'package:getxarchitecture/app/business/models/server_response.dart';
import 'package:getxarchitecture/app/business/services/base_service.dart';

class SecurityService extends BaseService {
  Future<ServerResponse>login({
    required String email,
    required String password,
  }) async {
    const loginPath = "/api/security/login";

    postBody = {
      "username": email,
      "password": password,
    };

    return await postGenericRequest(
      url: domainUrl,
      path: loginPath,
      requestBody: postBody,
    );
  }
}
