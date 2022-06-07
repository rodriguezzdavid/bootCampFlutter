import 'package:get/get.dart';
import 'package:getxarchitecture/app/business/models/app_exceptions.dart';
import 'package:getxarchitecture/app/utils/helpers/dialog_helper.dart';
import 'package:getxarchitecture/app/utils/helpers/loading.dart';

class BaseController extends GetxController {
  void handleError(dynamic error) {
    Loading().hideLoading();
    if (error is BadRequestException) {
      DialogHelper.showErrorSnackbar(error.message);
      return;
    }
    if (error is FetchDataException) {
      DialogHelper.showErrorSnackbar(error.message);
      return;
    }
    if (error is InvalidAuthException) {
      DialogHelper.showErrorSnackbar(error.message);
      return;
    }
    if (error is ApiNotRespondingException) {
      DialogHelper.showErrorSnackbar(error.message);
      return;
    }

    print("handleError:Exception");
    print(error.toString());
    DialogHelper.showErrorSnackbar(error.toString());
  }
}