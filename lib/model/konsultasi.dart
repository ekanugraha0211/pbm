import 'package:flutter/material.dart';

class Konsultasi {
  String pakar;
  String answer;
  String title;
  String description;
  String imageUrl;

  Konsultasi({
    required this.pakar,
    required this.answer,
    required this.title,
    required this.description,
    required this.imageUrl,
  });
}

List<Konsultasi> Konsultasilist = [
  Konsultasi(
    title: "Daun terlihat layu, dan nampak bercak putih",
    pakar: "Prof. Eka Prasetya Nugraha M.p",
    answer:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    imageUrl:
        "https://ketahananpangan.semarangkota.go.id/v3/content/images/Padi.jpg",
  ),
  Konsultasi(
    title: "Padi tidak merunduk  dan berwarna putih",
    pakar: "Prof. Eka Prasetya Nugraha M.p",
    answer:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    description:
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    imageUrl:
        "https://ketahananpangan.semarangkota.go.id/v3/content/images/Padi.jpg",
  ),

];
