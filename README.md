# WeeklyFlutterChallenge1
The aim of this weekly Flutter challenge is to learn to design and code Flutter UI.

The first challenge is focused on recreating Lampshade App design created by pandabanda:
https://dribbble.com/shots/7112540-Lampshade-App

What I have learned during this challenge:
1. [InkWell](https://api.flutter.dev/flutter/material/InkWell-class.html) widget used for adding Material splashes. Used in this challenge to add splash on button in top right.
2. [Transform](https://api.flutter.dev/flutter/widgets/Transform-class.html) widget used for, well transformations of other widgets. Here used to rotate icons.
3. [FractionallySizedBox](https://api.flutter.dev/flutter/widgets/FractionallySizedBox-class.html) widget that changes the size of it's child to a given fraction of available space. Used to size the contents of top right **Add to cart** button.
4. [AnimatedContainer](https://api.flutter.dev/flutter/widgets/AnimatedContainer-class.html) widget that behaves like a Container, but automatically animates the changes of it's properties over a given [Duration](https://api.flutter.dev/flutter/dart-core/Duration-class.html). Used here to animate the buttons that change the selected lamp variant.
5. [AnimatedDefaultTextStyle](https://api.flutter.dev/flutter/widgets/AnimatedDefaultTextStyle-class.html) widget that animates the transition of Default Text Style of it's descendants over a given [Duration](https://api.flutter.dev/flutter/dart-core/Duration-class.html). Used here to animate the text description of buttons mentioned above.
6. Using flex to size children of Raw/Column. 
7. [A way to hide a debug banner](https://stackoverflow.com/questions/48893935/how-to-remove-debug-banner-in-flutter-on-android-emulator), passed as a parameter for a [MaterialApp](https://api.flutter.dev/flutter/material/MaterialApp-class.html) widget:
```
debugShowCheckedModeBanner: false
``` 
8. [A way to hide UI overlay elements](https://stackoverflow.com/questions/46640116/make-flutter-application-fullscreen):
```
SystemChrome.setEnabledSystemUIOverlays([]);
```
9. [A way to force limit allowed screen orientations](https://www.didierboelens.com/2018/04/hint-3-how-to-force-the-application-to-stick-to-portrait-mode/):
```
SystemChrome.setPreferredOrientations([
  DeviceOrientation.portraitUp,
  DeviceOrientation.portraitDown,
]).then((_) {
  runApp(MyApp());
});
```


## Original design
![Original Design](https://github.com/JKPK/WeeklyFlutterChallenge1/blob/master/original_design.png?raw=true)

## Challenge result - click GIF to see video
[![Challenge result](https://github.com/JKPK/WeeklyFlutterChallenge1/blob/master/challenge_result.gif?raw=true)](https://www.youtube.com/watch?v=-qssYuAtWrI)
