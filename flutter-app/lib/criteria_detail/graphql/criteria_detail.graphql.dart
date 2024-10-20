import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Fragment$ContestCriteriaDetail {
  Fragment$ContestCriteriaDetail({
    required this.id,
    required this.name,
    required this.weight,
    this.description,
    required this.$__typename,
  });

  factory Fragment$ContestCriteriaDetail.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$weight = json['weight'];
    final l$description = json['description'];
    final l$$__typename = json['__typename'];
    return Fragment$ContestCriteriaDetail(
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
    if (!(other is Fragment$ContestCriteriaDetail) ||
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

extension UtilityExtension$Fragment$ContestCriteriaDetail
    on Fragment$ContestCriteriaDetail {
  CopyWith$Fragment$ContestCriteriaDetail<Fragment$ContestCriteriaDetail>
      get copyWith => CopyWith$Fragment$ContestCriteriaDetail(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ContestCriteriaDetail<TRes> {
  factory CopyWith$Fragment$ContestCriteriaDetail(
    Fragment$ContestCriteriaDetail instance,
    TRes Function(Fragment$ContestCriteriaDetail) then,
  ) = _CopyWithImpl$Fragment$ContestCriteriaDetail;

  factory CopyWith$Fragment$ContestCriteriaDetail.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ContestCriteriaDetail;

  TRes call({
    int? id,
    String? name,
    int? weight,
    String? description,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$ContestCriteriaDetail<TRes>
    implements CopyWith$Fragment$ContestCriteriaDetail<TRes> {
  _CopyWithImpl$Fragment$ContestCriteriaDetail(
    this._instance,
    this._then,
  );

  final Fragment$ContestCriteriaDetail _instance;

  final TRes Function(Fragment$ContestCriteriaDetail) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? weight = _undefined,
    Object? description = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ContestCriteriaDetail(
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

class _CopyWithStubImpl$Fragment$ContestCriteriaDetail<TRes>
    implements CopyWith$Fragment$ContestCriteriaDetail<TRes> {
  _CopyWithStubImpl$Fragment$ContestCriteriaDetail(this._res);

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

const fragmentDefinitionContestCriteriaDetail = FragmentDefinitionNode(
  name: NameNode(value: 'ContestCriteriaDetail'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Criteria'),
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
);
const documentNodeFragmentContestCriteriaDetail = DocumentNode(definitions: [
  fragmentDefinitionContestCriteriaDetail,
]);

extension ClientExtension$Fragment$ContestCriteriaDetail
    on graphql.GraphQLClient {
  void writeFragment$ContestCriteriaDetail({
    required Fragment$ContestCriteriaDetail data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'ContestCriteriaDetail',
            document: documentNodeFragmentContestCriteriaDetail,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$ContestCriteriaDetail? readFragment$ContestCriteriaDetail({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'ContestCriteriaDetail',
          document: documentNodeFragmentContestCriteriaDetail,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Fragment$ContestCriteriaDetail.fromJson(result);
  }
}

class Variables$Query$contestCriteriaDetail {
  factory Variables$Query$contestCriteriaDetail({required String id}) =>
      Variables$Query$contestCriteriaDetail._({
        r'id': id,
      });

  Variables$Query$contestCriteriaDetail._(this._$data);

  factory Variables$Query$contestCriteriaDetail.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$contestCriteriaDetail._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$contestCriteriaDetail<
          Variables$Query$contestCriteriaDetail>
      get copyWith => CopyWith$Variables$Query$contestCriteriaDetail(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$contestCriteriaDetail) ||
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

abstract class CopyWith$Variables$Query$contestCriteriaDetail<TRes> {
  factory CopyWith$Variables$Query$contestCriteriaDetail(
    Variables$Query$contestCriteriaDetail instance,
    TRes Function(Variables$Query$contestCriteriaDetail) then,
  ) = _CopyWithImpl$Variables$Query$contestCriteriaDetail;

  factory CopyWith$Variables$Query$contestCriteriaDetail.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$contestCriteriaDetail;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$contestCriteriaDetail<TRes>
    implements CopyWith$Variables$Query$contestCriteriaDetail<TRes> {
  _CopyWithImpl$Variables$Query$contestCriteriaDetail(
    this._instance,
    this._then,
  );

  final Variables$Query$contestCriteriaDetail _instance;

  final TRes Function(Variables$Query$contestCriteriaDetail) _then;

  static const _undefined = {};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Query$contestCriteriaDetail._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$contestCriteriaDetail<TRes>
    implements CopyWith$Variables$Query$contestCriteriaDetail<TRes> {
  _CopyWithStubImpl$Variables$Query$contestCriteriaDetail(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$contestCriteriaDetail {
  Query$contestCriteriaDetail({
    required this.criteriaDetail,
    required this.$__typename,
  });

  factory Query$contestCriteriaDetail.fromJson(Map<String, dynamic> json) {
    final l$criteriaDetail = json['criteriaDetail'];
    final l$$__typename = json['__typename'];
    return Query$contestCriteriaDetail(
      criteriaDetail: Query$contestCriteriaDetail$criteriaDetail.fromJson(
          (l$criteriaDetail as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$contestCriteriaDetail$criteriaDetail criteriaDetail;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$criteriaDetail = criteriaDetail;
    _resultData['criteriaDetail'] = l$criteriaDetail.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$criteriaDetail = criteriaDetail;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$criteriaDetail,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$contestCriteriaDetail) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$criteriaDetail = criteriaDetail;
    final lOther$criteriaDetail = other.criteriaDetail;
    if (l$criteriaDetail != lOther$criteriaDetail) {
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

extension UtilityExtension$Query$contestCriteriaDetail
    on Query$contestCriteriaDetail {
  CopyWith$Query$contestCriteriaDetail<Query$contestCriteriaDetail>
      get copyWith => CopyWith$Query$contestCriteriaDetail(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$contestCriteriaDetail<TRes> {
  factory CopyWith$Query$contestCriteriaDetail(
    Query$contestCriteriaDetail instance,
    TRes Function(Query$contestCriteriaDetail) then,
  ) = _CopyWithImpl$Query$contestCriteriaDetail;

  factory CopyWith$Query$contestCriteriaDetail.stub(TRes res) =
      _CopyWithStubImpl$Query$contestCriteriaDetail;

  TRes call({
    Query$contestCriteriaDetail$criteriaDetail? criteriaDetail,
    String? $__typename,
  });
  CopyWith$Query$contestCriteriaDetail$criteriaDetail<TRes> get criteriaDetail;
}

class _CopyWithImpl$Query$contestCriteriaDetail<TRes>
    implements CopyWith$Query$contestCriteriaDetail<TRes> {
  _CopyWithImpl$Query$contestCriteriaDetail(
    this._instance,
    this._then,
  );

  final Query$contestCriteriaDetail _instance;

  final TRes Function(Query$contestCriteriaDetail) _then;

  static const _undefined = {};

  TRes call({
    Object? criteriaDetail = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$contestCriteriaDetail(
        criteriaDetail: criteriaDetail == _undefined || criteriaDetail == null
            ? _instance.criteriaDetail
            : (criteriaDetail as Query$contestCriteriaDetail$criteriaDetail),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$contestCriteriaDetail$criteriaDetail<TRes> get criteriaDetail {
    final local$criteriaDetail = _instance.criteriaDetail;
    return CopyWith$Query$contestCriteriaDetail$criteriaDetail(
        local$criteriaDetail, (e) => call(criteriaDetail: e));
  }
}

class _CopyWithStubImpl$Query$contestCriteriaDetail<TRes>
    implements CopyWith$Query$contestCriteriaDetail<TRes> {
  _CopyWithStubImpl$Query$contestCriteriaDetail(this._res);

  TRes _res;

  call({
    Query$contestCriteriaDetail$criteriaDetail? criteriaDetail,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$contestCriteriaDetail$criteriaDetail<TRes>
      get criteriaDetail =>
          CopyWith$Query$contestCriteriaDetail$criteriaDetail.stub(_res);
}

const documentNodeQuerycontestCriteriaDetail = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'contestCriteriaDetail'),
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
        name: NameNode(value: 'criteriaDetail'),
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
            name: NameNode(value: 'criteria'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'ContestCriteriaDetail'),
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
  fragmentDefinitionContestCriteriaDetail,
]);
Query$contestCriteriaDetail _parserFn$Query$contestCriteriaDetail(
        Map<String, dynamic> data) =>
    Query$contestCriteriaDetail.fromJson(data);

class Options$Query$contestCriteriaDetail
    extends graphql.QueryOptions<Query$contestCriteriaDetail> {
  Options$Query$contestCriteriaDetail({
    String? operationName,
    required Variables$Query$contestCriteriaDetail variables,
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
          document: documentNodeQuerycontestCriteriaDetail,
          parserFn: _parserFn$Query$contestCriteriaDetail,
        );
}

class WatchOptions$Query$contestCriteriaDetail
    extends graphql.WatchQueryOptions<Query$contestCriteriaDetail> {
  WatchOptions$Query$contestCriteriaDetail({
    String? operationName,
    required Variables$Query$contestCriteriaDetail variables,
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
          document: documentNodeQuerycontestCriteriaDetail,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$contestCriteriaDetail,
        );
}

class FetchMoreOptions$Query$contestCriteriaDetail
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$contestCriteriaDetail({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$contestCriteriaDetail variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQuerycontestCriteriaDetail,
        );
}

extension ClientExtension$Query$contestCriteriaDetail on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$contestCriteriaDetail>>
      query$contestCriteriaDetail(
              Options$Query$contestCriteriaDetail options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$contestCriteriaDetail>
      watchQuery$contestCriteriaDetail(
              WatchOptions$Query$contestCriteriaDetail options) =>
          this.watchQuery(options);
  void writeQuery$contestCriteriaDetail({
    required Query$contestCriteriaDetail data,
    required Variables$Query$contestCriteriaDetail variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQuerycontestCriteriaDetail),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$contestCriteriaDetail? readQuery$contestCriteriaDetail({
    required Variables$Query$contestCriteriaDetail variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQuerycontestCriteriaDetail),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$contestCriteriaDetail.fromJson(result);
  }
}

class Query$contestCriteriaDetail$criteriaDetail {
  Query$contestCriteriaDetail$criteriaDetail({
    this.criteria,
    required this.$__typename,
  });

  factory Query$contestCriteriaDetail$criteriaDetail.fromJson(
      Map<String, dynamic> json) {
    final l$criteria = json['criteria'];
    final l$$__typename = json['__typename'];
    return Query$contestCriteriaDetail$criteriaDetail(
      criteria: l$criteria == null
          ? null
          : Fragment$ContestCriteriaDetail.fromJson(
              (l$criteria as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$ContestCriteriaDetail? criteria;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$criteria = criteria;
    _resultData['criteria'] = l$criteria?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$criteria = criteria;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$criteria,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$contestCriteriaDetail$criteriaDetail) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$contestCriteriaDetail$criteriaDetail
    on Query$contestCriteriaDetail$criteriaDetail {
  CopyWith$Query$contestCriteriaDetail$criteriaDetail<
          Query$contestCriteriaDetail$criteriaDetail>
      get copyWith => CopyWith$Query$contestCriteriaDetail$criteriaDetail(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$contestCriteriaDetail$criteriaDetail<TRes> {
  factory CopyWith$Query$contestCriteriaDetail$criteriaDetail(
    Query$contestCriteriaDetail$criteriaDetail instance,
    TRes Function(Query$contestCriteriaDetail$criteriaDetail) then,
  ) = _CopyWithImpl$Query$contestCriteriaDetail$criteriaDetail;

  factory CopyWith$Query$contestCriteriaDetail$criteriaDetail.stub(TRes res) =
      _CopyWithStubImpl$Query$contestCriteriaDetail$criteriaDetail;

  TRes call({
    Fragment$ContestCriteriaDetail? criteria,
    String? $__typename,
  });
  CopyWith$Fragment$ContestCriteriaDetail<TRes> get criteria;
}

class _CopyWithImpl$Query$contestCriteriaDetail$criteriaDetail<TRes>
    implements CopyWith$Query$contestCriteriaDetail$criteriaDetail<TRes> {
  _CopyWithImpl$Query$contestCriteriaDetail$criteriaDetail(
    this._instance,
    this._then,
  );

  final Query$contestCriteriaDetail$criteriaDetail _instance;

  final TRes Function(Query$contestCriteriaDetail$criteriaDetail) _then;

  static const _undefined = {};

  TRes call({
    Object? criteria = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$contestCriteriaDetail$criteriaDetail(
        criteria: criteria == _undefined
            ? _instance.criteria
            : (criteria as Fragment$ContestCriteriaDetail?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$ContestCriteriaDetail<TRes> get criteria {
    final local$criteria = _instance.criteria;
    return local$criteria == null
        ? CopyWith$Fragment$ContestCriteriaDetail.stub(_then(_instance))
        : CopyWith$Fragment$ContestCriteriaDetail(
            local$criteria, (e) => call(criteria: e));
  }
}

class _CopyWithStubImpl$Query$contestCriteriaDetail$criteriaDetail<TRes>
    implements CopyWith$Query$contestCriteriaDetail$criteriaDetail<TRes> {
  _CopyWithStubImpl$Query$contestCriteriaDetail$criteriaDetail(this._res);

  TRes _res;

  call({
    Fragment$ContestCriteriaDetail? criteria,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$ContestCriteriaDetail<TRes> get criteria =>
      CopyWith$Fragment$ContestCriteriaDetail.stub(_res);
}
