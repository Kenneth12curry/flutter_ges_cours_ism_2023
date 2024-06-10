

class Absences {
  int? id;
   final String date;
  final String etudiant;
  final String sessionCours;
 
  Absences({
      this.id,
      required this.date,
      required this.etudiant,
      required this.sessionCours

  });
      
  factory Absences.fromMap(Map<String, dynamic> map) {
    return Absences(
      id: map['id']?.toInt(),
      date: map['date'] ?? '',
      etudiant: map['etudiant'] ?? '',
      sessionCours: map['sessionCours'] ?? '',
    );
  }

  @override
  String toString() =>
      'Absences(id: $id, date: $date, etudiant: $etudiant, sessioncours:$sessionCours';
}
