import '../../schema.graphql.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Query$contestDetail {
  factory Variables$Query$contestDetail({required String id}) =>
      Variables$Query$contestDetail._({
        r'id': id,
      });

  Variables$Query$contestDetail._(this._$data);

  factory Variables$Query$contestDetail.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$contestDetail._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$contestDetail<Variables$Query$contestDetail>
      get copyWith => CopyWith$Variables$Query$contestDetail(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$contestDetail) ||
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

abstract class CopyWith$Variables$Query$contestDetail<TRes> {
  factory CopyWith$Variables$Query$contestDetail(
    Variables$Query$contestDetail instance,
    TRes Function(Variables$Query$contestDetail) then,
  ) = _CopyWithImpl$Variables$Query$contestDetail;

  factory CopyWith$Variables$Query$contestDetail.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$contestDetail;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$contestDetail<TRes>
    implements CopyWith$Variables$Query$contestDetail<TRes> {
  _CopyWithImpl$Variables$Query$contestDetail(
    this._instance,
    this._then,
  );

  final Variables$Query$contestDetail _instance;

  final TRes Function(Variables$Query$contestDetail) _then;

  static const _undefined = {};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Query$contestDetail._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$contestDetail<TRes>
    implements CopyWith$Variables$Query$contestDetail<TRes> {
  _CopyWithStubImpl$Variables$Query$contestDetail(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$contestDetail {
  Query$contestDetail({
    required this.contestDetail,
    required this.$__typename,
  });

  factory Query$contestDetail.fromJson(Map<String, dynamic> json) {
    final l$contestDetail = json['contestDetail'];
    final l$$__typename = json['__typename'];
    return Query$contestDetail(
      contestDetail: Query$contestDetail$contestDetail.fromJson(
          (l$contestDetail as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$contestDetail$contestDetail contestDetail;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$contestDetail = contestDetail;
    _resultData['contestDetail'] = l$contestDetail.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$contestDetail = contestDetail;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$contestDetail,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$contestDetail) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$contestDetail = contestDetail;
    final lOther$contestDetail = other.contestDetail;
    if (l$contestDetail != lOther$contestDetail) {
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

extension UtilityExtension$Query$contestDetail on Query$contestDetail {
  CopyWith$Query$contestDetail<Query$contestDetail> get copyWith =>
      CopyWith$Query$contestDetail(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$contestDetail<TRes> {
  factory CopyWith$Query$contestDetail(
    Query$contestDetail instance,
    TRes Function(Query$contestDetail) then,
  ) = _CopyWithImpl$Query$contestDetail;

  factory CopyWith$Query$contestDetail.stub(TRes res) =
      _CopyWithStubImpl$Query$contestDetail;

  TRes call({
    Query$contestDetail$contestDetail? contestDetail,
    String? $__typename,
  });
  CopyWith$Query$contestDetail$contestDetail<TRes> get contestDetail;
}

class _CopyWithImpl$Query$contestDetail<TRes>
    implements CopyWith$Query$contestDetail<TRes> {
  _CopyWithImpl$Query$contestDetail(
    this._instance,
    this._then,
  );

  final Query$contestDetail _instance;

  final TRes Function(Query$contestDetail) _then;

  static const _undefined = {};

  TRes call({
    Object? contestDetail = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$contestDetail(
        contestDetail: contestDetail == _undefined || contestDetail == null
            ? _instance.contestDetail
            : (contestDetail as Query$contestDetail$contestDetail),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$contestDetail$contestDetail<TRes> get contestDetail {
    final local$contestDetail = _instance.contestDetail;
    return CopyWith$Query$contestDetail$contestDetail(
        local$contestDetail, (e) => call(contestDetail: e));
  }
}

class _CopyWithStubImpl$Query$contestDetail<TRes>
    implements CopyWith$Query$contestDetail<TRes> {
  _CopyWithStubImpl$Query$contestDetail(this._res);

  TRes _res;

  call({
    Query$contestDetail$contestDetail? contestDetail,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$contestDetail$contestDetail<TRes> get contestDetail =>
      CopyWith$Query$contestDetail$contestDetail.stub(_res);
}

const documentNodeQuerycontestDetail = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'contestDetail'),
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
        name: NameNode(value: 'contestDetail'),
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
            name: NameNode(value: 'contest'),
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
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'competitors'),
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
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'state'),
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
  ),
]);
Query$contestDetail _parserFn$Query$contestDetail(Map<String, dynamic> data) =>
    Query$contestDetail.fromJson(data);

class Options$Query$contestDetail
    extends graphql.QueryOptions<Query$contestDetail> {
  Options$Query$contestDetail({
    String? operationName,
    required Variables$Query$contestDetail variables,
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
          document: documentNodeQuerycontestDetail,
          parserFn: _parserFn$Query$contestDetail,
        );
}

class WatchOptions$Query$contestDetail
    extends graphql.WatchQueryOptions<Query$contestDetail> {
  WatchOptions$Query$contestDetail({
    String? operationName,
    required Variables$Query$contestDetail variables,
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
          document: documentNodeQuerycontestDetail,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$contestDetail,
        );
}

class FetchMoreOptions$Query$contestDetail extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$contestDetail({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$contestDetail variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQuerycontestDetail,
        );
}

extension ClientExtension$Query$contestDetail on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$contestDetail>> query$contestDetail(
          Options$Query$contestDetail options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$contestDetail> watchQuery$contestDetail(
          WatchOptions$Query$contestDetail options) =>
      this.watchQuery(options);
  void writeQuery$contestDetail({
    required Query$contestDetail data,
    required Variables$Query$contestDetail variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQuerycontestDetail),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$contestDetail? readQuery$contestDetail({
    required Variables$Query$contestDetail variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQuerycontestDetail),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$contestDetail.fromJson(result);
  }
}

class Query$contestDetail$contestDetail {
  Query$contestDetail$contestDetail({
    this.contest,
    required this.$__typename,
  });

  factory Query$contestDetail$contestDetail.fromJson(
      Map<String, dynamic> json) {
    final l$contest = json['contest'];
    final l$$__typename = json['__typename'];
    return Query$contestDetail$contestDetail(
      contest: l$contest == null
          ? null
          : Query$contestDetail$contestDetail$contest.fromJson(
              (l$contest as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$contestDetail$contestDetail$contest? contest;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$contest = contest;
    _resultData['contest'] = l$contest?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$contest = contest;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$contest,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$contestDetail$contestDetail) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$contest = contest;
    final lOther$contest = other.contest;
    if (l$contest != lOther$contest) {
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

extension UtilityExtension$Query$contestDetail$contestDetail
    on Query$contestDetail$contestDetail {
  CopyWith$Query$contestDetail$contestDetail<Query$contestDetail$contestDetail>
      get copyWith => CopyWith$Query$contestDetail$contestDetail(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$contestDetail$contestDetail<TRes> {
  factory CopyWith$Query$contestDetail$contestDetail(
    Query$contestDetail$contestDetail instance,
    TRes Function(Query$contestDetail$contestDetail) then,
  ) = _CopyWithImpl$Query$contestDetail$contestDetail;

  factory CopyWith$Query$contestDetail$contestDetail.stub(TRes res) =
      _CopyWithStubImpl$Query$contestDetail$contestDetail;

  TRes call({
    Query$contestDetail$contestDetail$contest? contest,
    String? $__typename,
  });
  CopyWith$Query$contestDetail$contestDetail$contest<TRes> get contest;
}

class _CopyWithImpl$Query$contestDetail$contestDetail<TRes>
    implements CopyWith$Query$contestDetail$contestDetail<TRes> {
  _CopyWithImpl$Query$contestDetail$contestDetail(
    this._instance,
    this._then,
  );

  final Query$contestDetail$contestDetail _instance;

  final TRes Function(Query$contestDetail$contestDetail) _then;

  static const _undefined = {};

  TRes call({
    Object? contest = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$contestDetail$contestDetail(
        contest: contest == _undefined
            ? _instance.contest
            : (contest as Query$contestDetail$contestDetail$contest?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$contestDetail$contestDetail$contest<TRes> get contest {
    final local$contest = _instance.contest;
    return local$contest == null
        ? CopyWith$Query$contestDetail$contestDetail$contest.stub(
            _then(_instance))
        : CopyWith$Query$contestDetail$contestDetail$contest(
            local$contest, (e) => call(contest: e));
  }
}

class _CopyWithStubImpl$Query$contestDetail$contestDetail<TRes>
    implements CopyWith$Query$contestDetail$contestDetail<TRes> {
  _CopyWithStubImpl$Query$contestDetail$contestDetail(this._res);

  TRes _res;

  call({
    Query$contestDetail$contestDetail$contest? contest,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$contestDetail$contestDetail$contest<TRes> get contest =>
      CopyWith$Query$contestDetail$contestDetail$contest.stub(_res);
}

class Query$contestDetail$contestDetail$contest {
  Query$contestDetail$contestDetail$contest({
    required this.id,
    required this.name,
    this.criteria,
    this.competitors,
    required this.state,
    required this.$__typename,
  });

  factory Query$contestDetail$contestDetail$contest.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$criteria = json['criteria'];
    final l$competitors = json['competitors'];
    final l$state = json['state'];
    final l$$__typename = json['__typename'];
    return Query$contestDetail$contestDetail$contest(
      id: (l$id as int),
      name: (l$name as String),
      criteria: (l$criteria as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$contestDetail$contestDetail$contest$criteria.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      competitors: (l$competitors as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$contestDetail$contestDetail$contest$competitors.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      state: fromJson$Enum$ContestState((l$state as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final List<Query$contestDetail$contestDetail$contest$criteria?>? criteria;

  final List<Query$contestDetail$contestDetail$contest$competitors?>?
      competitors;

  final Enum$ContestState state;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$criteria = criteria;
    _resultData['criteria'] = l$criteria?.map((e) => e?.toJson()).toList();
    final l$competitors = competitors;
    _resultData['competitors'] =
        l$competitors?.map((e) => e?.toJson()).toList();
    final l$state = state;
    _resultData['state'] = toJson$Enum$ContestState(l$state);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$criteria = criteria;
    final l$competitors = competitors;
    final l$state = state;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$criteria == null ? null : Object.hashAll(l$criteria.map((v) => v)),
      l$competitors == null
          ? null
          : Object.hashAll(l$competitors.map((v) => v)),
      l$state,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$contestDetail$contestDetail$contest) ||
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
    final l$criteria = criteria;
    final lOther$criteria = other.criteria;
    if (l$criteria != null && lOther$criteria != null) {
      if (l$criteria.length != lOther$criteria.length) {
        return false;
      }
      for (int i = 0; i < l$criteria.length; i++) {
        final l$criteria$entry = l$criteria[i];
        final lOther$criteria$entry = lOther$criteria[i];
        if (l$criteria$entry != lOther$criteria$entry) {
          return false;
        }
      }
    } else if (l$criteria != lOther$criteria) {
      return false;
    }
    final l$competitors = competitors;
    final lOther$competitors = other.competitors;
    if (l$competitors != null && lOther$competitors != null) {
      if (l$competitors.length != lOther$competitors.length) {
        return false;
      }
      for (int i = 0; i < l$competitors.length; i++) {
        final l$competitors$entry = l$competitors[i];
        final lOther$competitors$entry = lOther$competitors[i];
        if (l$competitors$entry != lOther$competitors$entry) {
          return false;
        }
      }
    } else if (l$competitors != lOther$competitors) {
      return false;
    }
    final l$state = state;
    final lOther$state = other.state;
    if (l$state != lOther$state) {
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

extension UtilityExtension$Query$contestDetail$contestDetail$contest
    on Query$contestDetail$contestDetail$contest {
  CopyWith$Query$contestDetail$contestDetail$contest<
          Query$contestDetail$contestDetail$contest>
      get copyWith => CopyWith$Query$contestDetail$contestDetail$contest(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$contestDetail$contestDetail$contest<TRes> {
  factory CopyWith$Query$contestDetail$contestDetail$contest(
    Query$contestDetail$contestDetail$contest instance,
    TRes Function(Query$contestDetail$contestDetail$contest) then,
  ) = _CopyWithImpl$Query$contestDetail$contestDetail$contest;

  factory CopyWith$Query$contestDetail$contestDetail$contest.stub(TRes res) =
      _CopyWithStubImpl$Query$contestDetail$contestDetail$contest;

  TRes call({
    int? id,
    String? name,
    List<Query$contestDetail$contestDetail$contest$criteria?>? criteria,
    List<Query$contestDetail$contestDetail$contest$competitors?>? competitors,
    Enum$ContestState? state,
    String? $__typename,
  });
  TRes criteria(
      Iterable<Query$contestDetail$contestDetail$contest$criteria?>? Function(
              Iterable<
                  CopyWith$Query$contestDetail$contestDetail$contest$criteria<
                      Query$contestDetail$contestDetail$contest$criteria>?>?)
          _fn);
  TRes competitors(
      Iterable<Query$contestDetail$contestDetail$contest$competitors?>? Function(
              Iterable<
                  CopyWith$Query$contestDetail$contestDetail$contest$competitors<
                      Query$contestDetail$contestDetail$contest$competitors>?>?)
          _fn);
}

class _CopyWithImpl$Query$contestDetail$contestDetail$contest<TRes>
    implements CopyWith$Query$contestDetail$contestDetail$contest<TRes> {
  _CopyWithImpl$Query$contestDetail$contestDetail$contest(
    this._instance,
    this._then,
  );

  final Query$contestDetail$contestDetail$contest _instance;

  final TRes Function(Query$contestDetail$contestDetail$contest) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? criteria = _undefined,
    Object? competitors = _undefined,
    Object? state = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$contestDetail$contestDetail$contest(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        criteria: criteria == _undefined
            ? _instance.criteria
            : (criteria
                as List<Query$contestDetail$contestDetail$contest$criteria?>?),
        competitors: competitors == _undefined
            ? _instance.competitors
            : (competitors as List<
                Query$contestDetail$contestDetail$contest$competitors?>?),
        state: state == _undefined || state == null
            ? _instance.state
            : (state as Enum$ContestState),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes criteria(
          Iterable<Query$contestDetail$contestDetail$contest$criteria?>? Function(
                  Iterable<
                      CopyWith$Query$contestDetail$contestDetail$contest$criteria<
                          Query$contestDetail$contestDetail$contest$criteria>?>?)
              _fn) =>
      call(
          criteria: _fn(_instance.criteria?.map((e) => e == null
              ? null
              : CopyWith$Query$contestDetail$contestDetail$contest$criteria(
                  e,
                  (i) => i,
                )))?.toList());
  TRes competitors(
          Iterable<Query$contestDetail$contestDetail$contest$competitors?>? Function(
                  Iterable<
                      CopyWith$Query$contestDetail$contestDetail$contest$competitors<
                          Query$contestDetail$contestDetail$contest$competitors>?>?)
              _fn) =>
      call(
          competitors: _fn(_instance.competitors?.map((e) => e == null
              ? null
              : CopyWith$Query$contestDetail$contestDetail$contest$competitors(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$contestDetail$contestDetail$contest<TRes>
    implements CopyWith$Query$contestDetail$contestDetail$contest<TRes> {
  _CopyWithStubImpl$Query$contestDetail$contestDetail$contest(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    List<Query$contestDetail$contestDetail$contest$criteria?>? criteria,
    List<Query$contestDetail$contestDetail$contest$competitors?>? competitors,
    Enum$ContestState? state,
    String? $__typename,
  }) =>
      _res;
  criteria(_fn) => _res;
  competitors(_fn) => _res;
}

class Query$contestDetail$contestDetail$contest$criteria {
  Query$contestDetail$contestDetail$contest$criteria({
    required this.id,
    required this.name,
    required this.weight,
    required this.$__typename,
  });

  factory Query$contestDetail$contestDetail$contest$criteria.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$weight = json['weight'];
    final l$$__typename = json['__typename'];
    return Query$contestDetail$contestDetail$contest$criteria(
      id: (l$id as int),
      name: (l$name as String),
      weight: (l$weight as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final int weight;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$weight = weight;
    _resultData['weight'] = l$weight;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$weight = weight;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$weight,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$contestDetail$contestDetail$contest$criteria) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$contestDetail$contestDetail$contest$criteria
    on Query$contestDetail$contestDetail$contest$criteria {
  CopyWith$Query$contestDetail$contestDetail$contest$criteria<
          Query$contestDetail$contestDetail$contest$criteria>
      get copyWith =>
          CopyWith$Query$contestDetail$contestDetail$contest$criteria(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$contestDetail$contestDetail$contest$criteria<
    TRes> {
  factory CopyWith$Query$contestDetail$contestDetail$contest$criteria(
    Query$contestDetail$contestDetail$contest$criteria instance,
    TRes Function(Query$contestDetail$contestDetail$contest$criteria) then,
  ) = _CopyWithImpl$Query$contestDetail$contestDetail$contest$criteria;

  factory CopyWith$Query$contestDetail$contestDetail$contest$criteria.stub(
          TRes res) =
      _CopyWithStubImpl$Query$contestDetail$contestDetail$contest$criteria;

  TRes call({
    int? id,
    String? name,
    int? weight,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$contestDetail$contestDetail$contest$criteria<TRes>
    implements
        CopyWith$Query$contestDetail$contestDetail$contest$criteria<TRes> {
  _CopyWithImpl$Query$contestDetail$contestDetail$contest$criteria(
    this._instance,
    this._then,
  );

  final Query$contestDetail$contestDetail$contest$criteria _instance;

  final TRes Function(Query$contestDetail$contestDetail$contest$criteria) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? weight = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$contestDetail$contestDetail$contest$criteria(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        weight: weight == _undefined || weight == null
            ? _instance.weight
            : (weight as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$contestDetail$contestDetail$contest$criteria<TRes>
    implements
        CopyWith$Query$contestDetail$contestDetail$contest$criteria<TRes> {
  _CopyWithStubImpl$Query$contestDetail$contestDetail$contest$criteria(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    int? weight,
    String? $__typename,
  }) =>
      _res;
}

class Query$contestDetail$contestDetail$contest$competitors {
  Query$contestDetail$contestDetail$contest$competitors({
    required this.id,
    required this.name,
    this.rating,
    required this.label,
    required this.$__typename,
  });

  factory Query$contestDetail$contestDetail$contest$competitors.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$rating = json['rating'];
    final l$label = json['label'];
    final l$$__typename = json['__typename'];
    return Query$contestDetail$contestDetail$contest$competitors(
      id: (l$id as int),
      name: (l$name as String),
      rating: (l$rating as num?)?.toDouble(),
      label: (l$label as String),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final double? rating;

  final String label;

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
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$rating,
      l$label,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$contestDetail$contestDetail$contest$competitors) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$contestDetail$contestDetail$contest$competitors
    on Query$contestDetail$contestDetail$contest$competitors {
  CopyWith$Query$contestDetail$contestDetail$contest$competitors<
          Query$contestDetail$contestDetail$contest$competitors>
      get copyWith =>
          CopyWith$Query$contestDetail$contestDetail$contest$competitors(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$contestDetail$contestDetail$contest$competitors<
    TRes> {
  factory CopyWith$Query$contestDetail$contestDetail$contest$competitors(
    Query$contestDetail$contestDetail$contest$competitors instance,
    TRes Function(Query$contestDetail$contestDetail$contest$competitors) then,
  ) = _CopyWithImpl$Query$contestDetail$contestDetail$contest$competitors;

  factory CopyWith$Query$contestDetail$contestDetail$contest$competitors.stub(
          TRes res) =
      _CopyWithStubImpl$Query$contestDetail$contestDetail$contest$competitors;

  TRes call({
    int? id,
    String? name,
    double? rating,
    String? label,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$contestDetail$contestDetail$contest$competitors<TRes>
    implements
        CopyWith$Query$contestDetail$contestDetail$contest$competitors<TRes> {
  _CopyWithImpl$Query$contestDetail$contestDetail$contest$competitors(
    this._instance,
    this._then,
  );

  final Query$contestDetail$contestDetail$contest$competitors _instance;

  final TRes Function(Query$contestDetail$contestDetail$contest$competitors)
      _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? rating = _undefined,
    Object? label = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$contestDetail$contestDetail$contest$competitors(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        rating: rating == _undefined ? _instance.rating : (rating as double?),
        label: label == _undefined || label == null
            ? _instance.label
            : (label as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$contestDetail$contestDetail$contest$competitors<
        TRes>
    implements
        CopyWith$Query$contestDetail$contestDetail$contest$competitors<TRes> {
  _CopyWithStubImpl$Query$contestDetail$contestDetail$contest$competitors(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    double? rating,
    String? label,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$contestResult {
  factory Variables$Query$contestResult({required String id}) =>
      Variables$Query$contestResult._({
        r'id': id,
      });

  Variables$Query$contestResult._(this._$data);

  factory Variables$Query$contestResult.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$contestResult._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$contestResult<Variables$Query$contestResult>
      get copyWith => CopyWith$Variables$Query$contestResult(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$contestResult) ||
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

abstract class CopyWith$Variables$Query$contestResult<TRes> {
  factory CopyWith$Variables$Query$contestResult(
    Variables$Query$contestResult instance,
    TRes Function(Variables$Query$contestResult) then,
  ) = _CopyWithImpl$Variables$Query$contestResult;

  factory CopyWith$Variables$Query$contestResult.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$contestResult;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$contestResult<TRes>
    implements CopyWith$Variables$Query$contestResult<TRes> {
  _CopyWithImpl$Variables$Query$contestResult(
    this._instance,
    this._then,
  );

  final Variables$Query$contestResult _instance;

  final TRes Function(Variables$Query$contestResult) _then;

  static const _undefined = {};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Query$contestResult._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$contestResult<TRes>
    implements CopyWith$Variables$Query$contestResult<TRes> {
  _CopyWithStubImpl$Variables$Query$contestResult(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$contestResult {
  Query$contestResult({
    required this.contestResult,
    required this.$__typename,
  });

  factory Query$contestResult.fromJson(Map<String, dynamic> json) {
    final l$contestResult = json['contestResult'];
    final l$$__typename = json['__typename'];
    return Query$contestResult(
      contestResult: Query$contestResult$contestResult.fromJson(
          (l$contestResult as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$contestResult$contestResult contestResult;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$contestResult = contestResult;
    _resultData['contestResult'] = l$contestResult.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$contestResult = contestResult;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$contestResult,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$contestResult) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$contestResult = contestResult;
    final lOther$contestResult = other.contestResult;
    if (l$contestResult != lOther$contestResult) {
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

extension UtilityExtension$Query$contestResult on Query$contestResult {
  CopyWith$Query$contestResult<Query$contestResult> get copyWith =>
      CopyWith$Query$contestResult(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$contestResult<TRes> {
  factory CopyWith$Query$contestResult(
    Query$contestResult instance,
    TRes Function(Query$contestResult) then,
  ) = _CopyWithImpl$Query$contestResult;

  factory CopyWith$Query$contestResult.stub(TRes res) =
      _CopyWithStubImpl$Query$contestResult;

  TRes call({
    Query$contestResult$contestResult? contestResult,
    String? $__typename,
  });
  CopyWith$Query$contestResult$contestResult<TRes> get contestResult;
}

class _CopyWithImpl$Query$contestResult<TRes>
    implements CopyWith$Query$contestResult<TRes> {
  _CopyWithImpl$Query$contestResult(
    this._instance,
    this._then,
  );

  final Query$contestResult _instance;

  final TRes Function(Query$contestResult) _then;

  static const _undefined = {};

  TRes call({
    Object? contestResult = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$contestResult(
        contestResult: contestResult == _undefined || contestResult == null
            ? _instance.contestResult
            : (contestResult as Query$contestResult$contestResult),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$contestResult$contestResult<TRes> get contestResult {
    final local$contestResult = _instance.contestResult;
    return CopyWith$Query$contestResult$contestResult(
        local$contestResult, (e) => call(contestResult: e));
  }
}

class _CopyWithStubImpl$Query$contestResult<TRes>
    implements CopyWith$Query$contestResult<TRes> {
  _CopyWithStubImpl$Query$contestResult(this._res);

  TRes _res;

  call({
    Query$contestResult$contestResult? contestResult,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$contestResult$contestResult<TRes> get contestResult =>
      CopyWith$Query$contestResult$contestResult.stub(_res);
}

const documentNodeQuerycontestResult = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'contestResult'),
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
        name: NameNode(value: 'contestResult'),
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
            name: NameNode(value: 'errors'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'code'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'message'),
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
            name: NameNode(value: 'results'),
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
                name: NameNode(value: 'label'),
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
                name: NameNode(value: 'score'),
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
  ),
]);
Query$contestResult _parserFn$Query$contestResult(Map<String, dynamic> data) =>
    Query$contestResult.fromJson(data);

class Options$Query$contestResult
    extends graphql.QueryOptions<Query$contestResult> {
  Options$Query$contestResult({
    String? operationName,
    required Variables$Query$contestResult variables,
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
          document: documentNodeQuerycontestResult,
          parserFn: _parserFn$Query$contestResult,
        );
}

class WatchOptions$Query$contestResult
    extends graphql.WatchQueryOptions<Query$contestResult> {
  WatchOptions$Query$contestResult({
    String? operationName,
    required Variables$Query$contestResult variables,
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
          document: documentNodeQuerycontestResult,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$contestResult,
        );
}

class FetchMoreOptions$Query$contestResult extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$contestResult({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$contestResult variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQuerycontestResult,
        );
}

extension ClientExtension$Query$contestResult on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$contestResult>> query$contestResult(
          Options$Query$contestResult options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$contestResult> watchQuery$contestResult(
          WatchOptions$Query$contestResult options) =>
      this.watchQuery(options);
  void writeQuery$contestResult({
    required Query$contestResult data,
    required Variables$Query$contestResult variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQuerycontestResult),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$contestResult? readQuery$contestResult({
    required Variables$Query$contestResult variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQuerycontestResult),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$contestResult.fromJson(result);
  }
}

class Query$contestResult$contestResult {
  Query$contestResult$contestResult({
    required this.errors,
    this.results,
    required this.$__typename,
  });

  factory Query$contestResult$contestResult.fromJson(
      Map<String, dynamic> json) {
    final l$errors = json['errors'];
    final l$results = json['results'];
    final l$$__typename = json['__typename'];
    return Query$contestResult$contestResult(
      errors: (l$errors as List<dynamic>)
          .map((e) => Query$contestResult$contestResult$errors.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      results: (l$results as List<dynamic>?)
          ?.map((e) => Query$contestResult$contestResult$results.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$contestResult$contestResult$errors> errors;

  final List<Query$contestResult$contestResult$results>? results;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$errors = errors;
    _resultData['errors'] = l$errors.map((e) => e.toJson()).toList();
    final l$results = results;
    _resultData['results'] = l$results?.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$errors = errors;
    final l$results = results;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$errors.map((v) => v)),
      l$results == null ? null : Object.hashAll(l$results.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$contestResult$contestResult) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$errors = errors;
    final lOther$errors = other.errors;
    if (l$errors.length != lOther$errors.length) {
      return false;
    }
    for (int i = 0; i < l$errors.length; i++) {
      final l$errors$entry = l$errors[i];
      final lOther$errors$entry = lOther$errors[i];
      if (l$errors$entry != lOther$errors$entry) {
        return false;
      }
    }
    final l$results = results;
    final lOther$results = other.results;
    if (l$results != null && lOther$results != null) {
      if (l$results.length != lOther$results.length) {
        return false;
      }
      for (int i = 0; i < l$results.length; i++) {
        final l$results$entry = l$results[i];
        final lOther$results$entry = lOther$results[i];
        if (l$results$entry != lOther$results$entry) {
          return false;
        }
      }
    } else if (l$results != lOther$results) {
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

extension UtilityExtension$Query$contestResult$contestResult
    on Query$contestResult$contestResult {
  CopyWith$Query$contestResult$contestResult<Query$contestResult$contestResult>
      get copyWith => CopyWith$Query$contestResult$contestResult(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$contestResult$contestResult<TRes> {
  factory CopyWith$Query$contestResult$contestResult(
    Query$contestResult$contestResult instance,
    TRes Function(Query$contestResult$contestResult) then,
  ) = _CopyWithImpl$Query$contestResult$contestResult;

  factory CopyWith$Query$contestResult$contestResult.stub(TRes res) =
      _CopyWithStubImpl$Query$contestResult$contestResult;

  TRes call({
    List<Query$contestResult$contestResult$errors>? errors,
    List<Query$contestResult$contestResult$results>? results,
    String? $__typename,
  });
  TRes errors(
      Iterable<Query$contestResult$contestResult$errors> Function(
              Iterable<
                  CopyWith$Query$contestResult$contestResult$errors<
                      Query$contestResult$contestResult$errors>>)
          _fn);
  TRes results(
      Iterable<Query$contestResult$contestResult$results>? Function(
              Iterable<
                  CopyWith$Query$contestResult$contestResult$results<
                      Query$contestResult$contestResult$results>>?)
          _fn);
}

class _CopyWithImpl$Query$contestResult$contestResult<TRes>
    implements CopyWith$Query$contestResult$contestResult<TRes> {
  _CopyWithImpl$Query$contestResult$contestResult(
    this._instance,
    this._then,
  );

  final Query$contestResult$contestResult _instance;

  final TRes Function(Query$contestResult$contestResult) _then;

  static const _undefined = {};

  TRes call({
    Object? errors = _undefined,
    Object? results = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$contestResult$contestResult(
        errors: errors == _undefined || errors == null
            ? _instance.errors
            : (errors as List<Query$contestResult$contestResult$errors>),
        results: results == _undefined
            ? _instance.results
            : (results as List<Query$contestResult$contestResult$results>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes errors(
          Iterable<Query$contestResult$contestResult$errors> Function(
                  Iterable<
                      CopyWith$Query$contestResult$contestResult$errors<
                          Query$contestResult$contestResult$errors>>)
              _fn) =>
      call(
          errors: _fn(_instance.errors
              .map((e) => CopyWith$Query$contestResult$contestResult$errors(
                    e,
                    (i) => i,
                  ))).toList());
  TRes results(
          Iterable<Query$contestResult$contestResult$results>? Function(
                  Iterable<
                      CopyWith$Query$contestResult$contestResult$results<
                          Query$contestResult$contestResult$results>>?)
              _fn) =>
      call(
          results: _fn(_instance.results
              ?.map((e) => CopyWith$Query$contestResult$contestResult$results(
                    e,
                    (i) => i,
                  )))?.toList());
}

class _CopyWithStubImpl$Query$contestResult$contestResult<TRes>
    implements CopyWith$Query$contestResult$contestResult<TRes> {
  _CopyWithStubImpl$Query$contestResult$contestResult(this._res);

  TRes _res;

  call({
    List<Query$contestResult$contestResult$errors>? errors,
    List<Query$contestResult$contestResult$results>? results,
    String? $__typename,
  }) =>
      _res;
  errors(_fn) => _res;
  results(_fn) => _res;
}

class Query$contestResult$contestResult$errors {
  Query$contestResult$contestResult$errors({
    required this.code,
    this.message,
    required this.$__typename,
  });

  factory Query$contestResult$contestResult$errors.fromJson(
      Map<String, dynamic> json) {
    final l$code = json['code'];
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Query$contestResult$contestResult$errors(
      code: (l$code as String),
      message: (l$message as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String code;

  final String? message;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$code = code;
    _resultData['code'] = l$code;
    final l$message = message;
    _resultData['message'] = l$message;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$code = code;
    final l$message = message;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$code,
      l$message,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$contestResult$contestResult$errors) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
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

extension UtilityExtension$Query$contestResult$contestResult$errors
    on Query$contestResult$contestResult$errors {
  CopyWith$Query$contestResult$contestResult$errors<
          Query$contestResult$contestResult$errors>
      get copyWith => CopyWith$Query$contestResult$contestResult$errors(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$contestResult$contestResult$errors<TRes> {
  factory CopyWith$Query$contestResult$contestResult$errors(
    Query$contestResult$contestResult$errors instance,
    TRes Function(Query$contestResult$contestResult$errors) then,
  ) = _CopyWithImpl$Query$contestResult$contestResult$errors;

  factory CopyWith$Query$contestResult$contestResult$errors.stub(TRes res) =
      _CopyWithStubImpl$Query$contestResult$contestResult$errors;

  TRes call({
    String? code,
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$contestResult$contestResult$errors<TRes>
    implements CopyWith$Query$contestResult$contestResult$errors<TRes> {
  _CopyWithImpl$Query$contestResult$contestResult$errors(
    this._instance,
    this._then,
  );

  final Query$contestResult$contestResult$errors _instance;

  final TRes Function(Query$contestResult$contestResult$errors) _then;

  static const _undefined = {};

  TRes call({
    Object? code = _undefined,
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$contestResult$contestResult$errors(
        code: code == _undefined || code == null
            ? _instance.code
            : (code as String),
        message:
            message == _undefined ? _instance.message : (message as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$contestResult$contestResult$errors<TRes>
    implements CopyWith$Query$contestResult$contestResult$errors<TRes> {
  _CopyWithStubImpl$Query$contestResult$contestResult$errors(this._res);

  TRes _res;

  call({
    String? code,
    String? message,
    String? $__typename,
  }) =>
      _res;
}

class Query$contestResult$contestResult$results {
  Query$contestResult$contestResult$results({
    required this.id,
    required this.label,
    required this.name,
    required this.score,
    required this.$__typename,
  });

  factory Query$contestResult$contestResult$results.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$label = json['label'];
    final l$name = json['name'];
    final l$score = json['score'];
    final l$$__typename = json['__typename'];
    return Query$contestResult$contestResult$results(
      id: (l$id as int),
      label: (l$label as String),
      name: (l$name as String),
      score: (l$score as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String label;

  final String name;

  final double score;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$label = label;
    _resultData['label'] = l$label;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$score = score;
    _resultData['score'] = l$score;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$label = label;
    final l$name = name;
    final l$score = score;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$label,
      l$name,
      l$score,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$contestResult$contestResult$results) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$label = label;
    final lOther$label = other.label;
    if (l$label != lOther$label) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$score = score;
    final lOther$score = other.score;
    if (l$score != lOther$score) {
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

extension UtilityExtension$Query$contestResult$contestResult$results
    on Query$contestResult$contestResult$results {
  CopyWith$Query$contestResult$contestResult$results<
          Query$contestResult$contestResult$results>
      get copyWith => CopyWith$Query$contestResult$contestResult$results(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$contestResult$contestResult$results<TRes> {
  factory CopyWith$Query$contestResult$contestResult$results(
    Query$contestResult$contestResult$results instance,
    TRes Function(Query$contestResult$contestResult$results) then,
  ) = _CopyWithImpl$Query$contestResult$contestResult$results;

  factory CopyWith$Query$contestResult$contestResult$results.stub(TRes res) =
      _CopyWithStubImpl$Query$contestResult$contestResult$results;

  TRes call({
    int? id,
    String? label,
    String? name,
    double? score,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$contestResult$contestResult$results<TRes>
    implements CopyWith$Query$contestResult$contestResult$results<TRes> {
  _CopyWithImpl$Query$contestResult$contestResult$results(
    this._instance,
    this._then,
  );

  final Query$contestResult$contestResult$results _instance;

  final TRes Function(Query$contestResult$contestResult$results) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? label = _undefined,
    Object? name = _undefined,
    Object? score = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$contestResult$contestResult$results(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        label: label == _undefined || label == null
            ? _instance.label
            : (label as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        score: score == _undefined || score == null
            ? _instance.score
            : (score as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$contestResult$contestResult$results<TRes>
    implements CopyWith$Query$contestResult$contestResult$results<TRes> {
  _CopyWithStubImpl$Query$contestResult$contestResult$results(this._res);

  TRes _res;

  call({
    int? id,
    String? label,
    String? name,
    double? score,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$ratingDetail {
  factory Variables$Query$ratingDetail({required String id}) =>
      Variables$Query$ratingDetail._({
        r'id': id,
      });

  Variables$Query$ratingDetail._(this._$data);

  factory Variables$Query$ratingDetail.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$ratingDetail._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$ratingDetail<Variables$Query$ratingDetail>
      get copyWith => CopyWith$Variables$Query$ratingDetail(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$ratingDetail) ||
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

abstract class CopyWith$Variables$Query$ratingDetail<TRes> {
  factory CopyWith$Variables$Query$ratingDetail(
    Variables$Query$ratingDetail instance,
    TRes Function(Variables$Query$ratingDetail) then,
  ) = _CopyWithImpl$Variables$Query$ratingDetail;

  factory CopyWith$Variables$Query$ratingDetail.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ratingDetail;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$ratingDetail<TRes>
    implements CopyWith$Variables$Query$ratingDetail<TRes> {
  _CopyWithImpl$Variables$Query$ratingDetail(
    this._instance,
    this._then,
  );

  final Variables$Query$ratingDetail _instance;

  final TRes Function(Variables$Query$ratingDetail) _then;

  static const _undefined = {};

  TRes call({Object? id = _undefined}) => _then(Variables$Query$ratingDetail._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$ratingDetail<TRes>
    implements CopyWith$Variables$Query$ratingDetail<TRes> {
  _CopyWithStubImpl$Variables$Query$ratingDetail(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$ratingDetail {
  Query$ratingDetail({
    required this.ratingDetailByCompetitorId,
    required this.$__typename,
  });

  factory Query$ratingDetail.fromJson(Map<String, dynamic> json) {
    final l$ratingDetailByCompetitorId = json['ratingDetailByCompetitorId'];
    final l$$__typename = json['__typename'];
    return Query$ratingDetail(
      ratingDetailByCompetitorId:
          Query$ratingDetail$ratingDetailByCompetitorId.fromJson(
              (l$ratingDetailByCompetitorId as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ratingDetail$ratingDetailByCompetitorId
      ratingDetailByCompetitorId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$ratingDetailByCompetitorId = ratingDetailByCompetitorId;
    _resultData['ratingDetailByCompetitorId'] =
        l$ratingDetailByCompetitorId.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$ratingDetailByCompetitorId = ratingDetailByCompetitorId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$ratingDetailByCompetitorId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ratingDetail) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$ratingDetailByCompetitorId = ratingDetailByCompetitorId;
    final lOther$ratingDetailByCompetitorId = other.ratingDetailByCompetitorId;
    if (l$ratingDetailByCompetitorId != lOther$ratingDetailByCompetitorId) {
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

extension UtilityExtension$Query$ratingDetail on Query$ratingDetail {
  CopyWith$Query$ratingDetail<Query$ratingDetail> get copyWith =>
      CopyWith$Query$ratingDetail(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ratingDetail<TRes> {
  factory CopyWith$Query$ratingDetail(
    Query$ratingDetail instance,
    TRes Function(Query$ratingDetail) then,
  ) = _CopyWithImpl$Query$ratingDetail;

  factory CopyWith$Query$ratingDetail.stub(TRes res) =
      _CopyWithStubImpl$Query$ratingDetail;

  TRes call({
    Query$ratingDetail$ratingDetailByCompetitorId? ratingDetailByCompetitorId,
    String? $__typename,
  });
  CopyWith$Query$ratingDetail$ratingDetailByCompetitorId<TRes>
      get ratingDetailByCompetitorId;
}

class _CopyWithImpl$Query$ratingDetail<TRes>
    implements CopyWith$Query$ratingDetail<TRes> {
  _CopyWithImpl$Query$ratingDetail(
    this._instance,
    this._then,
  );

  final Query$ratingDetail _instance;

  final TRes Function(Query$ratingDetail) _then;

  static const _undefined = {};

  TRes call({
    Object? ratingDetailByCompetitorId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ratingDetail(
        ratingDetailByCompetitorId: ratingDetailByCompetitorId == _undefined ||
                ratingDetailByCompetitorId == null
            ? _instance.ratingDetailByCompetitorId
            : (ratingDetailByCompetitorId
                as Query$ratingDetail$ratingDetailByCompetitorId),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$ratingDetail$ratingDetailByCompetitorId<TRes>
      get ratingDetailByCompetitorId {
    final local$ratingDetailByCompetitorId =
        _instance.ratingDetailByCompetitorId;
    return CopyWith$Query$ratingDetail$ratingDetailByCompetitorId(
        local$ratingDetailByCompetitorId,
        (e) => call(ratingDetailByCompetitorId: e));
  }
}

class _CopyWithStubImpl$Query$ratingDetail<TRes>
    implements CopyWith$Query$ratingDetail<TRes> {
  _CopyWithStubImpl$Query$ratingDetail(this._res);

  TRes _res;

  call({
    Query$ratingDetail$ratingDetailByCompetitorId? ratingDetailByCompetitorId,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$ratingDetail$ratingDetailByCompetitorId<TRes>
      get ratingDetailByCompetitorId =>
          CopyWith$Query$ratingDetail$ratingDetailByCompetitorId.stub(_res);
}

const documentNodeQueryratingDetail = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ratingDetail'),
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
        name: NameNode(value: 'ratingDetailByCompetitorId'),
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
            name: NameNode(value: 'errors'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'message'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'code'),
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
            name: NameNode(value: 'criteria'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'criteriaId'),
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
                name: NameNode(value: 'description'),
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
                name: NameNode(value: 'rating'),
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
            name: NameNode(value: 'finalRating'),
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
]);
Query$ratingDetail _parserFn$Query$ratingDetail(Map<String, dynamic> data) =>
    Query$ratingDetail.fromJson(data);

class Options$Query$ratingDetail
    extends graphql.QueryOptions<Query$ratingDetail> {
  Options$Query$ratingDetail({
    String? operationName,
    required Variables$Query$ratingDetail variables,
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
          document: documentNodeQueryratingDetail,
          parserFn: _parserFn$Query$ratingDetail,
        );
}

class WatchOptions$Query$ratingDetail
    extends graphql.WatchQueryOptions<Query$ratingDetail> {
  WatchOptions$Query$ratingDetail({
    String? operationName,
    required Variables$Query$ratingDetail variables,
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
          document: documentNodeQueryratingDetail,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$ratingDetail,
        );
}

class FetchMoreOptions$Query$ratingDetail extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ratingDetail({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$ratingDetail variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryratingDetail,
        );
}

extension ClientExtension$Query$ratingDetail on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ratingDetail>> query$ratingDetail(
          Options$Query$ratingDetail options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$ratingDetail> watchQuery$ratingDetail(
          WatchOptions$Query$ratingDetail options) =>
      this.watchQuery(options);
  void writeQuery$ratingDetail({
    required Query$ratingDetail data,
    required Variables$Query$ratingDetail variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryratingDetail),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$ratingDetail? readQuery$ratingDetail({
    required Variables$Query$ratingDetail variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryratingDetail),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$ratingDetail.fromJson(result);
  }
}

class Query$ratingDetail$ratingDetailByCompetitorId {
  Query$ratingDetail$ratingDetailByCompetitorId({
    required this.errors,
    this.criteria,
    this.finalRating,
    required this.$__typename,
  });

  factory Query$ratingDetail$ratingDetailByCompetitorId.fromJson(
      Map<String, dynamic> json) {
    final l$errors = json['errors'];
    final l$criteria = json['criteria'];
    final l$finalRating = json['finalRating'];
    final l$$__typename = json['__typename'];
    return Query$ratingDetail$ratingDetailByCompetitorId(
      errors: (l$errors as List<dynamic>)
          .map((e) =>
              Query$ratingDetail$ratingDetailByCompetitorId$errors.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      criteria: (l$criteria as List<dynamic>?)
          ?.map((e) =>
              Query$ratingDetail$ratingDetailByCompetitorId$criteria.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      finalRating: (l$finalRating as num?)?.toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$ratingDetail$ratingDetailByCompetitorId$errors> errors;

  final List<Query$ratingDetail$ratingDetailByCompetitorId$criteria>? criteria;

  final double? finalRating;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$errors = errors;
    _resultData['errors'] = l$errors.map((e) => e.toJson()).toList();
    final l$criteria = criteria;
    _resultData['criteria'] = l$criteria?.map((e) => e.toJson()).toList();
    final l$finalRating = finalRating;
    _resultData['finalRating'] = l$finalRating;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$errors = errors;
    final l$criteria = criteria;
    final l$finalRating = finalRating;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$errors.map((v) => v)),
      l$criteria == null ? null : Object.hashAll(l$criteria.map((v) => v)),
      l$finalRating,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ratingDetail$ratingDetailByCompetitorId) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$errors = errors;
    final lOther$errors = other.errors;
    if (l$errors.length != lOther$errors.length) {
      return false;
    }
    for (int i = 0; i < l$errors.length; i++) {
      final l$errors$entry = l$errors[i];
      final lOther$errors$entry = lOther$errors[i];
      if (l$errors$entry != lOther$errors$entry) {
        return false;
      }
    }
    final l$criteria = criteria;
    final lOther$criteria = other.criteria;
    if (l$criteria != null && lOther$criteria != null) {
      if (l$criteria.length != lOther$criteria.length) {
        return false;
      }
      for (int i = 0; i < l$criteria.length; i++) {
        final l$criteria$entry = l$criteria[i];
        final lOther$criteria$entry = lOther$criteria[i];
        if (l$criteria$entry != lOther$criteria$entry) {
          return false;
        }
      }
    } else if (l$criteria != lOther$criteria) {
      return false;
    }
    final l$finalRating = finalRating;
    final lOther$finalRating = other.finalRating;
    if (l$finalRating != lOther$finalRating) {
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

extension UtilityExtension$Query$ratingDetail$ratingDetailByCompetitorId
    on Query$ratingDetail$ratingDetailByCompetitorId {
  CopyWith$Query$ratingDetail$ratingDetailByCompetitorId<
          Query$ratingDetail$ratingDetailByCompetitorId>
      get copyWith => CopyWith$Query$ratingDetail$ratingDetailByCompetitorId(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ratingDetail$ratingDetailByCompetitorId<TRes> {
  factory CopyWith$Query$ratingDetail$ratingDetailByCompetitorId(
    Query$ratingDetail$ratingDetailByCompetitorId instance,
    TRes Function(Query$ratingDetail$ratingDetailByCompetitorId) then,
  ) = _CopyWithImpl$Query$ratingDetail$ratingDetailByCompetitorId;

  factory CopyWith$Query$ratingDetail$ratingDetailByCompetitorId.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ratingDetail$ratingDetailByCompetitorId;

  TRes call({
    List<Query$ratingDetail$ratingDetailByCompetitorId$errors>? errors,
    List<Query$ratingDetail$ratingDetailByCompetitorId$criteria>? criteria,
    double? finalRating,
    String? $__typename,
  });
  TRes errors(
      Iterable<Query$ratingDetail$ratingDetailByCompetitorId$errors> Function(
              Iterable<
                  CopyWith$Query$ratingDetail$ratingDetailByCompetitorId$errors<
                      Query$ratingDetail$ratingDetailByCompetitorId$errors>>)
          _fn);
  TRes criteria(
      Iterable<Query$ratingDetail$ratingDetailByCompetitorId$criteria>? Function(
              Iterable<
                  CopyWith$Query$ratingDetail$ratingDetailByCompetitorId$criteria<
                      Query$ratingDetail$ratingDetailByCompetitorId$criteria>>?)
          _fn);
}

class _CopyWithImpl$Query$ratingDetail$ratingDetailByCompetitorId<TRes>
    implements CopyWith$Query$ratingDetail$ratingDetailByCompetitorId<TRes> {
  _CopyWithImpl$Query$ratingDetail$ratingDetailByCompetitorId(
    this._instance,
    this._then,
  );

  final Query$ratingDetail$ratingDetailByCompetitorId _instance;

  final TRes Function(Query$ratingDetail$ratingDetailByCompetitorId) _then;

  static const _undefined = {};

  TRes call({
    Object? errors = _undefined,
    Object? criteria = _undefined,
    Object? finalRating = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ratingDetail$ratingDetailByCompetitorId(
        errors: errors == _undefined || errors == null
            ? _instance.errors
            : (errors
                as List<Query$ratingDetail$ratingDetailByCompetitorId$errors>),
        criteria: criteria == _undefined
            ? _instance.criteria
            : (criteria as List<
                Query$ratingDetail$ratingDetailByCompetitorId$criteria>?),
        finalRating: finalRating == _undefined
            ? _instance.finalRating
            : (finalRating as double?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes errors(
          Iterable<Query$ratingDetail$ratingDetailByCompetitorId$errors> Function(
                  Iterable<
                      CopyWith$Query$ratingDetail$ratingDetailByCompetitorId$errors<
                          Query$ratingDetail$ratingDetailByCompetitorId$errors>>)
              _fn) =>
      call(
          errors: _fn(_instance.errors.map((e) =>
              CopyWith$Query$ratingDetail$ratingDetailByCompetitorId$errors(
                e,
                (i) => i,
              ))).toList());
  TRes criteria(
          Iterable<Query$ratingDetail$ratingDetailByCompetitorId$criteria>? Function(
                  Iterable<
                      CopyWith$Query$ratingDetail$ratingDetailByCompetitorId$criteria<
                          Query$ratingDetail$ratingDetailByCompetitorId$criteria>>?)
              _fn) =>
      call(
          criteria: _fn(_instance.criteria?.map((e) =>
              CopyWith$Query$ratingDetail$ratingDetailByCompetitorId$criteria(
                e,
                (i) => i,
              )))?.toList());
}

class _CopyWithStubImpl$Query$ratingDetail$ratingDetailByCompetitorId<TRes>
    implements CopyWith$Query$ratingDetail$ratingDetailByCompetitorId<TRes> {
  _CopyWithStubImpl$Query$ratingDetail$ratingDetailByCompetitorId(this._res);

  TRes _res;

  call({
    List<Query$ratingDetail$ratingDetailByCompetitorId$errors>? errors,
    List<Query$ratingDetail$ratingDetailByCompetitorId$criteria>? criteria,
    double? finalRating,
    String? $__typename,
  }) =>
      _res;
  errors(_fn) => _res;
  criteria(_fn) => _res;
}

class Query$ratingDetail$ratingDetailByCompetitorId$errors {
  Query$ratingDetail$ratingDetailByCompetitorId$errors({
    this.message,
    required this.code,
    required this.$__typename,
  });

  factory Query$ratingDetail$ratingDetailByCompetitorId$errors.fromJson(
      Map<String, dynamic> json) {
    final l$message = json['message'];
    final l$code = json['code'];
    final l$$__typename = json['__typename'];
    return Query$ratingDetail$ratingDetailByCompetitorId$errors(
      message: (l$message as String?),
      code: (l$code as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String? message;

  final String code;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$message = message;
    _resultData['message'] = l$message;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$message = message;
    final l$code = code;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$message,
      l$code,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ratingDetail$ratingDetailByCompetitorId$errors) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (l$message != lOther$message) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
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

extension UtilityExtension$Query$ratingDetail$ratingDetailByCompetitorId$errors
    on Query$ratingDetail$ratingDetailByCompetitorId$errors {
  CopyWith$Query$ratingDetail$ratingDetailByCompetitorId$errors<
          Query$ratingDetail$ratingDetailByCompetitorId$errors>
      get copyWith =>
          CopyWith$Query$ratingDetail$ratingDetailByCompetitorId$errors(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ratingDetail$ratingDetailByCompetitorId$errors<
    TRes> {
  factory CopyWith$Query$ratingDetail$ratingDetailByCompetitorId$errors(
    Query$ratingDetail$ratingDetailByCompetitorId$errors instance,
    TRes Function(Query$ratingDetail$ratingDetailByCompetitorId$errors) then,
  ) = _CopyWithImpl$Query$ratingDetail$ratingDetailByCompetitorId$errors;

  factory CopyWith$Query$ratingDetail$ratingDetailByCompetitorId$errors.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ratingDetail$ratingDetailByCompetitorId$errors;

  TRes call({
    String? message,
    String? code,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ratingDetail$ratingDetailByCompetitorId$errors<TRes>
    implements
        CopyWith$Query$ratingDetail$ratingDetailByCompetitorId$errors<TRes> {
  _CopyWithImpl$Query$ratingDetail$ratingDetailByCompetitorId$errors(
    this._instance,
    this._then,
  );

  final Query$ratingDetail$ratingDetailByCompetitorId$errors _instance;

  final TRes Function(Query$ratingDetail$ratingDetailByCompetitorId$errors)
      _then;

  static const _undefined = {};

  TRes call({
    Object? message = _undefined,
    Object? code = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ratingDetail$ratingDetailByCompetitorId$errors(
        message:
            message == _undefined ? _instance.message : (message as String?),
        code: code == _undefined || code == null
            ? _instance.code
            : (code as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$ratingDetail$ratingDetailByCompetitorId$errors<
        TRes>
    implements
        CopyWith$Query$ratingDetail$ratingDetailByCompetitorId$errors<TRes> {
  _CopyWithStubImpl$Query$ratingDetail$ratingDetailByCompetitorId$errors(
      this._res);

  TRes _res;

  call({
    String? message,
    String? code,
    String? $__typename,
  }) =>
      _res;
}

class Query$ratingDetail$ratingDetailByCompetitorId$criteria {
  Query$ratingDetail$ratingDetailByCompetitorId$criteria({
    required this.criteriaId,
    required this.name,
    this.description,
    required this.weight,
    this.rating,
    required this.$__typename,
  });

  factory Query$ratingDetail$ratingDetailByCompetitorId$criteria.fromJson(
      Map<String, dynamic> json) {
    final l$criteriaId = json['criteriaId'];
    final l$name = json['name'];
    final l$description = json['description'];
    final l$weight = json['weight'];
    final l$rating = json['rating'];
    final l$$__typename = json['__typename'];
    return Query$ratingDetail$ratingDetailByCompetitorId$criteria(
      criteriaId: (l$criteriaId as String),
      name: (l$name as String),
      description: (l$description as String?),
      weight: (l$weight as int),
      rating: (l$rating as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final String criteriaId;

  final String name;

  final String? description;

  final int weight;

  final int? rating;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$criteriaId = criteriaId;
    _resultData['criteriaId'] = l$criteriaId;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$weight = weight;
    _resultData['weight'] = l$weight;
    final l$rating = rating;
    _resultData['rating'] = l$rating;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$criteriaId = criteriaId;
    final l$name = name;
    final l$description = description;
    final l$weight = weight;
    final l$rating = rating;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$criteriaId,
      l$name,
      l$description,
      l$weight,
      l$rating,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ratingDetail$ratingDetailByCompetitorId$criteria) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$criteriaId = criteriaId;
    final lOther$criteriaId = other.criteriaId;
    if (l$criteriaId != lOther$criteriaId) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$weight = weight;
    final lOther$weight = other.weight;
    if (l$weight != lOther$weight) {
      return false;
    }
    final l$rating = rating;
    final lOther$rating = other.rating;
    if (l$rating != lOther$rating) {
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

extension UtilityExtension$Query$ratingDetail$ratingDetailByCompetitorId$criteria
    on Query$ratingDetail$ratingDetailByCompetitorId$criteria {
  CopyWith$Query$ratingDetail$ratingDetailByCompetitorId$criteria<
          Query$ratingDetail$ratingDetailByCompetitorId$criteria>
      get copyWith =>
          CopyWith$Query$ratingDetail$ratingDetailByCompetitorId$criteria(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ratingDetail$ratingDetailByCompetitorId$criteria<
    TRes> {
  factory CopyWith$Query$ratingDetail$ratingDetailByCompetitorId$criteria(
    Query$ratingDetail$ratingDetailByCompetitorId$criteria instance,
    TRes Function(Query$ratingDetail$ratingDetailByCompetitorId$criteria) then,
  ) = _CopyWithImpl$Query$ratingDetail$ratingDetailByCompetitorId$criteria;

  factory CopyWith$Query$ratingDetail$ratingDetailByCompetitorId$criteria.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ratingDetail$ratingDetailByCompetitorId$criteria;

  TRes call({
    String? criteriaId,
    String? name,
    String? description,
    int? weight,
    int? rating,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ratingDetail$ratingDetailByCompetitorId$criteria<TRes>
    implements
        CopyWith$Query$ratingDetail$ratingDetailByCompetitorId$criteria<TRes> {
  _CopyWithImpl$Query$ratingDetail$ratingDetailByCompetitorId$criteria(
    this._instance,
    this._then,
  );

  final Query$ratingDetail$ratingDetailByCompetitorId$criteria _instance;

  final TRes Function(Query$ratingDetail$ratingDetailByCompetitorId$criteria)
      _then;

  static const _undefined = {};

  TRes call({
    Object? criteriaId = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? weight = _undefined,
    Object? rating = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ratingDetail$ratingDetailByCompetitorId$criteria(
        criteriaId: criteriaId == _undefined || criteriaId == null
            ? _instance.criteriaId
            : (criteriaId as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        weight: weight == _undefined || weight == null
            ? _instance.weight
            : (weight as int),
        rating: rating == _undefined ? _instance.rating : (rating as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$ratingDetail$ratingDetailByCompetitorId$criteria<
        TRes>
    implements
        CopyWith$Query$ratingDetail$ratingDetailByCompetitorId$criteria<TRes> {
  _CopyWithStubImpl$Query$ratingDetail$ratingDetailByCompetitorId$criteria(
      this._res);

  TRes _res;

  call({
    String? criteriaId,
    String? name,
    String? description,
    int? weight,
    int? rating,
    String? $__typename,
  }) =>
      _res;
}
