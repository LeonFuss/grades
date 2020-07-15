// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class GradeDBO extends DataClass implements Insertable<GradeDBO> {
  final String id;
  final DateTime creationTime;
  final int value;
  final String type;
  final String description;
  final String subjectId;
  final int term;
  GradeDBO(
      {@required this.id,
      @required this.creationTime,
      @required this.value,
      @required this.type,
      @required this.description,
      @required this.subjectId,
      this.term});
  factory GradeDBO.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final intType = db.typeSystem.forDartType<int>();
    return GradeDBO(
      id: stringType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      creationTime: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}creation_time']),
      value: intType.mapFromDatabaseResponse(data['${effectivePrefix}value']),
      type: stringType.mapFromDatabaseResponse(data['${effectivePrefix}type']),
      description: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      subjectId: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}subject_id']),
      term: intType.mapFromDatabaseResponse(data['${effectivePrefix}term']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String>(id);
    }
    if (!nullToAbsent || creationTime != null) {
      map['creation_time'] = Variable<DateTime>(creationTime);
    }
    if (!nullToAbsent || value != null) {
      map['value'] = Variable<int>(value);
    }
    if (!nullToAbsent || type != null) {
      map['type'] = Variable<String>(type);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || subjectId != null) {
      map['subject_id'] = Variable<String>(subjectId);
    }
    if (!nullToAbsent || term != null) {
      map['term'] = Variable<int>(term);
    }
    return map;
  }

  GradesCompanion toCompanion(bool nullToAbsent) {
    return GradesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      creationTime: creationTime == null && nullToAbsent
          ? const Value.absent()
          : Value(creationTime),
      value:
          value == null && nullToAbsent ? const Value.absent() : Value(value),
      type: type == null && nullToAbsent ? const Value.absent() : Value(type),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      subjectId: subjectId == null && nullToAbsent
          ? const Value.absent()
          : Value(subjectId),
      term: term == null && nullToAbsent ? const Value.absent() : Value(term),
    );
  }

  factory GradeDBO.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return GradeDBO(
      id: serializer.fromJson<String>(json['id']),
      creationTime: serializer.fromJson<DateTime>(json['creationTime']),
      value: serializer.fromJson<int>(json['value']),
      type: serializer.fromJson<String>(json['type']),
      description: serializer.fromJson<String>(json['description']),
      subjectId: serializer.fromJson<String>(json['subjectId']),
      term: serializer.fromJson<int>(json['term']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'creationTime': serializer.toJson<DateTime>(creationTime),
      'value': serializer.toJson<int>(value),
      'type': serializer.toJson<String>(type),
      'description': serializer.toJson<String>(description),
      'subjectId': serializer.toJson<String>(subjectId),
      'term': serializer.toJson<int>(term),
    };
  }

  GradeDBO copyWith(
          {String id,
          DateTime creationTime,
          int value,
          String type,
          String description,
          String subjectId,
          int term}) =>
      GradeDBO(
        id: id ?? this.id,
        creationTime: creationTime ?? this.creationTime,
        value: value ?? this.value,
        type: type ?? this.type,
        description: description ?? this.description,
        subjectId: subjectId ?? this.subjectId,
        term: term ?? this.term,
      );
  @override
  String toString() {
    return (StringBuffer('GradeDBO(')
          ..write('id: $id, ')
          ..write('creationTime: $creationTime, ')
          ..write('value: $value, ')
          ..write('type: $type, ')
          ..write('description: $description, ')
          ..write('subjectId: $subjectId, ')
          ..write('term: $term')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          creationTime.hashCode,
          $mrjc(
              value.hashCode,
              $mrjc(
                  type.hashCode,
                  $mrjc(description.hashCode,
                      $mrjc(subjectId.hashCode, term.hashCode)))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is GradeDBO &&
          other.id == this.id &&
          other.creationTime == this.creationTime &&
          other.value == this.value &&
          other.type == this.type &&
          other.description == this.description &&
          other.subjectId == this.subjectId &&
          other.term == this.term);
}

class GradesCompanion extends UpdateCompanion<GradeDBO> {
  final Value<String> id;
  final Value<DateTime> creationTime;
  final Value<int> value;
  final Value<String> type;
  final Value<String> description;
  final Value<String> subjectId;
  final Value<int> term;
  const GradesCompanion({
    this.id = const Value.absent(),
    this.creationTime = const Value.absent(),
    this.value = const Value.absent(),
    this.type = const Value.absent(),
    this.description = const Value.absent(),
    this.subjectId = const Value.absent(),
    this.term = const Value.absent(),
  });
  GradesCompanion.insert({
    @required String id,
    @required DateTime creationTime,
    @required int value,
    @required String type,
    @required String description,
    @required String subjectId,
    this.term = const Value.absent(),
  })  : id = Value(id),
        creationTime = Value(creationTime),
        value = Value(value),
        type = Value(type),
        description = Value(description),
        subjectId = Value(subjectId);
  static Insertable<GradeDBO> custom({
    Expression<String> id,
    Expression<DateTime> creationTime,
    Expression<int> value,
    Expression<String> type,
    Expression<String> description,
    Expression<String> subjectId,
    Expression<int> term,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (creationTime != null) 'creation_time': creationTime,
      if (value != null) 'value': value,
      if (type != null) 'type': type,
      if (description != null) 'description': description,
      if (subjectId != null) 'subject_id': subjectId,
      if (term != null) 'term': term,
    });
  }

  GradesCompanion copyWith(
      {Value<String> id,
      Value<DateTime> creationTime,
      Value<int> value,
      Value<String> type,
      Value<String> description,
      Value<String> subjectId,
      Value<int> term}) {
    return GradesCompanion(
      id: id ?? this.id,
      creationTime: creationTime ?? this.creationTime,
      value: value ?? this.value,
      type: type ?? this.type,
      description: description ?? this.description,
      subjectId: subjectId ?? this.subjectId,
      term: term ?? this.term,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (creationTime.present) {
      map['creation_time'] = Variable<DateTime>(creationTime.value);
    }
    if (value.present) {
      map['value'] = Variable<int>(value.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (subjectId.present) {
      map['subject_id'] = Variable<String>(subjectId.value);
    }
    if (term.present) {
      map['term'] = Variable<int>(term.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GradesCompanion(')
          ..write('id: $id, ')
          ..write('creationTime: $creationTime, ')
          ..write('value: $value, ')
          ..write('type: $type, ')
          ..write('description: $description, ')
          ..write('subjectId: $subjectId, ')
          ..write('term: $term')
          ..write(')'))
        .toString();
  }
}

class $GradesTable extends Grades with TableInfo<$GradesTable, GradeDBO> {
  final GeneratedDatabase _db;
  final String _alias;
  $GradesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedTextColumn _id;
  @override
  GeneratedTextColumn get id => _id ??= _constructId();
  GeneratedTextColumn _constructId() {
    return GeneratedTextColumn(
      'id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _creationTimeMeta =
      const VerificationMeta('creationTime');
  GeneratedDateTimeColumn _creationTime;
  @override
  GeneratedDateTimeColumn get creationTime =>
      _creationTime ??= _constructCreationTime();
  GeneratedDateTimeColumn _constructCreationTime() {
    return GeneratedDateTimeColumn(
      'creation_time',
      $tableName,
      false,
    );
  }

  final VerificationMeta _valueMeta = const VerificationMeta('value');
  GeneratedIntColumn _value;
  @override
  GeneratedIntColumn get value => _value ??= _constructValue();
  GeneratedIntColumn _constructValue() {
    return GeneratedIntColumn(
      'value',
      $tableName,
      false,
    );
  }

  final VerificationMeta _typeMeta = const VerificationMeta('type');
  GeneratedTextColumn _type;
  @override
  GeneratedTextColumn get type => _type ??= _constructType();
  GeneratedTextColumn _constructType() {
    return GeneratedTextColumn(
      'type',
      $tableName,
      false,
    );
  }

  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  GeneratedTextColumn _description;
  @override
  GeneratedTextColumn get description =>
      _description ??= _constructDescription();
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn(
      'description',
      $tableName,
      false,
    );
  }

  final VerificationMeta _subjectIdMeta = const VerificationMeta('subjectId');
  GeneratedTextColumn _subjectId;
  @override
  GeneratedTextColumn get subjectId => _subjectId ??= _constructSubjectId();
  GeneratedTextColumn _constructSubjectId() {
    return GeneratedTextColumn(
      'subject_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _termMeta = const VerificationMeta('term');
  GeneratedIntColumn _term;
  @override
  GeneratedIntColumn get term => _term ??= _constructTerm();
  GeneratedIntColumn _constructTerm() {
    return GeneratedIntColumn(
      'term',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, creationTime, value, type, description, subjectId, term];
  @override
  $GradesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'grades';
  @override
  final String actualTableName = 'grades';
  @override
  VerificationContext validateIntegrity(Insertable<GradeDBO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('creation_time')) {
      context.handle(
          _creationTimeMeta,
          creationTime.isAcceptableOrUnknown(
              data['creation_time'], _creationTimeMeta));
    } else if (isInserting) {
      context.missing(_creationTimeMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value'], _valueMeta));
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type'], _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description'], _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('subject_id')) {
      context.handle(_subjectIdMeta,
          subjectId.isAcceptableOrUnknown(data['subject_id'], _subjectIdMeta));
    } else if (isInserting) {
      context.missing(_subjectIdMeta);
    }
    if (data.containsKey('term')) {
      context.handle(
          _termMeta, term.isAcceptableOrUnknown(data['term'], _termMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  GradeDBO map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return GradeDBO.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $GradesTable createAlias(String alias) {
    return $GradesTable(_db, alias);
  }
}

class SubjectDBO extends DataClass implements Insertable<SubjectDBO> {
  final String id;
  final String name;
  final double average;
  final double oralAverage;
  final double writtenAverage;
  final int position;
  final int term;
  SubjectDBO(
      {@required this.id,
      @required this.name,
      @required this.average,
      @required this.oralAverage,
      @required this.writtenAverage,
      @required this.position,
      this.term});
  factory SubjectDBO.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    final doubleType = db.typeSystem.forDartType<double>();
    final intType = db.typeSystem.forDartType<int>();
    return SubjectDBO(
      id: stringType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      average:
          doubleType.mapFromDatabaseResponse(data['${effectivePrefix}average']),
      oralAverage: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}oral_average']),
      writtenAverage: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}written_average']),
      position:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}position']),
      term: intType.mapFromDatabaseResponse(data['${effectivePrefix}term']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String>(id);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || average != null) {
      map['average'] = Variable<double>(average);
    }
    if (!nullToAbsent || oralAverage != null) {
      map['oral_average'] = Variable<double>(oralAverage);
    }
    if (!nullToAbsent || writtenAverage != null) {
      map['written_average'] = Variable<double>(writtenAverage);
    }
    if (!nullToAbsent || position != null) {
      map['position'] = Variable<int>(position);
    }
    if (!nullToAbsent || term != null) {
      map['term'] = Variable<int>(term);
    }
    return map;
  }

  SubjectsCompanion toCompanion(bool nullToAbsent) {
    return SubjectsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      average: average == null && nullToAbsent
          ? const Value.absent()
          : Value(average),
      oralAverage: oralAverage == null && nullToAbsent
          ? const Value.absent()
          : Value(oralAverage),
      writtenAverage: writtenAverage == null && nullToAbsent
          ? const Value.absent()
          : Value(writtenAverage),
      position: position == null && nullToAbsent
          ? const Value.absent()
          : Value(position),
      term: term == null && nullToAbsent ? const Value.absent() : Value(term),
    );
  }

  factory SubjectDBO.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return SubjectDBO(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      average: serializer.fromJson<double>(json['average']),
      oralAverage: serializer.fromJson<double>(json['oralAverage']),
      writtenAverage: serializer.fromJson<double>(json['writtenAverage']),
      position: serializer.fromJson<int>(json['position']),
      term: serializer.fromJson<int>(json['term']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'average': serializer.toJson<double>(average),
      'oralAverage': serializer.toJson<double>(oralAverage),
      'writtenAverage': serializer.toJson<double>(writtenAverage),
      'position': serializer.toJson<int>(position),
      'term': serializer.toJson<int>(term),
    };
  }

  SubjectDBO copyWith(
          {String id,
          String name,
          double average,
          double oralAverage,
          double writtenAverage,
          int position,
          int term}) =>
      SubjectDBO(
        id: id ?? this.id,
        name: name ?? this.name,
        average: average ?? this.average,
        oralAverage: oralAverage ?? this.oralAverage,
        writtenAverage: writtenAverage ?? this.writtenAverage,
        position: position ?? this.position,
        term: term ?? this.term,
      );
  @override
  String toString() {
    return (StringBuffer('SubjectDBO(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('average: $average, ')
          ..write('oralAverage: $oralAverage, ')
          ..write('writtenAverage: $writtenAverage, ')
          ..write('position: $position, ')
          ..write('term: $term')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          name.hashCode,
          $mrjc(
              average.hashCode,
              $mrjc(
                  oralAverage.hashCode,
                  $mrjc(writtenAverage.hashCode,
                      $mrjc(position.hashCode, term.hashCode)))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is SubjectDBO &&
          other.id == this.id &&
          other.name == this.name &&
          other.average == this.average &&
          other.oralAverage == this.oralAverage &&
          other.writtenAverage == this.writtenAverage &&
          other.position == this.position &&
          other.term == this.term);
}

class SubjectsCompanion extends UpdateCompanion<SubjectDBO> {
  final Value<String> id;
  final Value<String> name;
  final Value<double> average;
  final Value<double> oralAverage;
  final Value<double> writtenAverage;
  final Value<int> position;
  final Value<int> term;
  const SubjectsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.average = const Value.absent(),
    this.oralAverage = const Value.absent(),
    this.writtenAverage = const Value.absent(),
    this.position = const Value.absent(),
    this.term = const Value.absent(),
  });
  SubjectsCompanion.insert({
    @required String id,
    @required String name,
    @required double average,
    @required double oralAverage,
    @required double writtenAverage,
    @required int position,
    this.term = const Value.absent(),
  })  : id = Value(id),
        name = Value(name),
        average = Value(average),
        oralAverage = Value(oralAverage),
        writtenAverage = Value(writtenAverage),
        position = Value(position);
  static Insertable<SubjectDBO> custom({
    Expression<String> id,
    Expression<String> name,
    Expression<double> average,
    Expression<double> oralAverage,
    Expression<double> writtenAverage,
    Expression<int> position,
    Expression<int> term,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (average != null) 'average': average,
      if (oralAverage != null) 'oral_average': oralAverage,
      if (writtenAverage != null) 'written_average': writtenAverage,
      if (position != null) 'position': position,
      if (term != null) 'term': term,
    });
  }

  SubjectsCompanion copyWith(
      {Value<String> id,
      Value<String> name,
      Value<double> average,
      Value<double> oralAverage,
      Value<double> writtenAverage,
      Value<int> position,
      Value<int> term}) {
    return SubjectsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      average: average ?? this.average,
      oralAverage: oralAverage ?? this.oralAverage,
      writtenAverage: writtenAverage ?? this.writtenAverage,
      position: position ?? this.position,
      term: term ?? this.term,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (average.present) {
      map['average'] = Variable<double>(average.value);
    }
    if (oralAverage.present) {
      map['oral_average'] = Variable<double>(oralAverage.value);
    }
    if (writtenAverage.present) {
      map['written_average'] = Variable<double>(writtenAverage.value);
    }
    if (position.present) {
      map['position'] = Variable<int>(position.value);
    }
    if (term.present) {
      map['term'] = Variable<int>(term.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SubjectsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('average: $average, ')
          ..write('oralAverage: $oralAverage, ')
          ..write('writtenAverage: $writtenAverage, ')
          ..write('position: $position, ')
          ..write('term: $term')
          ..write(')'))
        .toString();
  }
}

class $SubjectsTable extends Subjects
    with TableInfo<$SubjectsTable, SubjectDBO> {
  final GeneratedDatabase _db;
  final String _alias;
  $SubjectsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedTextColumn _id;
  @override
  GeneratedTextColumn get id => _id ??= _constructId();
  GeneratedTextColumn _constructId() {
    return GeneratedTextColumn(
      'id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn(
      'name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _averageMeta = const VerificationMeta('average');
  GeneratedRealColumn _average;
  @override
  GeneratedRealColumn get average => _average ??= _constructAverage();
  GeneratedRealColumn _constructAverage() {
    return GeneratedRealColumn(
      'average',
      $tableName,
      false,
    );
  }

  final VerificationMeta _oralAverageMeta =
      const VerificationMeta('oralAverage');
  GeneratedRealColumn _oralAverage;
  @override
  GeneratedRealColumn get oralAverage =>
      _oralAverage ??= _constructOralAverage();
  GeneratedRealColumn _constructOralAverage() {
    return GeneratedRealColumn(
      'oral_average',
      $tableName,
      false,
    );
  }

  final VerificationMeta _writtenAverageMeta =
      const VerificationMeta('writtenAverage');
  GeneratedRealColumn _writtenAverage;
  @override
  GeneratedRealColumn get writtenAverage =>
      _writtenAverage ??= _constructWrittenAverage();
  GeneratedRealColumn _constructWrittenAverage() {
    return GeneratedRealColumn(
      'written_average',
      $tableName,
      false,
    );
  }

  final VerificationMeta _positionMeta = const VerificationMeta('position');
  GeneratedIntColumn _position;
  @override
  GeneratedIntColumn get position => _position ??= _constructPosition();
  GeneratedIntColumn _constructPosition() {
    return GeneratedIntColumn(
      'position',
      $tableName,
      false,
    );
  }

  final VerificationMeta _termMeta = const VerificationMeta('term');
  GeneratedIntColumn _term;
  @override
  GeneratedIntColumn get term => _term ??= _constructTerm();
  GeneratedIntColumn _constructTerm() {
    return GeneratedIntColumn(
      'term',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, name, average, oralAverage, writtenAverage, position, term];
  @override
  $SubjectsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'subjects';
  @override
  final String actualTableName = 'subjects';
  @override
  VerificationContext validateIntegrity(Insertable<SubjectDBO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('average')) {
      context.handle(_averageMeta,
          average.isAcceptableOrUnknown(data['average'], _averageMeta));
    } else if (isInserting) {
      context.missing(_averageMeta);
    }
    if (data.containsKey('oral_average')) {
      context.handle(
          _oralAverageMeta,
          oralAverage.isAcceptableOrUnknown(
              data['oral_average'], _oralAverageMeta));
    } else if (isInserting) {
      context.missing(_oralAverageMeta);
    }
    if (data.containsKey('written_average')) {
      context.handle(
          _writtenAverageMeta,
          writtenAverage.isAcceptableOrUnknown(
              data['written_average'], _writtenAverageMeta));
    } else if (isInserting) {
      context.missing(_writtenAverageMeta);
    }
    if (data.containsKey('position')) {
      context.handle(_positionMeta,
          position.isAcceptableOrUnknown(data['position'], _positionMeta));
    } else if (isInserting) {
      context.missing(_positionMeta);
    }
    if (data.containsKey('term')) {
      context.handle(
          _termMeta, term.isAcceptableOrUnknown(data['term'], _termMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SubjectDBO map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return SubjectDBO.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $SubjectsTable createAlias(String alias) {
    return $SubjectsTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $GradesTable _grades;
  $GradesTable get grades => _grades ??= $GradesTable(this);
  $SubjectsTable _subjects;
  $SubjectsTable get subjects => _subjects ??= $SubjectsTable(this);
  GradeDAO _gradeDAO;
  GradeDAO get gradeDAO => _gradeDAO ??= GradeDAO(this as AppDatabase);
  SubjectDAO _subjectDAO;
  SubjectDAO get subjectDAO => _subjectDAO ??= SubjectDAO(this as AppDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [grades, subjects];
}
