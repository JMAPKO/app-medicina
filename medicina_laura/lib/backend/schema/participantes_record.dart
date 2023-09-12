import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ParticipantesRecord extends FirestoreRecord {
  ParticipantesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre-alumno" field.
  String? _nombreAlumno;
  String get nombreAlumno => _nombreAlumno ?? '';
  bool hasNombreAlumno() => _nombreAlumno != null;

  // "graduacion-alumno" field.
  String? _graduacionAlumno;
  String get graduacionAlumno => _graduacionAlumno ?? '';
  bool hasGraduacionAlumno() => _graduacionAlumno != null;

  // "abono" field.
  bool? _abono;
  bool get abono => _abono ?? false;
  bool hasAbono() => _abono != null;

  // "orientador-Alumno" field.
  String? _orientadorAlumno;
  String get orientadorAlumno => _orientadorAlumno ?? '';
  bool hasOrientadorAlumno() => _orientadorAlumno != null;

  // "foto-alumno" field.
  String? _fotoAlumno;
  String get fotoAlumno => _fotoAlumno ?? '';
  bool hasFotoAlumno() => _fotoAlumno != null;

  // "descripcion-alumno" field.
  String? _descripcionAlumno;
  String get descripcionAlumno => _descripcionAlumno ?? '';
  bool hasDescripcionAlumno() => _descripcionAlumno != null;

  // "hora-curso" field.
  String? _horaCurso;
  String get horaCurso => _horaCurso ?? '';
  bool hasHoraCurso() => _horaCurso != null;

  // "Maestria" field.
  String? _maestria;
  String get maestria => _maestria ?? '';
  bool hasMaestria() => _maestria != null;

  // "Telefono" field.
  String? _telefono;
  String get telefono => _telefono ?? '';
  bool hasTelefono() => _telefono != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _nombreAlumno = snapshotData['nombre-alumno'] as String?;
    _graduacionAlumno = snapshotData['graduacion-alumno'] as String?;
    _abono = snapshotData['abono'] as bool?;
    _orientadorAlumno = snapshotData['orientador-Alumno'] as String?;
    _fotoAlumno = snapshotData['foto-alumno'] as String?;
    _descripcionAlumno = snapshotData['descripcion-alumno'] as String?;
    _horaCurso = snapshotData['hora-curso'] as String?;
    _maestria = snapshotData['Maestria'] as String?;
    _telefono = snapshotData['Telefono'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('participantes')
          : FirebaseFirestore.instance.collectionGroup('participantes');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('participantes').doc();

  static Stream<ParticipantesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ParticipantesRecord.fromSnapshot(s));

  static Future<ParticipantesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ParticipantesRecord.fromSnapshot(s));

  static ParticipantesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ParticipantesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ParticipantesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ParticipantesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ParticipantesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ParticipantesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createParticipantesRecordData({
  String? nombreAlumno,
  String? graduacionAlumno,
  bool? abono,
  String? orientadorAlumno,
  String? fotoAlumno,
  String? descripcionAlumno,
  String? horaCurso,
  String? maestria,
  String? telefono,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre-alumno': nombreAlumno,
      'graduacion-alumno': graduacionAlumno,
      'abono': abono,
      'orientador-Alumno': orientadorAlumno,
      'foto-alumno': fotoAlumno,
      'descripcion-alumno': descripcionAlumno,
      'hora-curso': horaCurso,
      'Maestria': maestria,
      'Telefono': telefono,
    }.withoutNulls,
  );

  return firestoreData;
}

class ParticipantesRecordDocumentEquality
    implements Equality<ParticipantesRecord> {
  const ParticipantesRecordDocumentEquality();

  @override
  bool equals(ParticipantesRecord? e1, ParticipantesRecord? e2) {
    return e1?.nombreAlumno == e2?.nombreAlumno &&
        e1?.graduacionAlumno == e2?.graduacionAlumno &&
        e1?.abono == e2?.abono &&
        e1?.orientadorAlumno == e2?.orientadorAlumno &&
        e1?.fotoAlumno == e2?.fotoAlumno &&
        e1?.descripcionAlumno == e2?.descripcionAlumno &&
        e1?.horaCurso == e2?.horaCurso &&
        e1?.maestria == e2?.maestria &&
        e1?.telefono == e2?.telefono;
  }

  @override
  int hash(ParticipantesRecord? e) => const ListEquality().hash([
        e?.nombreAlumno,
        e?.graduacionAlumno,
        e?.abono,
        e?.orientadorAlumno,
        e?.fotoAlumno,
        e?.descripcionAlumno,
        e?.horaCurso,
        e?.maestria,
        e?.telefono
      ]);

  @override
  bool isValidKey(Object? o) => o is ParticipantesRecord;
}
