import 'package:flutter/material.dart';
import 'package:tourism_app/data/model/tourism.dart';

class BodyOfDetailScreenWidget extends StatelessWidget {
  final Tourism tourism;

  const BodyOfDetailScreenWidget({
    super.key,
    required this.tourism,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              tourism.image,
              height: 220,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            tourism.name,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Icon(Icons.location_on_outlined, size: 20),
              const SizedBox(width: 6),
              Expanded(child: Text(tourism.address)),
            ],
          ),
          const SizedBox(height: 16),
          const Text(
            "Description",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 6),
          Text(tourism.description),
          const SizedBox(height: 20),
          Text("Latitude: ${tourism.latitude}"),
          Text("Longitude: ${tourism.longitude}"),
          const SizedBox(height: 20),
          Row(
            children: [
              const Icon(Icons.favorite_border),
              const SizedBox(width: 6),
              Text("${tourism.like} likes"),
            ],
          ),
        ],
      ),
    );
  }
}
