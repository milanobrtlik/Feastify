import '../../schema.graphql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Fragment$CompetitorDetail {
  Fragment$CompetitorDetail({
    required this.id,
    required this.name,
    this.rating,
    required this.label,
    this.ratings,
    required this.$__typename,
  });

  factory Fragment$CompetitorDetail.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$rating = json['rating'];
    final l$label = json['label'];
    final l$ratings = json['ratings'];
    final l$$__typename = json['__typename'];
    return Fragment$CompetitorDetail(
      id: (l$id as int),
      name: (l$name as String),
      rating: (l$rating as num?)?.toDouble(),
      label: (l$label as String),
      ratings: (l$ratings as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Fragment$CompetitorDetail$ratings.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final double? rating;

  final String label;

  final List<Fragment$CompetitorDetail$ratings?>? ratings;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$rating = rating;
    _resultData['rating'] = l$rating;
    final l$label = label;
    _resultData['label'] = l$label;
    final l$ratings = ratings;
    _resultData['ratings'] = l$ratings?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$rating = rating;
    final l$label = label;
    final l$ratings = ratings;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$rating,
      l$label,
      l$ratings == null ? null : Object.hashAll(l$ratings.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$CompetitorDetail) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$rating = rating;
    final lOther$rating = other.rating;
    if (l$rating != lOther$rating) {
      return false;
    }
    final l$label = label;
    final lOther$label = other.label;
    if (l$label != lOther$label) {
      return false;
    }
    final l$ratings = ratings;
    final lOther$ratings = other.ratings;
    if (l$ratings != null && lOther$ratings != null) {
      if (l$ratings.length != lOther$ratings.length) {
        return false;
      }
      for (int i = 0; i < l$ratings.length; i++) {
        final l$ratings$entry = l$ratings[i];
        final lOther$ratings$entry = lOther$ratings[i];
        if (l$ratings$entry != lOther$ratings$entry) {
          return false;
        }
      }
    } else if (l$ratings != lOther$ratings) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$CompetitorDetail
    on Fragment$CompetitorDetail {
  CopyWith$Fragment$CompetitorDetail<Fragment$CompetitorDetail> get copyWith =>
      CopyWith$Fragment$CompetitorDetail(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$CompetitorDetail<TRes> {
  factory CopyWith$Fragment$CompetitorDetail(
    Fragment$CompetitorDetail instance,
    TRes Function(Fragment$CompetitorDetail) then,
  ) = _CopyWithImpl$Fragment$CompetitorDetail;

  factory CopyWith$Fragment$CompetitorDetail.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CompetitorDetail;

  TRes call({
    int? id,
    String? name,
    double? rating,
    String? label,
    List<Fragment$CompetitorDetail$ratings?>? ratings,
    String? $__typename,
  });
  TRes ratings(
      Iterable<Fragment$CompetitorDetail$ratings?>? Function(
              Iterable<
                  CopyWith$Fragment$CompetitorDetail$ratings<
                      Fragment$CompetitorDetail$ratings>?>?)
          _fn);
}

class _CopyWithImpl$Fragment$CompetitorDetail<TRes>
    implements CopyWith$Fragment$CompetitorDetail<TRes> {
  _CopyWithImpl$Fragment$CompetitorDetail(
    this._instance,
    this._then,
  );

  final Fragment$CompetitorDetail _instance;

  final TRes Function(Fragment$CompetitorDetail) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? rating = _undefined,
    Object? label = _undefined,
    Object? ratings = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$CompetitorDetail(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        rating: rating == _undefined ? _instance.rating : (rating as double?),
        label: label == _undefined || label == null
            ? _instance.label
            : (label as String),
        ratings: ratings == _undefined
            ? _instance.ratings
            : (ratings as List<Fragment$CompetitorDetail$ratings?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes ratings(
          Iterable<Fragment$CompetitorDetail$ratings?>? Function(
                  Iterable<
                      CopyWith$Fragment$CompetitorDetail$ratings<
                          Fragment$CompetitorDetail$ratings>?>?)
              _fn) =>
      call(
          ratings: _fn(_instance.ratings?.map((e) => e == null
              ? null
              : CopyWith$Fragment$CompetitorDetail$ratings(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Fragment$CompetitorDetail<TRes>
    implements CopyWith$Fragment$CompetitorDetail<TRes> {
  _CopyWithStubImpl$Fragment$CompetitorDetail(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    double? rating,
    String? label,
    List<Fragment$CompetitorDetail$ratings?>? ratings,
    String? $__typename,
  }) =>
      _res;
  ratings(_fn) => _res;
}

const fragmentDefinitionCompetitorDetail = FragmentDefinitionNode(
  name: NameNode(value: 'CompetitorDetail'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Competitor'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'name'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'rating'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'label'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'ratings'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'rating'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'criteria'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
              name: NameNode(value: 'id'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'name'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'weight'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'description'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: '__typename'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
          ]),
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentCompetitorDetail = DocumentNode(definitions: [
  fragmentDefinitionCompetitorDetail,
]);

extension ClientExtension$Fragment$CompetitorDetail on graphql.GraphQLClient {
  void writeFragment$CompetitorDetail({
    required Fragment$CompetitorDetail data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'CompetitorDetail',
            document: documentNodeFragmentCompetitorDetail,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$CompetitorDetail? readFragment$CompetitorDetail({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'CompetitorDetail',
          document: documentNodeFragmentCompetitorDetail,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$CompetitorDetail.fromJson(result);
  }
}

class Fragment$CompetitorDetail$ratings {
  Fragment$CompetitorDetail$ratings({
    required this.rating,
    this.criteria,
    required this.$__typename,
  });

  factory Fragment$CompetitorDetail$ratings.fromJson(
      Map<String, dynamic> json) {
    final l$rating = json['rating'];
    final l$criteria = json['criteria'];
    final l$$__typename = json['__typename'];
    return Fragment$CompetitorDetail$ratings(
      rating: (l$rating as int),
      criteria: l$criteria == null
          ? null
          : Fragment$CompetitorDetail$ratings$criteria.fromJson(
              (l$criteria as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int rating;

  final Fragment$CompetitorDetail$ratings$criteria? criteria;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$rating = rating;
    _resultData['rating'] = l$rating;
    final l$criteria = criteria;
    _resultData['criteria'] = l$criteria?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$rating = rating;
    final l$criteria = criteria;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$rating,
      l$criteria,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$CompetitorDetail$ratings) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$rating = rating;
    final lOther$rating = other.rating;
    if (l$rating != lOther$rating) {
      return false;
    }
    final l$criteria = criteria;
    final lOther$criteria = other.criteria;
    if (l$criteria != lOther$criteria) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$CompetitorDetail$ratings
    on Fragment$CompetitorDetail$ratings {
  CopyWith$Fragment$CompetitorDetail$ratings<Fragment$CompetitorDetail$ratings>
      get copyWith => CopyWith$Fragment$CompetitorDetail$ratings(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$CompetitorDetail$ratings<TRes> {
  factory CopyWith$Fragment$CompetitorDetail$ratings(
    Fragment$CompetitorDetail$ratings instance,
    TRes Function(Fragment$CompetitorDetail$ratings) then,
  ) = _CopyWithImpl$Fragment$CompetitorDetail$ratings;

  factory CopyWith$Fragment$CompetitorDetail$ratings.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CompetitorDetail$ratings;

  TRes call({
    int? rating,
    Fragment$CompetitorDetail$ratings$criteria? criteria,
    String? $__typename,
  });
  CopyWith$Fragment$CompetitorDetail$ratings$criteria<TRes> get criteria;
}

class _CopyWithImpl$Fragment$CompetitorDetail$ratings<TRes>
    implements CopyWith$Fragment$CompetitorDetail$ratings<TRes> {
  _CopyWithImpl$Fragment$CompetitorDetail$ratings(
    this._instance,
    this._then,
  );

  final Fragment$CompetitorDetail$ratings _instance;

  final TRes Function(Fragment$CompetitorDetail$ratings) _then;

  static const _undefined = {};

  TRes call({
    Object? rating = _undefined,
    Object? criteria = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$CompetitorDetail$ratings(
        rating: rating == _undefined || rating == null
            ? _instance.rating
            : (rating as int),
        criteria: criteria == _undefined
            ? _instance.criteria
            : (criteria as Fragment$CompetitorDetail$ratings$criteria?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$CompetitorDetail$ratings$criteria<TRes> get criteria {
    final local$criteria = _instance.criteria;
    return local$criteria == null
        ? CopyWith$Fragment$CompetitorDetail$ratings$criteria.stub(
            _then(_instance))
        : CopyWith$Fragment$CompetitorDetail$ratings$criteria(
            local$criteria, (e) => call(criteria: e));
  }
}

class _CopyWithStubImpl$Fragment$CompetitorDetail$ratings<TRes>
    implements CopyWith$Fragment$CompetitorDetail$ratings<TRes> {
  _CopyWithStubImpl$Fragment$CompetitorDetail$ratings(this._res);

  TRes _res;

  call({
    int? rating,
    Fragment$CompetitorDetail$ratings$criteria? criteria,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$CompetitorDetail$ratings$criteria<TRes> get criteria =>
      CopyWith$Fragment$CompetitorDetail$ratings$criteria.stub(_res);
}

class Fragment$CompetitorDetail$ratings$criteria {
  Fragment$CompetitorDetail$ratings$criteria({
    required this.id,
    required this.name,
    required this.weight,
    this.description,
    required this.$__typename,
  });

  factory Fragment$CompetitorDetail$ratings$criteria.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$weight = json['weight'];
    final l$description = json['description'];
    final l$$__typename = json['__typename'];
    return Fragment$CompetitorDetail$ratings$criteria(
      id: (l$id as int),
      name: (l$name as String),
      weight: (l$weight as int),
      description: (l$description as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final int weight;

  final String? description;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$weight = weight;
    _resultData['weight'] = l$weight;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$weight = weight;
    final l$description = description;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$weight,
      l$description,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$CompetitorDetail$ratings$criteria) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$weight = weight;
    final lOther$weight = other.weight;
    if (l$weight != lOther$weight) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$CompetitorDetail$ratings$criteria
    on Fragment$CompetitorDetail$ratings$criteria {
  CopyWith$Fragment$CompetitorDetail$ratings$criteria<
          Fragment$CompetitorDetail$ratings$criteria>
      get copyWith => CopyWith$Fragment$CompetitorDetail$ratings$criteria(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$CompetitorDetail$ratings$criteria<TRes> {
  factory CopyWith$Fragment$CompetitorDetail$ratings$criteria(
    Fragment$CompetitorDetail$ratings$criteria instance,
    TRes Function(Fragment$CompetitorDetail$ratings$criteria) then,
  ) = _CopyWithImpl$Fragment$CompetitorDetail$ratings$criteria;

  factory CopyWith$Fragment$CompetitorDetail$ratings$criteria.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CompetitorDetail$ratings$criteria;

  TRes call({
    int? id,
    String? name,
    int? weight,
    String? description,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$CompetitorDetail$ratings$criteria<TRes>
    implements CopyWith$Fragment$CompetitorDetail$ratings$criteria<TRes> {
  _CopyWithImpl$Fragment$CompetitorDetail$ratings$criteria(
    this._instance,
    this._then,
  );

  final Fragment$CompetitorDetail$ratings$criteria _instance;

  final TRes Function(Fragment$CompetitorDetail$ratings$criteria) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? weight = _undefined,
    Object? description = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$CompetitorDetail$ratings$criteria(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        weight: weight == _undefined || weight == null
            ? _instance.weight
            : (weight as int),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$CompetitorDetail$ratings$criteria<TRes>
    implements CopyWith$Fragment$CompetitorDetail$ratings$criteria<TRes> {
  _CopyWithStubImpl$Fragment$CompetitorDetail$ratings$criteria(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    int? weight,
    String? description,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$rate {
  factory Variables$Mutation$rate({required Input$UserRateInput input}) =>
      Variables$Mutation$rate._({
        r'input': input,
      });

  Variables$Mutation$rate._(this._$data);

  factory Variables$Mutation$rate.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$UserRateInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$rate._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UserRateInput get input => (_$data['input'] as Input$UserRateInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$rate<Variables$Mutation$rate> get copyWith =>
      CopyWith$Variables$Mutation$rate(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$rate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Mutation$rate<TRes> {
  factory CopyWith$Variables$Mutation$rate(
    Variables$Mutation$rate instance,
    TRes Function(Variables$Mutation$rate) then,
  ) = _CopyWithImpl$Variables$Mutation$rate;

  factory CopyWith$Variables$Mutation$rate.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$rate;

  TRes call({Input$UserRateInput? input});
}

class _CopyWithImpl$Variables$Mutation$rate<TRes>
    implements CopyWith$Variables$Mutation$rate<TRes> {
  _CopyWithImpl$Variables$Mutation$rate(
    this._instance,
    this._then,
  );

  final Variables$Mutation$rate _instance;

  final TRes Function(Variables$Mutation$rate) _then;

  static const _undefined = {};

  TRes call({Object? input = _undefined}) => _then(Variables$Mutation$rate._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$UserRateInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$rate<TRes>
    implements CopyWith$Variables$Mutation$rate<TRes> {
  _CopyWithStubImpl$Variables$Mutation$rate(this._res);

  TRes _res;

  call({Input$UserRateInput? input}) => _res;
}

class Mutation$rate {
  Mutation$rate({
    required this.rate,
    required this.$__typename,
  });

  factory Mutation$rate.fromJson(Map<String, dynamic> json) {
    final l$rate = json['rate'];
    final l$$__typename = json['__typename'];
    return Mutation$rate(
      rate: Mutation$rate$rate.fromJson((l$rate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$rate$rate rate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$rate = rate;
    _resultData['rate'] = l$rate.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$rate = rate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$rate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$rate) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$rate = rate;
    final lOther$rate = other.rate;
    if (l$rate != lOther$rate) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$rate on Mutation$rate {
  CopyWith$Mutation$rate<Mutation$rate> get copyWith => CopyWith$Mutation$rate(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$rate<TRes> {
  factory CopyWith$Mutation$rate(
    Mutation$rate instance,
    TRes Function(Mutation$rate) then,
  ) = _CopyWithImpl$Mutation$rate;

  factory CopyWith$Mutation$rate.stub(TRes res) =
      _CopyWithStubImpl$Mutation$rate;

  TRes call({
    Mutation$rate$rate? rate,
    String? $__typename,
  });
  CopyWith$Mutation$rate$rate<TRes> get rate;
}

class _CopyWithImpl$Mutation$rate<TRes>
    implements CopyWith$Mutation$rate<TRes> {
  _CopyWithImpl$Mutation$rate(
    this._instance,
    this._then,
  );

  final Mutation$rate _instance;

  final TRes Function(Mutation$rate) _then;

  static const _undefined = {};

  TRes call({
    Object? rate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$rate(
        rate: rate == _undefined || rate == null
            ? _instance.rate
            : (rate as Mutation$rate$rate),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$rate$rate<TRes> get rate {
    final local$rate = _instance.rate;
    return CopyWith$Mutation$rate$rate(local$rate, (e) => call(rate: e));
  }
}

class _CopyWithStubImpl$Mutation$rate<TRes>
    implements CopyWith$Mutation$rate<TRes> {
  _CopyWithStubImpl$Mutation$rate(this._res);

  TRes _res;

  call({
    Mutation$rate$rate? rate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$rate$rate<TRes> get rate =>
      CopyWith$Mutation$rate$rate.stub(_res);
}

const documentNodeMutationrate = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'rate'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'UserRateInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'rate'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'competitor'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'CompetitorDetail'),
                directives: [],
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionCompetitorDetail,
]);
Mutation$rate _parserFn$Mutation$rate(Map<String, dynamic> data) =>
    Mutation$rate.fromJson(data);
typedef OnMutationCompleted$Mutation$rate = FutureOr<void> Function(
  dynamic,
  Mutation$rate?,
);

class Options$Mutation$rate extends graphql.MutationOptions<Mutation$rate> {
  Options$Mutation$rate({
    String? operationName,
    required Variables$Mutation$rate variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$rate? onCompleted,
    graphql.OnMutationUpdate<Mutation$rate>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$rate(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationrate,
          parserFn: _parserFn$Mutation$rate,
        );

  final OnMutationCompleted$Mutation$rate? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$rate
    extends graphql.WatchQueryOptions<Mutation$rate> {
  WatchOptions$Mutation$rate({
    String? operationName,
    required Variables$Mutation$rate variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeMutationrate,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$rate,
        );
}

extension ClientExtension$Mutation$rate on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$rate>> mutate$rate(
          Options$Mutation$rate options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$rate> watchMutation$rate(
          WatchOptions$Mutation$rate options) =>
      this.watchMutation(options);
}

class Mutation$rate$rate {
  Mutation$rate$rate({
    this.competitor,
    required this.$__typename,
  });

  factory Mutation$rate$rate.fromJson(Map<String, dynamic> json) {
    final l$competitor = json['competitor'];
    final l$$__typename = json['__typename'];
    return Mutation$rate$rate(
      competitor: l$competitor == null
          ? null
          : Fragment$CompetitorDetail.fromJson(
              (l$competitor as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$CompetitorDetail? competitor;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$competitor = competitor;
    _resultData['competitor'] = l$competitor?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$competitor = competitor;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$competitor,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$rate$rate) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$competitor = competitor;
    final lOther$competitor = other.competitor;
    if (l$competitor != lOther$competitor) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$rate$rate on Mutation$rate$rate {
  CopyWith$Mutation$rate$rate<Mutation$rate$rate> get copyWith =>
      CopyWith$Mutation$rate$rate(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$rate$rate<TRes> {
  factory CopyWith$Mutation$rate$rate(
    Mutation$rate$rate instance,
    TRes Function(Mutation$rate$rate) then,
  ) = _CopyWithImpl$Mutation$rate$rate;

  factory CopyWith$Mutation$rate$rate.stub(TRes res) =
      _CopyWithStubImpl$Mutation$rate$rate;

  TRes call({
    Fragment$CompetitorDetail? competitor,
    String? $__typename,
  });
  CopyWith$Fragment$CompetitorDetail<TRes> get competitor;
}

class _CopyWithImpl$Mutation$rate$rate<TRes>
    implements CopyWith$Mutation$rate$rate<TRes> {
  _CopyWithImpl$Mutation$rate$rate(
    this._instance,
    this._then,
  );

  final Mutation$rate$rate _instance;

  final TRes Function(Mutation$rate$rate) _then;

  static const _undefined = {};

  TRes call({
    Object? competitor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$rate$rate(
        competitor: competitor == _undefined
            ? _instance.competitor
            : (competitor as Fragment$CompetitorDetail?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$CompetitorDetail<TRes> get competitor {
    final local$competitor = _instance.competitor;
    return local$competitor == null
        ? CopyWith$Fragment$CompetitorDetail.stub(_then(_instance))
        : CopyWith$Fragment$CompetitorDetail(
            local$competitor, (e) => call(competitor: e));
  }
}

class _CopyWithStubImpl$Mutation$rate$rate<TRes>
    implements CopyWith$Mutation$rate$rate<TRes> {
  _CopyWithStubImpl$Mutation$rate$rate(this._res);

  TRes _res;

  call({
    Fragment$CompetitorDetail? competitor,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$CompetitorDetail<TRes> get competitor =>
      CopyWith$Fragment$CompetitorDetail.stub(_res);
}

class Variables$Query$competitorDetail {
  factory Variables$Query$competitorDetail({required String id}) =>
      Variables$Query$competitorDetail._({
        r'id': id,
      });

  Variables$Query$competitorDetail._(this._$data);

  factory Variables$Query$competitorDetail.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$competitorDetail._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$competitorDetail<Variables$Query$competitorDetail>
      get copyWith => CopyWith$Variables$Query$competitorDetail(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$competitorDetail) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Query$competitorDetail<TRes> {
  factory CopyWith$Variables$Query$competitorDetail(
    Variables$Query$competitorDetail instance,
    TRes Function(Variables$Query$competitorDetail) then,
  ) = _CopyWithImpl$Variables$Query$competitorDetail;

  factory CopyWith$Variables$Query$competitorDetail.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$competitorDetail;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$competitorDetail<TRes>
    implements CopyWith$Variables$Query$competitorDetail<TRes> {
  _CopyWithImpl$Variables$Query$competitorDetail(
    this._instance,
    this._then,
  );

  final Variables$Query$competitorDetail _instance;

  final TRes Function(Variables$Query$competitorDetail) _then;

  static const _undefined = {};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Query$competitorDetail._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$competitorDetail<TRes>
    implements CopyWith$Variables$Query$competitorDetail<TRes> {
  _CopyWithStubImpl$Variables$Query$competitorDetail(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$competitorDetail {
  Query$competitorDetail({
    required this.competitorDetail,
    required this.$__typename,
  });

  factory Query$competitorDetail.fromJson(Map<String, dynamic> json) {
    final l$competitorDetail = json['competitorDetail'];
    final l$$__typename = json['__typename'];
    return Query$competitorDetail(
      competitorDetail: Query$competitorDetail$competitorDetail.fromJson(
          (l$competitorDetail as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$competitorDetail$competitorDetail competitorDetail;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$competitorDetail = competitorDetail;
    _resultData['competitorDetail'] = l$competitorDetail.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$competitorDetail = competitorDetail;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$competitorDetail,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$competitorDetail) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$competitorDetail = competitorDetail;
    final lOther$competitorDetail = other.competitorDetail;
    if (l$competitorDetail != lOther$competitorDetail) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$competitorDetail on Query$competitorDetail {
  CopyWith$Query$competitorDetail<Query$competitorDetail> get copyWith =>
      CopyWith$Query$competitorDetail(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$competitorDetail<TRes> {
  factory CopyWith$Query$competitorDetail(
    Query$competitorDetail instance,
    TRes Function(Query$competitorDetail) then,
  ) = _CopyWithImpl$Query$competitorDetail;

  factory CopyWith$Query$competitorDetail.stub(TRes res) =
      _CopyWithStubImpl$Query$competitorDetail;

  TRes call({
    Query$competitorDetail$competitorDetail? competitorDetail,
    String? $__typename,
  });
  CopyWith$Query$competitorDetail$competitorDetail<TRes> get competitorDetail;
}

class _CopyWithImpl$Query$competitorDetail<TRes>
    implements CopyWith$Query$competitorDetail<TRes> {
  _CopyWithImpl$Query$competitorDetail(
    this._instance,
    this._then,
  );

  final Query$competitorDetail _instance;

  final TRes Function(Query$competitorDetail) _then;

  static const _undefined = {};

  TRes call({
    Object? competitorDetail = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$competitorDetail(
        competitorDetail:
            competitorDetail == _undefined || competitorDetail == null
                ? _instance.competitorDetail
                : (competitorDetail as Query$competitorDetail$competitorDetail),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$competitorDetail$competitorDetail<TRes> get competitorDetail {
    final local$competitorDetail = _instance.competitorDetail;
    return CopyWith$Query$competitorDetail$competitorDetail(
        local$competitorDetail, (e) => call(competitorDetail: e));
  }
}

class _CopyWithStubImpl$Query$competitorDetail<TRes>
    implements CopyWith$Query$competitorDetail<TRes> {
  _CopyWithStubImpl$Query$competitorDetail(this._res);

  TRes _res;

  call({
    Query$competitorDetail$competitorDetail? competitorDetail,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$competitorDetail$competitorDetail<TRes> get competitorDetail =>
      CopyWith$Query$competitorDetail$competitorDetail.stub(_res);
}

const documentNodeQuerycompetitorDetail = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'competitorDetail'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'competitorDetail'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'competitor'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'CompetitorDetail'),
                directives: [],
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionCompetitorDetail,
]);
Query$competitorDetail _parserFn$Query$competitorDetail(
        Map<String, dynamic> data) =>
    Query$competitorDetail.fromJson(data);

class Options$Query$competitorDetail
    extends graphql.QueryOptions<Query$competitorDetail> {
  Options$Query$competitorDetail({
    String? operationName,
    required Variables$Query$competitorDetail variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          pollInterval: pollInterval,
          context: context,
          document: documentNodeQuerycompetitorDetail,
          parserFn: _parserFn$Query$competitorDetail,
        );
}

class WatchOptions$Query$competitorDetail
    extends graphql.WatchQueryOptions<Query$competitorDetail> {
  WatchOptions$Query$competitorDetail({
    String? operationName,
    required Variables$Query$competitorDetail variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeQuerycompetitorDetail,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$competitorDetail,
        );
}

class FetchMoreOptions$Query$competitorDetail extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$competitorDetail({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$competitorDetail variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQuerycompetitorDetail,
        );
}

extension ClientExtension$Query$competitorDetail on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$competitorDetail>> query$competitorDetail(
          Options$Query$competitorDetail options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$competitorDetail> watchQuery$competitorDetail(
          WatchOptions$Query$competitorDetail options) =>
      this.watchQuery(options);
  void writeQuery$competitorDetail({
    required Query$competitorDetail data,
    required Variables$Query$competitorDetail variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQuerycompetitorDetail),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$competitorDetail? readQuery$competitorDetail({
    required Variables$Query$competitorDetail variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQuerycompetitorDetail),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$competitorDetail.fromJson(result);
  }
}

class Query$competitorDetail$competitorDetail {
  Query$competitorDetail$competitorDetail({
    this.competitor,
    required this.$__typename,
  });

  factory Query$competitorDetail$competitorDetail.fromJson(
      Map<String, dynamic> json) {
    final l$competitor = json['competitor'];
    final l$$__typename = json['__typename'];
    return Query$competitorDetail$competitorDetail(
      competitor: l$competitor == null
          ? null
          : Fragment$CompetitorDetail.fromJson(
              (l$competitor as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$CompetitorDetail? competitor;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$competitor = competitor;
    _resultData['competitor'] = l$competitor?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$competitor = competitor;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$competitor,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$competitorDetail$competitorDetail) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$competitor = competitor;
    final lOther$competitor = other.competitor;
    if (l$competitor != lOther$competitor) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$competitorDetail$competitorDetail
    on Query$competitorDetail$competitorDetail {
  CopyWith$Query$competitorDetail$competitorDetail<
          Query$competitorDetail$competitorDetail>
      get copyWith => CopyWith$Query$competitorDetail$competitorDetail(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$competitorDetail$competitorDetail<TRes> {
  factory CopyWith$Query$competitorDetail$competitorDetail(
    Query$competitorDetail$competitorDetail instance,
    TRes Function(Query$competitorDetail$competitorDetail) then,
  ) = _CopyWithImpl$Query$competitorDetail$competitorDetail;

  factory CopyWith$Query$competitorDetail$competitorDetail.stub(TRes res) =
      _CopyWithStubImpl$Query$competitorDetail$competitorDetail;

  TRes call({
    Fragment$CompetitorDetail? competitor,
    String? $__typename,
  });
  CopyWith$Fragment$CompetitorDetail<TRes> get competitor;
}

class _CopyWithImpl$Query$competitorDetail$competitorDetail<TRes>
    implements CopyWith$Query$competitorDetail$competitorDetail<TRes> {
  _CopyWithImpl$Query$competitorDetail$competitorDetail(
    this._instance,
    this._then,
  );

  final Query$competitorDetail$competitorDetail _instance;

  final TRes Function(Query$competitorDetail$competitorDetail) _then;

  static const _undefined = {};

  TRes call({
    Object? competitor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$competitorDetail$competitorDetail(
        competitor: competitor == _undefined
            ? _instance.competitor
            : (competitor as Fragment$CompetitorDetail?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$CompetitorDetail<TRes> get competitor {
    final local$competitor = _instance.competitor;
    return local$competitor == null
        ? CopyWith$Fragment$CompetitorDetail.stub(_then(_instance))
        : CopyWith$Fragment$CompetitorDetail(
            local$competitor, (e) => call(competitor: e));
  }
}

class _CopyWithStubImpl$Query$competitorDetail$competitorDetail<TRes>
    implements CopyWith$Query$competitorDetail$competitorDetail<TRes> {
  _CopyWithStubImpl$Query$competitorDetail$competitorDetail(this._res);

  TRes _res;

  call({
    Fragment$CompetitorDetail? competitor,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$CompetitorDetail<TRes> get competitor =>
      CopyWith$Fragment$CompetitorDetail.stub(_res);
}
