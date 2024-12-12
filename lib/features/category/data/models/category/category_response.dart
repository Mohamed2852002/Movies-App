import 'category_model.dart';

class CategoryResponse {
  List<CategoryModel>? genres;

  CategoryResponse({this.genres});

  factory CategoryResponse.fromJson(Map<String, dynamic> json) =>
      CategoryResponse(
        genres: (json['genres'] as List<dynamic>?)
            ?.map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'genres': genres?.map((e) => e.toJson()).toList(),
      };
}
