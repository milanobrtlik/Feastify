import '../../schema.graphql.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Query$loadHome {
  Query$loadHome({
    required this.contestList,
    required this.$__typename,
  });

  factory Query$loadHome.fromJson(Map<String, dynamic> json) {
    final l$contestList = json['contestList'];
    final l$$__typename = json['__typename'];
    return Query$loadHome(
      contestList: (l$contestList as List<dynamic>)
          .map((e) =>
              Query$loadHome$contestList.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$loadHome$contestList> contestList;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$contestList = contestList;
    _resultData['contestList'] = l$contestList.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$contestList = contestList;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$contestList.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$loadHome) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$contestList = contestList;
    final lOther$contestList = other.contestList;
    if (l$contestList.length != lOther$contestList.length) {
      return false;
    }
    for (int i = 0; i < l$contestList.length; i++) {
      final l$contestList$entry = l$contestList[i];
      final lOther$contestList$entry = lOther$contestList[i];
      if (l$contestList$entry != lOther$contestList$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$loadHome on Query$loadHome {
  CopyWith$Query$loadHome<Query$loadHome> get copyWith =>
      CopyWith$Query$loadHome(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$loadHome<TRes> {
  factory CopyWith$Query$loadHome(
    Query$loadHome instance,
    TRes Function(Query$loadHome) then,
  ) = _CopyWithImpl$Query$loadHome;

  factory CopyWith$Query$loadHome.stub(TRes res) =
      _CopyWithStubImpl$Query$loadHome;

  TRes call({
    List<Query$loadHome$contestList>? contestList,
    String? $__typename,
  });
  TRes contestList(
      Iterable<Query$loadHome$contestList> Function(
              Iterable<
                  CopyWith$Query$loadHome$contestList<
                      Query$loadHome$contestList>>)
          _fn);
}

class _CopyWithImpl$Query$loadHome<TRes>
    implements CopyWith$Query$loadHome<TRes> {
  _CopyWithImpl$Query$loadHome(
    this._instance,
    this._then,
  );

  final Query$loadHome _instance;

  final TRes Function(Query$loadHome) _then;

  static const _undefined = {};

  TRes call({
    Object? contestList = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$loadHome(
        contestList: contestList == _undefined || contestList == null
            ? _instance.contestList
            : (contestList as List<Query$loadHome$contestList>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes contestList(
          Iterable<Query$loadHome$contestList> Function(
                  Iterable<
                      CopyWith$Query$loadHome$contestList<
                          Query$loadHome$contestList>>)
              _fn) =>
      call(
          contestList: _fn(_instance.contestList
              .map((e) => CopyWith$Query$loadHome$contestList(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$loadHome<TRes>
    implements CopyWith$Query$loadHome<TRes> {
  _CopyWithStubImpl$Query$loadHome(this._res);

  TRes _res;

  call({
    List<Query$loadHome$contestList>? contestList,
    String? $__typename,
  }) =>
      _res;
  contestList(_fn) => _res;
}

const documentNodeQueryloadHome = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'loadHome'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'contestList'),
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
]);
Query$loadHome _parserFn$Query$loadHome(Map<String, dynamic> data) =>
    Query$loadHome.fromJson(data);

class Options$Query$loadHome extends graphql.QueryOptions<Query$loadHome> {
  Options$Query$loadHome({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          pollInterval: pollInterval,
          context: context,
          document: documentNodeQueryloadHome,
          parserFn: _parserFn$Query$loadHome,
        );
}

class WatchOptions$Query$loadHome
    extends graphql.WatchQueryOptions<Query$loadHome> {
  WatchOptions$Query$loadHome({
    String? operationName,
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
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult,
          context: context,
          document: documentNodeQueryloadHome,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$loadHome,
        );
}

class FetchMoreOptions$Query$loadHome extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$loadHome({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryloadHome,
        );
}

extension ClientExtension$Query$loadHome on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$loadHome>> query$loadHome(
          [Options$Query$loadHome? options]) async =>
      await this.query(options ?? Options$Query$loadHome());
  graphql.ObservableQuery<Query$loadHome> watchQuery$loadHome(
          [WatchOptions$Query$loadHome? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$loadHome());
  void writeQuery$loadHome({
    required Query$loadHome data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryloadHome)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$loadHome? readQuery$loadHome({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryloadHome)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$loadHome.fromJson(result);
  }
}

class Query$loadHome$contestList {
  Query$loadHome$contestList({
    required this.id,
    required this.name,
    required this.state,
    required this.$__typename,
  });

  factory Query$loadHome$contestList.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$state = json['state'];
    final l$$__typename = json['__typename'];
    return Query$loadHome$contestList(
      id: (l$id as int),
      name: (l$name as String),
      state: fromJson$Enum$ContestState((l$state as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final Enum$ContestState state;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
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
    final l$state = state;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$state,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$loadHome$contestList) ||
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

extension UtilityExtension$Query$loadHome$contestList
    on Query$loadHome$contestList {
  CopyWith$Query$loadHome$contestList<Query$loadHome$contestList>
      get copyWith => CopyWith$Query$loadHome$contestList(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$loadHome$contestList<TRes> {
  factory CopyWith$Query$loadHome$contestList(
    Query$loadHome$contestList instance,
    TRes Function(Query$loadHome$contestList) then,
  ) = _CopyWithImpl$Query$loadHome$contestList;

  factory CopyWith$Query$loadHome$contestList.stub(TRes res) =
      _CopyWithStubImpl$Query$loadHome$contestList;

  TRes call({
    int? id,
    String? name,
    Enum$ContestState? state,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$loadHome$contestList<TRes>
    implements CopyWith$Query$loadHome$contestList<TRes> {
  _CopyWithImpl$Query$loadHome$contestList(
    this._instance,
    this._then,
  );

  final Query$loadHome$contestList _instance;

  final TRes Function(Query$loadHome$contestList) _then;

  static const _undefined = {};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? state = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$loadHome$contestList(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        state: state == _undefined || state == null
            ? _instance.state
            : (state as Enum$ContestState),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$loadHome$contestList<TRes>
    implements CopyWith$Query$loadHome$contestList<TRes> {
  _CopyWithStubImpl$Query$loadHome$contestList(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    Enum$ContestState? state,
    String? $__typename,
  }) =>
      _res;
}
