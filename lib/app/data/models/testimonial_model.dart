class TestimonialModel {
  final String id;
  final String name;
  final String review;
  final String imageUrl; // Path ke aset foto user
  final double rating;

  TestimonialModel({
    required this.id,
    required this.name,
    required this.review,
    required this.imageUrl,
    required this.rating,
  });
}
