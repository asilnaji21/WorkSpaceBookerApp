import 'package:act_hub_training1/core/extensions/extensions.dart';
import 'package:act_hub_training1/features/courses/domain/entity/course_rating_entity.dart';
import '../response/course_rating_response.dart';

extension CourseRatingMapper on CourseRatingResponse {
  CourseRatingEntity toDomain() => CourseRatingEntity(
        status: status.onNull(),
      );
}
