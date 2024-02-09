// class MockQuickNavPlatform
//     with MockPlatformInterfaceMixin
//     implements QuickNavPlatform {
//
//   @override
//   Future<String?> getPlatformVersion() => Future.value('42');
// }
//
// void main() {
//   final QuickNavPlatform initialPlatform = QuickNavPlatform.instance;
//
//   test('$MethodChannelQuickNav is the default instance', () {
//     expect(initialPlatform, isInstanceOf<MethodChannelQuickNav>());
//   });
//
//   test('getPlatformVersion', () async {
//     QuickNav quicknavPlugin = Bubble();
//     MockQuickNavPlatform fakePlatform = MockQuickNavPlatform();
//     QuickNavPlatform.instance = fakePlatform;
//
//     expect(await quicknavPlugin.getPlatformVersion(), '42');
//   });
// }
