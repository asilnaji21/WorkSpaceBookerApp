import 'package:act_hub_training1/core/extensions/extensions.dart';
import 'package:act_hub_training1/features/courses/domain/entity/course_subscription_entity.dart';
import '../response/course_subscription_response.dart';

extension CourseSubscriptionMapper on CourseSubscriptionResponse {
  CourseSubscriptionEntity toDomain() => CourseSubscriptionEntity(
        status: status.onNull(),
      );
}
