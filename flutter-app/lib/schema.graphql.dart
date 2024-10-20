class Input$CompetitorCreateInputTypeInput {
  factory Input$CompetitorCreateInputTypeInput({
    required int contestId,
    required String name,
  }) =>
      Input$CompetitorCreateInputTypeInput._({
        r'contestId': contestId,
        r'name': name,
      });

  Input$CompetitorCreateInputTypeInput._(this._$data);

  factory Input$CompetitorCreateInputTypeInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$contestId = data['contestId'];
    result$data['contestId'] = (l$contestId as int);
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    return Input$CompetitorCreateInputTypeInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get contestId => (_$data['contestId'] as int);
  String get name => (_$data['name'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$contestId = contestId;
    result$data['contestId'] = l$contestId;
    final l$name = name;
    result$data['name'] = l$name;
    return result$data;
  }

  CopyWith$Input$CompetitorCreateInputTypeInput<
          Input$CompetitorCreateInputTypeInput>
      get copyWith => CopyWith$Input$CompetitorCreateInputTypeInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CompetitorCreateInputTypeInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$contestId = contestId;
    final lOther$contestId = other.contestId;
    if (l$contestId != lOther$contestId) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$contestId = contestId;
    final l$name = name;
    return Object.hashAll([
      l$contestId,
      l$name,
    ]);
  }
}

abstract class CopyWith$Input$CompetitorCreateInputTypeInput<TRes> {
  factory CopyWith$Input$CompetitorCreateInputTypeInput(
    Input$CompetitorCreateInputTypeInput instance,
    TRes Function(Input$CompetitorCreateInputTypeInput) then,
  ) = _CopyWithImpl$Input$CompetitorCreateInputTypeInput;

  factory CopyWith$Input$CompetitorCreateInputTypeInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CompetitorCreateInputTypeInput;

  TRes call({
    int? contestId,
    String? name,
  });
}

