import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AlumnosMedicinaRecord extends FirestoreRecord {
  AlumnosMedicinaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "ubicacion" field.
  String? _ubicacion;
  String get ubicacion => _ubicacion ?? '';
  bool hasUbicacion() => _ubicacion != null;

  // "telefono" field.
  String? _telefono;
  String get telefono => _telefono ?? '';
  bool hasTelefono() => _telefono != null;

  // "abono" field.
  bool? _abono;
  bool get abono => _abono ?? false;
  bool hasAbono() => _abono != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "idclaseM" field.
  DocumentReference? _idclaseM;
  DocumentReference? get idclaseM => _idclaseM;
  bool hasIdclaseM() => _idclaseM != null;

  // "foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  bool hasFoto() => _foto != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _ubicacion = snapshotData['ubicacion'] as String?;
    _telefono = snapshotData['telefono'] as String?;
    _abono = snapshotData['abono'] as bool?;
    _descripcion = snapshotData['descripcion'] as String?;
    _idclaseM = snapshotData['idclaseM'] as DocumentReference?;
    _foto = snapshotData['foto'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('AlumnosMedicina')
          : FirebaseFirestore.instance.collectionGroup('AlumnosMedicina');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('AlumnosMedicina').doc();

  static Stream<AlumnosMedicinaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AlumnosMedicinaRecord.fromSnapshot(s));

  static Future<AlumnosMedicinaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AlumnosMedicinaRecord.fromSnapshot(s));

  static AlumnosMedicinaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AlumnosMedicinaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AlumnosMedicinaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AlumnosMedicinaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AlumnosMedicinaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AlumnosMedicinaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAlumnosMedicinaRecordData({
  String? nombre,
  String? ubicacion,
  String? telefono,
  bool? abono,
  String? descripcion,
  DocumentReference? idclaseM,
  String? foto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'ubicacion': ubicacion,
      'telefono': telefono,
      'abono': abono,
      'descripcion': descripcion,
      'idclaseM': idclaseM,
      'foto': foto,
    }.withoutNulls,
  );

  return firestoreData;
}

class AlumnosMedicinaRecordDocumentEquality
    implements Equality<AlumnosMedicinaRecord> {
  const AlumnosMedicinaRecordDocumentEquality();

  @override
  bool equals(AlumnosMedicinaRecord? e1, AlumnosMedicinaRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.ubicacion == e2?.ubicacion &&
        e1?.telefono == e2?.telefono &&
        e1?.abono == e2?.abono &&
        e1?.descripcion == e2?.descripcion &&
        e1?.idclaseM == e2?.idclaseM &&
        e1?.foto == e2?.foto;
  }

  @override
  int hash(AlumnosMedicinaRecord? e) => const ListEquality().hash([
        e?.nombre,
        e?.ubicacion,
        e?.telefono,
        e?.abono,
        e?.descripcion,
        e?.idclaseM,
        e?.foto
      ]);

  @override
  bool isValidKey(Object? o) => o is AlumnosMedicinaRecord;
}
