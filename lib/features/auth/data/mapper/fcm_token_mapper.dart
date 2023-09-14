import 'package:act_hub_training1/core/extensions/extensions.dart';
import 'package:act_hub_training1/features/auth/data/response/fcm_token_response.dart';
import 'package:act_hub_training1/features/auth/domain/model/fcm_token_model.dart';

extension FcmTokenMapper on FcmTokenResponse {
  FcmTokenModel toDomain() {
    return FcmTokenModel(
      status: status.onNull(),
    );
  }
}
