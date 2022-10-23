# DermAssistApp- Contributions


## Prerequisite
* [Git](https://git-scm.com/downloads) 
* [Android Studio](https://bit.ly/3RXrm88)
* [VS Code](https://code.visualstudio.com/)
* [Django](https://www.djangoproject.com/)
* [Flutter SDK](https://flutter.dev/?gclid=Cj0KCQjwhY-aBhCUARIsALNIC04HPxFezj8br4w4ZdcdjVk1IECPyl3TqvVu46orV0okeAWPJGJH5LUaAmXJEALw_wcB&gclsrc=aw.ds)
* OpenCV and MediaPipe extensions

## How to contribute to this project
Here are 3 quick and painless ways to contribute to this project:

* Add your name to the `CONTRIBUTORS.md` file
* Add a profile page to the `profiles` directory

## Local Setup

- Fork this repo (button on top)
- Clone on your local machine

```terminal
git clone https://github.com/example
```
- Navigate to project directory.
```terminal
cd Hacktoberfest2022
```

- Create a new Branch

```markdown
git checkout -b my-new-branch
```

- Commit your changes.

```markdown
git commit -m "Issue or feature resolved"
```
- Then push 
```markdown
git push origin my-new-branch
```


- Create a new pull request from your forked repository

<br>

## Running the project

#### Setup Development Environment

1. [Download Flutter](https://flutter.dev/docs/get-started/install) and make sure `flutter doctor` shows no errors.
   * Latest Flutter dev channel should typically work, check out
   * ⚠️ *no longer required*: (this should be fixed, just leaving it in, in case people still see this error) Right now one extra step is required after installing flutter: in the flutter directory change to `flutter/dev/tools` and run: `flutter pub get`. See the (flutter issue #65023)[https://github.com/flutter/flutter/issues/65023] for details.
     otherwise you will stumble on errors like:
     ```flutter/dev/tools/localization/bin/gen_l10n.dart:7:8: Error: Error when reading '/flutter/.pub-cache/hosted/pub.dartlang.org/args-1.6.0/lib/args.dart': The system cannot find the path specified.```
2. Clone the repository `git clone https://github.com/dsc-iem/DermAssistApp-Hacktoberfest22.git` (or better yet, create your own fork to make later creating Pull Requests easier).
3. Initialize submodules `git submodule update --init`
4. Change to the `DermAssistApp-Hacktoberfest22/` subdirectory:

    ```shell
    git clone https://github.com/dsc-iem/DermAssistApp-Hacktoberfest22.git
    cd dsc-iem/DermAssistApp-Hacktoberfest22
    ```
5. Launch DermAssistApp-Hacktoberfest22
    ```shell
    flutter run -t lib/env/development.dart
    ```

You are required to select a specific target file,
usually this will be `lib/env/development.dart`.

In case of any doubt regarding how to clone project from github, do refer to the following link:
[GFG ARticle](https://www.geeksforgeeks.org/how-to-import-a-flutter-project-from-github/)

#### Running on Android

For android you have to add an additional flavor:
* Open the cloned repo in your Android Studio.
* Open the ``Emulator`` from Android device manager(AVD)
* Start the application with ``flutter run`` (please note that depending on how you run your emulator you will need to change the IP address of the server)

You can run the tests with the ``flutter test``


# Code Style

Make sure to follow common Dart coding conventions, and follow all lints provided
by `analysis_options.yaml` and [activate auto-formatting](https://flutter.dev/docs/development/tools/formatting) using `dartfmt`. 