class _CopyWithImpl$Input$CompetitorCreateInputTypeInput<TRes>
    implements CopyWith$Input$CompetitorCreateInputTypeInput<TRes> {
  _CopyWithImpl$Input$CompetitorCreateInputTypeInput(
    this._instance,
    this._then,
  );

  final Input$CompetitorCreateInputTypeInput _instance;

  final TRes Function(Input$CompetitorCreateInputTypeInput) _then;

  static const _undefined = {};

  TRes call({
    Object? contestId = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Input$CompetitorCreateInputTypeInput._({
        ..._instance._$data,
        if (contestId != _undefined && contestId != null)
          'contestId': (contestId as int),
        if (name != _undefined && name != null) 'name': (name as String),
      }));
}

class _CopyWithStubImpl$Input$CompetitorCreateInputTypeInput<TRes>
    implements CopyWith$Input$CompetitorCreateInputTypeInput<TRes> {
  _CopyWithStubImpl$Input$CompetitorCreateInputTypeInput(this._res);

  TRes _res;

  call({
    int? contestId,
    String? name,
  }) =>
      _res;
}

class Input$CompetitorUpdateInputTypeInput {
  factory Input$CompetitorUpdateInputTypeInput({
    int? contestId,
    String? name,
  }) =>
      Input$CompetitorUpdateInputTypeInput._({
        if (contestId != null) r'contestId': contestId,
        if (name != null) r'name': name,
      });

  Input$CompetitorUpdateInputTypeInput._(this._$data);

  factory Input$CompetitorUpdateInputTypeInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('contestId')) {
      final l$contestId = data['contestId'];
      result$data['contestId'] = (l$contestId as int?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Input$CompetitorUpdateInputTypeInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get contestId => (_$data['contestId'] as int?);
  String? get name => (_$data['name'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('contestId')) {
      final l$contestId = contestId;
      result$data['contestId'] = l$contestId;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    return result$data;
  }

  CopyWith$Input$CompetitorUpdateInputTypeInput<
          Input$CompetitorUpdateInputTypeInput>
      get copyWith => CopyWith$Input$CompetitorUpdateInputTypeInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CompetitorUpdateInputTypeInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$contestId = contestId;
    final lOther$contestId = other.contestId;
    if (_$data.containsKey('contestId') !=
        other._$data.containsKey('contestId')) {
      return false;
    }
    if (l$contestId != lOther$contestId) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$contestId = contestId;
    final l$name = name;
    return Object.hashAll([
      _$data.containsKey('contestId') ? l$contestId : const {},
      _$data.containsKey('name') ? l$name : const {},
    ]);
  }
}

abstract class CopyWith$Input$CompetitorUpdateInputTypeInput<TRes> {
  factory CopyWith$Input$CompetitorUpdateInputTypeInput(
    Input$CompetitorUpdateInputTypeInput instance,
    TRes Function(Input$CompetitorUpdateInputTypeInput) then,
  ) = _CopyWithImpl$Input$CompetitorUpdateInputTypeInput;

  factory CopyWith$Input$CompetitorUpdateInputTypeInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CompetitorUpdateInputTypeInput;

  TRes call({
    int? contestId,
    String? name,
  });
}

class _CopyWithImpl$Input$CompetitorUpdateInputTypeInput<TRes>
    implements CopyWith$Input$CompetitorUpdateInputTypeInput<TRes> {
  _CopyWithImpl$Input$CompetitorUpdateInputTypeInput(
    this._instance,
    this._then,
  );

  final Input$CompetitorUpdateInputTypeInput _instance;

  final TRes Function(Input$CompetitorUpdateInputTypeInput) _then;

  static const _undefined = {};

  TRes call({
    Object? contestId = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Input$CompetitorUpdateInputTypeInput._({
        ..._instance._$data,
        if (contestId != _undefined) 'contestId': (contestId as int?),
        if (name != _undefined) 'name': (name as String?),
      }));
}

class _CopyWithStubImpl$Input$CompetitorUpdateInputTypeInput<TRes>
    implements CopyWith$Input$CompetitorUpdateInputTypeInput<TRes> {
  _CopyWithStubImpl$Input$CompetitorUpdateInputTypeInput(this._res);

  TRes _res;

  call({
    int? contestId,
    String? name,
  }) =>
      _res;
}

class Input$ContestCreateInput {
  factory Input$ContestCreateInput({required String name}) =>
      Input$ContestCreateInput._({
        r'name': name,
      });

  Input$ContestCreateInput._(this._$data);

  factory Input$ContestCreateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    return Input$ContestCreateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    return result$data;
  }

  CopyWith$Input$ContestCreateInput<Input$ContestCreateInput> get copyWith =>
      CopyWith$Input$ContestCreateInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ContestCreateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }
}

abstract class CopyWith$Input$ContestCreateInput<TRes> {
  factory CopyWith$Input$ContestCreateInput(
    Input$ContestCreateInput instance,
    TRes Function(Input$ContestCreateInput) then,
  ) = _CopyWithImpl$Input$ContestCreateInput;

  factory CopyWith$Input$ContestCreateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ContestCreateInput;

  TRes call({String? name});
}

class _CopyWithImpl$Input$ContestCreateInput<TRes>
    implements CopyWith$Input$ContestCreateInput<TRes> {
  _CopyWithImpl$Input$ContestCreateInput(
    this._instance,
    this._then,
  );

  final Input$ContestCreateInput _instance;

  final TRes Function(Input$ContestCreateInput) _then;

  static const _undefined = {};

  TRes call({Object? name = _undefined}) => _then(Input$ContestCreateInput._({
        ..._instance._$data,
        if (name != _undefined && name != null) 'name': (name as String),
      }));
}

class _CopyWithStubImpl$Input$ContestCreateInput<TRes>
    implements CopyWith$Input$ContestCreateInput<TRes> {
  _CopyWithStubImpl$Input$ContestCreateInput(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Input$ContestUpdateInput {
  factory Input$ContestUpdateInput({required String name}) =>
      Input$ContestUpdateInput._({
        r'name': name,
      });

  Input$ContestUpdateInput._(this._$data);

  factory Input$ContestUpdateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    return Input$ContestUpdateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    return result$data;
  }

  CopyWith$Input$ContestUpdateInput<Input$ContestUpdateInput> get copyWith =>
      CopyWith$Input$ContestUpdateInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$ContestUpdateInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    return Object.hashAll([l$name]);
  }
}

abstract class CopyWith$Input$ContestUpdateInput<TRes> {
  factory CopyWith$Input$ContestUpdateInput(
    Input$ContestUpdateInput instance,
    TRes Function(Input$ContestUpdateInput) then,
  ) = _CopyWithImpl$Input$ContestUpdateInput;

  factory CopyWith$Input$ContestUpdateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ContestUpdateInput;

  TRes call({String? name});
}

class _CopyWithImpl$Input$ContestUpdateInput<TRes>
    implements CopyWith$Input$ContestUpdateInput<TRes> {
  _CopyWithImpl$Input$ContestUpdateInput(
    this._instance,
    this._then,
  );

  final Input$ContestUpdateInput _instance;

  final TRes Function(Input$ContestUpdateInput) _then;

  static const _undefined = {};

  TRes call({Object? name = _undefined}) => _then(Input$ContestUpdateInput._({
        ..._instance._$data,
        if (name != _undefined && name != null) 'name': (name as String),
      }));
}

class _CopyWithStubImpl$Input$ContestUpdateInput<TRes>
    implements CopyWith$Input$ContestUpdateInput<TRes> {
  _CopyWithStubImpl$Input$ContestUpdateInput(this._res);

  TRes _res;

  call({String? name}) => _res;
}

class Input$LoginInput {
  factory Input$LoginInput({
    required String password,
    required String username,
  }) =>
      Input$LoginInput._({
        r'password': password,
        r'username': username,
      });

  Input$LoginInput._(this._$data);

  factory Input$LoginInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    final l$username = data['username'];
    result$data['username'] = (l$username as String);
    return Input$LoginInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get password => (_$data['password'] as String);
  String get username => (_$data['username'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$password = password;
    result$data['password'] = l$password;
    final l$username = username;
    result$data['username'] = l$username;
    return result$data;
  }

  CopyWith$Input$LoginInput<Input$LoginInput> get copyWith =>
      CopyWith$Input$LoginInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$LoginInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$password = password;
    final l$username = username;
    return Object.hashAll([
      l$password,
      l$username,
    ]);
  }
}

abstract class CopyWith$Input$LoginInput<TRes> {
  factory CopyWith$Input$LoginInput(
    Input$LoginInput instance,
    TRes Function(Input$LoginInput) then,
  ) = _CopyWithImpl$Input$LoginInput;

  factory CopyWith$Input$LoginInput.stub(TRes res) =
      _CopyWithStubImpl$Input$LoginInput;

  TRes call({
    String? password,
    String? username,
  });
}

class _CopyWithImpl$Input$LoginInput<TRes>
    implements CopyWith$Input$LoginInput<TRes> {
  _CopyWithImpl$Input$LoginInput(
    this._instance,
    this._then,
  );

  final Input$LoginInput _instance;

  final TRes Function(Input$LoginInput) _then;

  static const _undefined = {};

  TRes call({
    Object? password = _undefined,
    Object? username = _undefined,
  }) =>
      _then(Input$LoginInput._({
        ..._instance._$data,
        if (password != _undefined && password != null)
          'password': (password as String),
        if (username != _undefined && username != null)
          'username': (username as String),
      }));
}

class _CopyWithStubImpl$Input$LoginInput<TRes>
    implements CopyWith$Input$LoginInput<TRes> {
  _CopyWithStubImpl$Input$LoginInput(this._res);

  TRes _res;

  call({
    String? password,
    String? username,
  }) =>
      _res;
}

class Input$UserRateInput {
  factory Input$UserRateInput({
    required int competitorId,
    required int criteriaId,
    required int rating,
  }) =>
      Input$UserRateInput._({
        r'competitorId': competitorId,
        r'criteriaId': criteriaId,
        r'rating': rating,
      });

  Input$UserRateInput._(this._$data);

  factory Input$UserRateInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$competitorId = data['competitorId'];
    result$data['competitorId'] = (l$competitorId as int);
    final l$criteriaId = data['criteriaId'];
    result$data['criteriaId'] = (l$criteriaId as int);
    final l$rating = data['rating'];
    result$data['rating'] = (l$rating as int);
    return Input$UserRateInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get competitorId => (_$data['competitorId'] as int);
  int get criteriaId => (_$data['criteriaId'] as int);
  int get rating => (_$data['rating'] as int);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$competitorId = competitorId;
    result$data['competitorId'] = l$competitorId;
    final l$criteriaId = criteriaId;
    result$data['criteriaId'] = l$criteriaId;
    final l$rating = rating;
    result$data['rating'] = l$rating;
    return result$data;
  }

  CopyWith$Input$UserRateInput<Input$UserRateInput> get copyWith =>
      CopyWith$Input$UserRateInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$UserRateInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$competitorId = competitorId;
    final lOther$competitorId = other.competitorId;
    if (l$competitorId != lOther$competitorId) {
      return false;
    }
    final l$criteriaId = criteriaId;
    final lOther$criteriaId = other.criteriaId;
    if (l$criteriaId != lOther$criteriaId) {
      return false;
    }
    final l$rating = rating;
    final lOther$rating = other.rating;
    if (l$rating != lOther$rating) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$competitorId = competitorId;
    final l$criteriaId = criteriaId;
    final l$rating = rating;
    return Object.hashAll([
      l$competitorId,
      l$criteriaId,
      l$rating,
    ]);
  }
}

