import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class Product with ChangeNotifier {
  final String? id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  bool isFavorite;

  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.imageUrl,
    required this.description,
    this.isFavorite = false,
  });

  void toggleFavoritesStatus() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
