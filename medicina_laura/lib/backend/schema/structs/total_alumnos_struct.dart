// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TotalAlumnosStruct extends FFFirebaseStruct {
  TotalAlumnosStruct({
    int? totalAlumnos,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _totalAlumnos = totalAlumnos,
        super(firestoreUtilData);

  // "total-alumnos" field.
  int? _totalAlumnos;
  int get totalAlumnos => _totalAlumnos ?? 0;
  set totalAlumnos(int? val) => _totalAlumnos = val;
  void incrementTotalAlumnos(int amount) =>
      _totalAlumnos = totalAlumnos + amount;
  bool hasTotalAlumnos() => _totalAlumnos != null;

  static TotalAlumnosStruct fromMap(Map<String, dynamic> data) =>
      TotalAlumnosStruct(
        totalAlumnos: castToType<int>(data['total-alumnos']),
      );

  static TotalAlumnosStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? TotalAlumnosStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'total-alumnos': _totalAlumnos,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'total-alumnos': serializeParam(
          _totalAlumnos,
          ParamType.int,
        ),
      }.withoutNulls;

  static TotalAlumnosStruct fromSerializableMap(Map<String, dynamic> data) =>
      TotalAlumnosStruct(
        totalAlumnos: deserializeParam(
          data['total-alumnos'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'TotalAlumnosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TotalAlumnosStruct && totalAlumnos == other.totalAlumnos;
  }

  @override
  int get hashCode => const ListEquality().hash([totalAlumnos]);
}

TotalAlumnosStruct createTotalAlumnosStruct({
  int? totalAlumnos,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TotalAlumnosStruct(
      totalAlumnos: totalAlumnos,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TotalAlumnosStruct? updateTotalAlumnosStruct(
  TotalAlumnosStruct? totalAlumnosStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    totalAlumnosStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTotalAlumnosStructData(
  Map<String, dynamic> firestoreData,
  TotalAlumnosStruct? totalAlumnosStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (totalAlumnosStruct == null) {
    return;
  }
  if (totalAlumnosStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && totalAlumnosStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final totalAlumnosStructData =
      getTotalAlumnosFirestoreData(totalAlumnosStruct, forFieldValue);
  final nestedData =
      totalAlumnosStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      totalAlumnosStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTotalAlumnosFirestoreData(
  TotalAlumnosStruct? totalAlumnosStruct, [
  bool forFieldValue = false,
]) {
  if (totalAlumnosStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(totalAlumnosStruct.toMap());

  // Add any Firestore field values
  totalAlumnosStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTotalAlumnosListFirestoreData(
  List<TotalAlumnosStruct>? totalAlumnosStructs,
) =>
    totalAlumnosStructs
        ?.map((e) => getTotalAlumnosFirestoreData(e, true))
        .toList() ??
    [];
