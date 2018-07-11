# FlutterGuide

Getting Started

1. Clone the Repo

   git clone -b beta https://github.com/flutter/flutter.git

2. Update your path

    If you wish to run Flutter commands in the regular Windows command prompt, take these steps to add Flutter to the PATH environment variable:

    Go to “Control Panel > User Accounts > User Accounts > Change my environment variables”

    Under “User variables” check if there is an entry called “Path”:
        If the entry does exist, append the full path to flutter\bin using ; as a separator from existing values.
        If the entry does not exist, create a new user variable named Path with the full path to flutter\bin as its value.

3. Run flutter doctor

   In the Flutter Console, run the following command to see if there are any dependencies you need to install to complete the setup:

   This command checks your environment and displays a report to the terminal window. The Dart SDK is bundled with Flutter; it is not necessary to install Dart separately

4. Install the Flutter and Dart plugins

    Flutter is supported by two plugins:

    The Flutter plugin powers Flutter developer workflows (running, debugging, hot reload, etc.).
    The Dart plugin offers code analysis (code validation as you type, code completions, etc.).

    To install these:

    Start Android Studio.
    Open plugin preferences (Preferences>Plugins on macOS, File>Settings>Plugins on Windows & Linux).
    Select Browse repositories…, select the Flutter plug-in and click install.
    Click Yes when prompted to install the Dart plugin.
    Click Restart when prompted.


Good to Go 
