import 'dart:convert';

import 'package:flutter/material.dart';

class Note {
  String title;
  String noteText;
  bool isFavorite;
  bool isScheduled;
  bool hasAttachedFile;
  String date;
  Color noteColor;
  Note({
    required this.title,
    required this.noteText,
    required this.isFavorite,
    required this.isScheduled,
    required this.hasAttachedFile,
    required this.date,
    required this.noteColor,
  });

  Note copyWith({
    String? title,
    String? noteText,
    bool? isFavorite,
    bool? isScheduled,
    bool? hasAttachedFile,
    String? date,
    Color? noteColor,
  }) {
    return Note(
      title: title ?? this.title,
      noteText: noteText ?? this.noteText,
      isFavorite: isFavorite ?? this.isFavorite,
      isScheduled: isScheduled ?? this.isScheduled,
      hasAttachedFile: hasAttachedFile ?? this.hasAttachedFile,
      date: date ?? this.date,
      noteColor: noteColor ?? this.noteColor,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'noteText': noteText,
      'isFavorite': isFavorite,
      'isScheduled': isScheduled,
      'hasAttachedFile': hasAttachedFile,
      'date': date,
      'noteColor': noteColor.value,
    };
  }

  factory Note.fromMap(Map<String, dynamic> map) {
    return Note(
      title: map['title'],
      noteText: map['noteText'],
      isFavorite: map['isFavorite'],
      isScheduled: map['isScheduled'],
      hasAttachedFile: map['hasAttachedFile'],
      date: map['date'],
      noteColor: Color(map['noteColor']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Note.fromJson(String source) => Note.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Note(title: $title, noteText: $noteText, isFavorite: $isFavorite, isScheduled: $isScheduled, hasAttachedFile: $hasAttachedFile, date: $date, noteColor: $noteColor)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Note &&
        other.title == title &&
        other.noteText == noteText &&
        other.isFavorite == isFavorite &&
        other.isScheduled == isScheduled &&
        other.hasAttachedFile == hasAttachedFile &&
        other.date == date &&
        other.noteColor == noteColor;
  }

  @override
  int get hashCode {
    return title.hashCode ^
        noteText.hashCode ^
        isFavorite.hashCode ^
        isScheduled.hashCode ^
        hasAttachedFile.hashCode ^
        date.hashCode ^
        noteColor.hashCode;
  }
}
