import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MedcinaClasesRecord extends FirestoreRecord {
  MedcinaClasesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ClaseNombre" field.
  String? _claseNombre;
  String get claseNombre => _claseNombre ?? '';
  bool hasClaseNombre() => _claseNombre != null;

  // "ClaseDescripcion" field.
  String? _claseDescripcion;
  String get claseDescripcion => _claseDescripcion ?? '';
  bool hasClaseDescripcion() => _claseDescripcion != null;

  // "ClasFoto" field.
  String? _clasFoto;
  String get clasFoto => _clasFoto ?? '';
  bool hasClasFoto() => _clasFoto != null;

  void _initializeFields() {
    _claseNombre = snapshotData['ClaseNombre'] as String?;
    _claseDescripcion = snapshotData['ClaseDescripcion'] as String?;
    _clasFoto = snapshotData['ClasFoto'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('MedcinaClases');

  static Stream<MedcinaClasesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MedcinaClasesRecord.fromSnapshot(s));

  static Future<MedcinaClasesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MedcinaClasesRecord.fromSnapshot(s));

  static MedcinaClasesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MedcinaClasesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MedcinaClasesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MedcinaClasesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MedcinaClasesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MedcinaClasesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMedcinaClasesRecordData({
  String? claseNombre,
  String? claseDescripcion,
  String? clasFoto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ClaseNombre': claseNombre,
      'ClaseDescripcion': claseDescripcion,
      'ClasFoto': clasFoto,
    }.withoutNulls,
  );

  return firestoreData;
}

class MedcinaClasesRecordDocumentEquality
    implements Equality<MedcinaClasesRecord> {
  const MedcinaClasesRecordDocumentEquality();

  @override
  bool equals(MedcinaClasesRecord? e1, MedcinaClasesRecord? e2) {
    return e1?.claseNombre == e2?.claseNombre &&
        e1?.claseDescripcion == e2?.claseDescripcion &&
        e1?.clasFoto == e2?.clasFoto;
  }

  @override
  int hash(MedcinaClasesRecord? e) => const ListEquality()
      .hash([e?.claseNombre, e?.claseDescripcion, e?.clasFoto]);

  @override
  bool isValidKey(Object? o) => o is MedcinaClasesRecord;
}
