import 'dart:convert';

class NotesModel {
  String title;
  String noteText;
  DateTime date;
  String attachFile;
  bool isFavorite;
  NotesModel({
    required this.title,
    required this.noteText,
    required this.date,
    required this.attachFile,
    required this.isFavorite,
  });

  NotesModel copyWith({
    String? title,
    String? noteText,
    DateTime? date,
    String? attachFile,
    bool? isFavorite,
  }) {
    return NotesModel(
      title: title ?? this.title,
      noteText: noteText ?? this.noteText,
      date: date ?? this.date,
      attachFile: attachFile ?? this.attachFile,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'noteText': noteText,
      'date': date.millisecondsSinceEpoch,
      'attachFile': attachFile,
      'isFavorite': isFavorite,
    };
  }

  factory NotesModel.fromMap(Map<String, dynamic> map) {
    return NotesModel(
      title: map['title'],
      noteText: map['noteText'],
      date: DateTime.fromMillisecondsSinceEpoch(map['date']),
      attachFile: map['attachFile'],
      isFavorite: map['isFavorite'],
    );
  }

  String toJson() => json.encode(toMap());

  factory NotesModel.fromJson(String source) =>
      NotesModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'NotesModel(title: $title, noteText: $noteText, date: $date, attachFile: $attachFile, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is NotesModel &&
        other.title == title &&
        other.noteText == noteText &&
        other.date == date &&
        other.attachFile == attachFile &&
        other.isFavorite == isFavorite;
  }

  @override
  int get hashCode {
    return title.hashCode ^
        noteText.hashCode ^
        date.hashCode ^
        attachFile.hashCode ^
        isFavorite.hashCode;
  }
}