abstract class CopyWith$Input$UserRateInput<TRes> {
  factory CopyWith$Input$UserRateInput(
    Input$UserRateInput instance,
    TRes Function(Input$UserRateInput) then,
  ) = _CopyWithImpl$Input$UserRateInput;

  factory CopyWith$Input$UserRateInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UserRateInput;

  TRes call({
    int? competitorId,
    int? criteriaId,
    int? rating,
  });
}

class _CopyWithImpl$Input$UserRateInput<TRes>
    implements CopyWith$Input$UserRateInput<TRes> {
  _CopyWithImpl$Input$UserRateInput(
    this._instance,
    this._then,
  );

  final Input$UserRateInput _instance;

  final TRes Function(Input$UserRateInput) _then;

  static const _undefined = {};

  TRes call({
    Object? competitorId = _undefined,
    Object? criteriaId = _undefined,
    Object? rating = _undefined,
  }) =>
      _then(Input$UserRateInput._({
        ..._instance._$data,
        if (competitorId != _undefined && competitorId != null)
          'competitorId': (competitorId as int),
        if (criteriaId != _undefined && criteriaId != null)
          'criteriaId': (criteriaId as int),
        if (rating != _undefined && rating != null) 'rating': (rating as int),
      }));
}

class _CopyWithStubImpl$Input$UserRateInput<TRes>
    implements CopyWith$Input$UserRateInput<TRes> {
  _CopyWithStubImpl$Input$UserRateInput(this._res);

  TRes _res;

  call({
    int? competitorId,
    int? criteriaId,
    int? rating,
  }) =>
      _res;
}

