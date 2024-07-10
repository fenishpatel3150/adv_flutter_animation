<h2 align = "center"> 1. Hero Widget </h2>


The `Hero` widget in Flutter is used to create smooth transitions between different routes by animating a widget from one screen to another. It's typically used to create visually engaging transitions in apps, such as when an image or other element expands to fill the screen on a tap.

### Description
The `Hero` widget in Flutter leverages the `Navigator` to facilitate the transition. The `Hero` widget needs a unique `tag` that is shared between the widgets on the two routes. The widget animates seamlessly between the two routes.

### Example

Here's a simple example demonstrating how to use the `Hero` widget in Flutter.

#### main.dart
```dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hero Widget Demo',
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Page')),
      body: Center(
        child: GestureDetector(
          child: Hero(
            tag: 'hero-tag',
            child: Image.network(
              'https://flutter.dev/images/flutter-logo-sharing.png',
              width: 100.0,
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondPage()),
            );
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Page')),
      body: Center(
        child: Hero(
          tag: 'hero-tag',
          child: Image.network(
            'https://flutter.dev/images/flutter-logo-sharing.png',
            width: 300.0,
          ),
        ),
      ),
    );
  }
}
```

### Explanation
1. **FirstPage**: This is the initial route with a small image wrapped in a `Hero` widget. The `Hero` widget is given a `tag` of `'hero-tag'`. When the image is tapped, it navigates to the `SecondPage` using the `Navigator`.

2. **SecondPage**: This is the destination route, also containing a `Hero` widget with the same `tag`. The image is larger here.

When you tap on the image in `FirstPage`, it smoothly transitions to the larger image in `SecondPage` thanks to the `Hero` animation.

### Key Points
- **Tag**: Both `Hero` widgets must have the same `tag` to link them.
- **Unique Tags**: Each `Hero` animation in your app must have a unique tag to avoid conflicts.
- **Seamless Transition**: The `Hero` animation ensures a seamless and visually appealing transition between routes.

You can use the `Hero` widget to create beautiful and intuitive transitions in your Flutter applications.

<img src = "https://github.com/fenishpatel3150/adv_flutter_animation/assets/143187609/29169d88-e54e-4339-a19c-3542711adda2" width=22% height=35%>
<img src = "https://github.com/fenishpatel3150/adv_flutter_animation/assets/143187609/fdae0f79-d966-45a3-920e-53f46ce2018b" width=22% height=35%>


https://github.com/fenishpatel3150/adv_flutter_animation/assets/143187609/e5ec919c-0619-4845-addd-66e976c5258c
