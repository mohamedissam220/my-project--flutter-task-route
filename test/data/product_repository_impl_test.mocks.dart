// Mocks generated by Mockito 5.4.4 from annotations
// in task147/test/data/product_repository_impl_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:http/http.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:task147/core/netwrok/network_service.dart' as _i3;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeResponse_0 extends _i1.SmartFake implements _i2.Response {
  _FakeResponse_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [NetworkService].
///
/// See the documentation for Mockito's code generation for more information.
class MockNetworkService extends _i1.Mock implements _i3.NetworkService {
  @override
  _i4.Future<_i2.Response> apiPost({
    required dynamic body,
    required Map<String, String>? header,
    required Uri? url,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #apiPost,
          [],
          {
            #body: body,
            #header: header,
            #url: url,
          },
        ),
        returnValue: _i4.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #apiPost,
            [],
            {
              #body: body,
              #header: header,
              #url: url,
            },
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #apiPost,
            [],
            {
              #body: body,
              #header: header,
              #url: url,
            },
          ),
        )),
      ) as _i4.Future<_i2.Response>);

  @override
  _i4.Future<_i2.Response> apiPut({
    required dynamic body,
    required Map<String, String>? header,
    required Uri? url,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #apiPut,
          [],
          {
            #body: body,
            #header: header,
            #url: url,
          },
        ),
        returnValue: _i4.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #apiPut,
            [],
            {
              #body: body,
              #header: header,
              #url: url,
            },
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #apiPut,
            [],
            {
              #body: body,
              #header: header,
              #url: url,
            },
          ),
        )),
      ) as _i4.Future<_i2.Response>);

  @override
  _i4.Future<_i2.Response> apiDELETE({
    required Map<String, String>? header,
    required Uri? url,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #apiDELETE,
          [],
          {
            #header: header,
            #url: url,
          },
        ),
        returnValue: _i4.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #apiDELETE,
            [],
            {
              #header: header,
              #url: url,
            },
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #apiDELETE,
            [],
            {
              #header: header,
              #url: url,
            },
          ),
        )),
      ) as _i4.Future<_i2.Response>);

  @override
  _i4.Future<_i2.Response> apiGet({
    required Uri? url,
    Map<String, String>? header,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #apiGet,
          [],
          {
            #url: url,
            #header: header,
          },
        ),
        returnValue: _i4.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #apiGet,
            [],
            {
              #url: url,
              #header: header,
            },
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i2.Response>.value(_FakeResponse_0(
          this,
          Invocation.method(
            #apiGet,
            [],
            {
              #url: url,
              #header: header,
            },
          ),
        )),
      ) as _i4.Future<_i2.Response>);
}
