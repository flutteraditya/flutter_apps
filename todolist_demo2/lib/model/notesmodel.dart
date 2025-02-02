class NotesModelClass {
  int? notesId;
  String title;
  String description;
  String date;
  bool done = false;

  NotesModelClass({
    this.notesId,
    required this.title,
    required this.description,
    required this.date,
  });

  Map<String, dynamic> retMap() {
    return {
      "title": title,
      "describe": description,
      "date": date,
    };
  }

  Map<String, dynamic> updateMap() {
    return {
      "notesId": notesId,
      "title": title,
      "describe": description,
      "date": date,
    };
  }

  @override
  String toString() {
    return "{$notesId $title $description $date}";
  }
}