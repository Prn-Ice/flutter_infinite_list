import 'package:flutter_infinite_list/app.dart';
import 'package:flutter_infinite_list/posts/posts.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockPostsRepository extends Mock implements PostsRepository {}

void main() {
  late PostsRepository postsRepository;

  setUp(() {
    postsRepository = MockPostsRepository();
  });

  group('App', () {
    testWidgets('renders PostsPage', (tester) async {
      await tester.pumpWidget(App(postsRepository: postsRepository));
      await tester.pumpAndSettle();
      expect(find.byType(PostsPage), findsOneWidget);
    });
  });
}
