// Mocks generated by Mockito 5.4.2 from annotations
// in app/test/data/gateways/user/create_user_gateway_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:app/infra/gateways/user/create_user_gateway.dart' as _i3;
import 'package:app/data/repositories/user_repository.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeCreateUserRepository_0 extends _i1.SmartFake
    implements _i2.CreateUserRepository {
  _FakeCreateUserRepository_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [CreateUserGateway].
///
/// See the documentation for Mockito's code generation for more information.
class MockCreateUserGateway extends _i1.Mock implements _i3.CreateUserGateway {
  @override
  _i2.CreateUserRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeCreateUserRepository_0(
          this,
          Invocation.getter(#repository),
        ),
        returnValueForMissingStub: _FakeCreateUserRepository_0(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i2.CreateUserRepository);
  @override
  set repository(_i2.CreateUserRepository? _repository) => super.noSuchMethod(
        Invocation.setter(
          #repository,
          _repository,
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i4.Future<void> create(dynamic dto) => (super.noSuchMethod(
        Invocation.method(
          #create,
          [dto],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
}