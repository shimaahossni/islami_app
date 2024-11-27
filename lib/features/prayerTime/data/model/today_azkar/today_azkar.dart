import 'array.dart';

class TodayAzkar {
  int? id;
  String? category;
  String? audio;
  String? filename;
  List<Array>? array;

  TodayAzkar({
    this.id,
    this.category,
    this.audio,
    this.filename,
    this.array,
  });

  factory TodayAzkar.fromJson(Map<String, dynamic> json) => TodayAzkar(
        id: json['id'] as int?,
        category: json['category'] as String?,
        audio: json['audio'] as String?,
        filename: json['filename'] as String?,
        array: (json['array'] as List<dynamic>?)
            ?.map((e) => Array.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'category': category,
        'audio': audio,
        'filename': filename,
        'array': array?.map((e) => e.toJson()).toList(),
      };
}
