import 'package:getxarchitecture/app/business/models/server_response.dart';
import 'package:getxarchitecture/app/business/services/security_service.dart';

class SecurityRepository {
  SecurityService get _securityService {
    return SecurityService();
  }

  Future<ServerResponse> login({
    required String email,
    required String password,
  }) async {
    final response = await _securityService.login(
      email: email,
      password: password,
    );

    return response;
  }
}
