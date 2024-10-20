import '../../schema.graphql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Mutation$login {
  factory Variables$Mutation$login({required Input$LoginInput input}) =>
      Variables$Mutation$login._({
        r'input': input,
      });

  Variables$Mutation$login._(this._$data);

  factory Variables$Mutation$login.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$LoginInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$login._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$LoginInput get input => (_$data['input'] as Input$LoginInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$login<Variables$Mutation$login> get copyWith =>
      CopyWith$Variables$Mutation$login(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$login) ||
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

abstract class CopyWith$Variables$Mutation$login<TRes> {
  factory CopyWith$Variables$Mutation$login(
    Variables$Mutation$login instance,
    TRes Function(Variables$Mutation$login) then,
  ) = _CopyWithImpl$Variables$Mutation$login;

  factory CopyWith$Variables$Mutation$login.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$login;

  TRes call({Input$LoginInput? input});
}

class _CopyWithImpl$Variables$Mutation$login<TRes>
    implements CopyWith$Variables$Mutation$login<TRes> {
  _CopyWithImpl$Variables$Mutation$login(
    this._instance,
    this._then,
  );

  final Variables$Mutation$login _instance;

  final TRes Function(Variables$Mutation$login) _then;

  static const _undefined = {};

  TRes call({Object? input = _undefined}) => _then(Variables$Mutation$login._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$LoginInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$login<TRes>
    implements CopyWith$Variables$Mutation$login<TRes> {
  _CopyWithStubImpl$Variables$Mutation$login(this._res);

  TRes _res;

  call({Input$LoginInput? input}) => _res;
}

class Mutation$login {
  Mutation$login({
    required this.login,
    required this.$__typename,
  });

  factory Mutation$login.fromJson(Map<String, dynamic> json) {
    final l$login = json['login'];
    final l$$__typename = json['__typename'];
    return Mutation$login(
      login: Mutation$login$login.fromJson((l$login as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$login$login login;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$login = login;
    _resultData['login'] = l$login.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$login = login;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$login,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$login) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$login = login;
    final lOther$login = other.login;
    if (l$login != lOther$login) {
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

extension UtilityExtension$Mutation$login on Mutation$login {
  CopyWith$Mutation$login<Mutation$login> get copyWith =>
      CopyWith$Mutation$login(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$login<TRes> {
  factory CopyWith$Mutation$login(
    Mutation$login instance,
    TRes Function(Mutation$login) then,
  ) = _CopyWithImpl$Mutation$login;

  factory CopyWith$Mutation$login.stub(TRes res) =
      _CopyWithStubImpl$Mutation$login;

  TRes call({
    Mutation$login$login? login,
    String? $__typename,
  });
  CopyWith$Mutation$login$login<TRes> get login;
}

class _CopyWithImpl$Mutation$login<TRes>
    implements CopyWith$Mutation$login<TRes> {
  _CopyWithImpl$Mutation$login(
    this._instance,
    this._then,
  );

  final Mutation$login _instance;

  final TRes Function(Mutation$login) _then;

  static const _undefined = {};

  TRes call({
    Object? login = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$login(
        login: login == _undefined || login == null
            ? _instance.login
            : (login as Mutation$login$login),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$login$login<TRes> get login {
    final local$login = _instance.login;
    return CopyWith$Mutation$login$login(local$login, (e) => call(login: e));
  }
}

class _CopyWithStubImpl$Mutation$login<TRes>
    implements CopyWith$Mutation$login<TRes> {
  _CopyWithStubImpl$Mutation$login(this._res);

  TRes _res;

  call({
    Mutation$login$login? login,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$login$login<TRes> get login =>
      CopyWith$Mutation$login$login.stub(_res);
}

const documentNodeMutationlogin = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'login'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'LoginInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'login'),
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
            name: NameNode(value: 'token'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
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
Mutation$login _parserFn$Mutation$login(Map<String, dynamic> data) =>
    Mutation$login.fromJson(data);
typedef OnMutationCompleted$Mutation$login = FutureOr<void> Function(
  dynamic,
  Mutation$login?,
);

class Options$Mutation$login extends graphql.MutationOptions<Mutation$login> {
  Options$Mutation$login({
    String? operationName,
    required Variables$Mutation$login variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$login? onCompleted,
    graphql.OnMutationUpdate<Mutation$login>? update,
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
                    data == null ? null : _parserFn$Mutation$login(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationlogin,
          parserFn: _parserFn$Mutation$login,
        );

  final OnMutationCompleted$Mutation$login? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$login
    extends graphql.WatchQueryOptions<Mutation$login> {
  WatchOptions$Mutation$login({
    String? operationName,
    required Variables$Mutation$login variables,
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
          document: documentNodeMutationlogin,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$login,
        );
}

extension ClientExtension$Mutation$login on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$login>> mutate$login(
          Options$Mutation$login options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$login> watchMutation$login(
          WatchOptions$Mutation$login options) =>
      this.watchMutation(options);
}

class Mutation$login$login {
  Mutation$login$login({
    this.token,
    required this.errors,
    required this.$__typename,
  });

  factory Mutation$login$login.fromJson(Map<String, dynamic> json) {
    final l$token = json['token'];
    final l$errors = json['errors'];
    final l$$__typename = json['__typename'];
    return Mutation$login$login(
      token: (l$token as String?),
      errors: (l$errors as List<dynamic>)
          .map((e) =>
              Mutation$login$login$errors.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String? token;

  final List<Mutation$login$login$errors> errors;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$token = token;
    _resultData['token'] = l$token;
    final l$errors = errors;
    _resultData['errors'] = l$errors.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$token = token;
    final l$errors = errors;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$token,
      Object.hashAll(l$errors.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$login$login) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$token = token;
    final lOther$token = other.token;
    if (l$token != lOther$token) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$login$login on Mutation$login$login {
  CopyWith$Mutation$login$login<Mutation$login$login> get copyWith =>
      CopyWith$Mutation$login$login(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$login$login<TRes> {
  factory CopyWith$Mutation$login$login(
    Mutation$login$login instance,
    TRes Function(Mutation$login$login) then,
  ) = _CopyWithImpl$Mutation$login$login;

  factory CopyWith$Mutation$login$login.stub(TRes res) =
      _CopyWithStubImpl$Mutation$login$login;

  TRes call({
    String? token,
    List<Mutation$login$login$errors>? errors,
    String? $__typename,
  });
  TRes errors(
      Iterable<Mutation$login$login$errors> Function(
              Iterable<
                  CopyWith$Mutation$login$login$errors<
                      Mutation$login$login$errors>>)
          _fn);
}

class _CopyWithImpl$Mutation$login$login<TRes>
    implements CopyWith$Mutation$login$login<TRes> {
  _CopyWithImpl$Mutation$login$login(
    this._instance,
    this._then,
  );

  final Mutation$login$login _instance;

  final TRes Function(Mutation$login$login) _then;

  static const _undefined = {};

  TRes call({
    Object? token = _undefined,
    Object? errors = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$login$login(
        token: token == _undefined ? _instance.token : (token as String?),
        errors: errors == _undefined || errors == null
            ? _instance.errors
            : (errors as List<Mutation$login$login$errors>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes errors(
          Iterable<Mutation$login$login$errors> Function(
                  Iterable<
                      CopyWith$Mutation$login$login$errors<
                          Mutation$login$login$errors>>)
              _fn) =>
      call(
          errors: _fn(
              _instance.errors.map((e) => CopyWith$Mutation$login$login$errors(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$login$login<TRes>
    implements CopyWith$Mutation$login$login<TRes> {
  _CopyWithStubImpl$Mutation$login$login(this._res);

  TRes _res;

  call({
    String? token,
    List<Mutation$login$login$errors>? errors,
    String? $__typename,
  }) =>
      _res;
  errors(_fn) => _res;
}

class Mutation$login$login$errors {
  Mutation$login$login$errors({
    required this.code,
    this.message,
    required this.$__typename,
  });

  factory Mutation$login$login$errors.fromJson(Map<String, dynamic> json) {
    final l$code = json['code'];
    final l$message = json['message'];
    final l$$__typename = json['__typename'];
    return Mutation$login$login$errors(
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
    if (!(other is Mutation$login$login$errors) ||
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

extension UtilityExtension$Mutation$login$login$errors
    on Mutation$login$login$errors {
  CopyWith$Mutation$login$login$errors<Mutation$login$login$errors>
      get copyWith => CopyWith$Mutation$login$login$errors(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$login$login$errors<TRes> {
  factory CopyWith$Mutation$login$login$errors(
    Mutation$login$login$errors instance,
    TRes Function(Mutation$login$login$errors) then,
  ) = _CopyWithImpl$Mutation$login$login$errors;

  factory CopyWith$Mutation$login$login$errors.stub(TRes res) =
      _CopyWithStubImpl$Mutation$login$login$errors;

  TRes call({
    String? code,
    String? message,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$login$login$errors<TRes>
    implements CopyWith$Mutation$login$login$errors<TRes> {
  _CopyWithImpl$Mutation$login$login$errors(
    this._instance,
    this._then,
  );

  final Mutation$login$login$errors _instance;

  final TRes Function(Mutation$login$login$errors) _then;

  static const _undefined = {};

  TRes call({
    Object? code = _undefined,
    Object? message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$login$login$errors(
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

class _CopyWithStubImpl$Mutation$login$login$errors<TRes>
    implements CopyWith$Mutation$login$login$errors<TRes> {
  _CopyWithStubImpl$Mutation$login$login$errors(this._res);

  TRes _res;

  call({
    String? code,
    String? message,
    String? $__typename,
  }) =>
      _res;
}