enum Enum$ApplyPolicy { AFTER_RESOLVER, BEFORE_RESOLVER, $unknown }

String toJson$Enum$ApplyPolicy(Enum$ApplyPolicy e) {
  switch (e) {
    case Enum$ApplyPolicy.AFTER_RESOLVER:
      return r'AFTER_RESOLVER';
    case Enum$ApplyPolicy.BEFORE_RESOLVER:
      return r'BEFORE_RESOLVER';
    case Enum$ApplyPolicy.$unknown:
      return r'$unknown';
  }
}

Enum$ApplyPolicy fromJson$Enum$ApplyPolicy(String value) {
  switch (value) {
    case r'AFTER_RESOLVER':
      return Enum$ApplyPolicy.AFTER_RESOLVER;
    case r'BEFORE_RESOLVER':
      return Enum$ApplyPolicy.BEFORE_RESOLVER;
    default:
      return Enum$ApplyPolicy.$unknown;
  }
}

enum Enum$ContestState {
  EVALUATED,
  EVALUATING,
  NOT_STARTED,
  ONGOING,
  PREPARING,
  $unknown
}

String toJson$Enum$ContestState(Enum$ContestState e) {
  switch (e) {
    case Enum$ContestState.EVALUATED:
      return r'EVALUATED';
    case Enum$ContestState.EVALUATING:
      return r'EVALUATING';
    case Enum$ContestState.NOT_STARTED:
      return r'NOT_STARTED';
    case Enum$ContestState.ONGOING:
      return r'ONGOING';
    case Enum$ContestState.PREPARING:
      return r'PREPARING';
    case Enum$ContestState.$unknown:
      return r'$unknown';
  }
}

Enum$ContestState fromJson$Enum$ContestState(String value) {
  switch (value) {
    case r'EVALUATED':
      return Enum$ContestState.EVALUATED;
    case r'EVALUATING':
      return Enum$ContestState.EVALUATING;
    case r'NOT_STARTED':
      return Enum$ContestState.NOT_STARTED;
    case r'ONGOING':
      return Enum$ContestState.ONGOING;
    case r'PREPARING':
      return Enum$ContestState.PREPARING;
    default:
      return Enum$ContestState.$unknown;
  }
}

const possibleTypesMap = {};
