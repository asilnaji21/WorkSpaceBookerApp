import 'package:act_hub_training1/features/courses/data/mapper/course_details_data_mapper.dart';
import 'package:act_hub_training1/features/courses/data/response/course_details_response.dart';
import 'package:act_hub_training1/features/courses/domain/entity/course_details_entity.dart';

extension CourseDetailsMapper on CourseDetailsResponse {
  CourseDetailsEntity toDomain() {
    return CourseDetailsEntity(
      courseDetailsDataEntity: courseDetailsDataResponse?.toDomain(),
    );
  }
}
