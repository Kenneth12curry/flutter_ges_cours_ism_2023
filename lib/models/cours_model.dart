class Cours {
  int? id;
  int? nbreHeureGlobal;
  final String professeurName;
  final String moduleLibelle;
  Cours({
    this.id,
    required this.nbreHeureGlobal,
    required this.professeurName,
    required this.moduleLibelle
  });

  factory Cours.fromMap(Map<String, dynamic> map) {
    return Cours(
      id: map['id']?.toInt(),
      nbreHeureGlobal: map['nbreHeureGlobal'] ?? '',
      professeurName: map['professeurName'] ?? '',
      moduleLibelle: map['moduleLibelle'] ?? '',
    );
  }

  @override
  String toString() => 'Cours(id: $id, nbreHeure: $nbreHeureGlobal, professeurName: $professeurName, moduleLibelle:$moduleLibelle)';
}
