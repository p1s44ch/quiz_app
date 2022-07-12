// To parse this JSON data, do
//
//     final question = questionFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Question questionFromJson(String str) => Question.fromJson(json.decode(str));

String questionToJson(Question data) => json.encode(data.toJson());

class Question {
  Question({
    required this.id,
    required this.quiz,
    required this.question,
    required this.answer,
    required this.score,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  Quiz quiz;
  String question;
  String answer;
  int score;
  DateTime createdAt;
  DateTime updatedAt;

  factory Question.fromJson(Map<String, dynamic> json) => Question(
        id: json["id"],
        quiz: Quiz.fromJson(json["quiz"]),
        question: json["question"],
        answer: json["answer"],
        score: json["score"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "quiz": quiz.toJson(),
        "question": question,
        "answer": answer,
        "score": score,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}

class Quiz {
  Quiz({
    @required this.id,
    @required this.category,
    @required this.name,
    @required this.description,
    @required this.time,
    @required this.createdAt,
    @required this.updatedAt,
  });

  int id;
  Category category;
  String name;
  String description;
  int time;
  DateTime createdAt;
  DateTime updatedAt;

  factory Quiz.fromJson(Map<String, dynamic> json) => Quiz(
        id: json["id"],
        category: Category.fromJson(json["category"]),
        name: json["name"],
        description: json["description"],
        time: json["time"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "category": category.toJson(),
        "name": name,
        "description": description,
        "time": time,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}

class Category {
  Category({
    @required this.id,
    @required this.name,
    @required this.description,
    @required this.createdAt,
    @required this.updatedAt,
  });

  int id;
  String name;
  String description;
  DateTime createdAt;
  DateTime updatedAt;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
