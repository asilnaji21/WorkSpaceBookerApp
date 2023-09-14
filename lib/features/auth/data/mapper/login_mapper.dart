import 'package:act_hub_training1/core/extensions/extensions.dart';
import 'package:act_hub_training1/features/auth/data/response/login_response.dart';
import '../../domain/model/login.dart';

extension LoginMapper on LoginResponse {
  toDomain() {
    return Login(token: token.onNull());
  }
}