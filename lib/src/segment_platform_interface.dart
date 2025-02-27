import 'package:flutter/material.dart';
import 'package:flutter_segment/src/segment_config.dart';
import 'package:flutter_segment/src/segment_method_channel.dart';

abstract class SegmentPlatform {
  /// The default instance of [SegmentPlatform] to use
  ///
  /// Platform-specific plugins should override this with their own
  /// platform-specific class that extends [SegmentPlatform] when they
  /// register themselves.
  ///
  /// Defaults to [SegmentMethodChannel]
  static SegmentPlatform instance = SegmentMethodChannel();

  Future<void> config({
    @required SegmentConfig options,
  }) {
    throw UnimplementedError('config() has not been implemented.');
  }

  Future<void> identify({
    String userId,
    @required Map<String, dynamic> traits,
    @required Map<String, dynamic> options,
  }) {
    throw UnimplementedError('identify() has not been implemented.');
  }

  Future<void> track({
    @required String eventName,
    @required Map<String, dynamic> properties,
    @required Map<String, dynamic> options,
  }) {
    throw UnimplementedError('track() has not been implemented.');
  }

  Future<void> screen({
    @required String screenName,
    @required Map<String, dynamic> properties,
    @required Map<String, dynamic> options,
  }) {
    throw UnimplementedError('screen() has not been implemented.');
  }

  Future<void> group({
    @required String groupId,
    @required Map<String, dynamic> traits,
    @required Map<String, dynamic> options,
  }) {
    throw UnimplementedError('group() has not been implemented.');
  }

  Future<void> alias({
    @required String alias,
    @required Map<String, dynamic> options,
  }) {
    throw UnimplementedError('alias() has not been implemented.');
  }

  Future<String> get getAnonymousId {
    throw UnimplementedError('getAnonymousId() has not been implemented.');
  }

  Future<void> reset() {
    throw UnimplementedError('reset() has not been implemented.');
  }

  Future<void> disable() {
    throw UnimplementedError('disable() has not been implemented.');
  }

  Future<void> enable() {
    throw UnimplementedError('enable() has not been implemented.');
  }

  Future<void> debug(bool enabled) {
    throw UnimplementedError('debug() has not been implemented.');
  }

  Future<void> setContext(Map<String, dynamic> context) {
    throw UnimplementedError('setContext() has not been implemented.');
  }
}
