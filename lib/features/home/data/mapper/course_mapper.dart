import 'package:act_hub_training1/core/extensions/extensions.dart';
import 'package:act_hub_training1/features/home/data/mapper/attribute_course_mapper.dart';
import '../../domain/model/course_model.dart';
import '../response/course_response.dart';

extension CourseMapper on CourseResponse {
  CourseModel toDomain() {
    return CourseModel(
      id: id.onNull(),
      isRated: isRated.onNull(),
      userRate: userRate.onNull(),
      attributeCourseModel: attributeCourseResponse?.toDomain(),
    );
  }
}
