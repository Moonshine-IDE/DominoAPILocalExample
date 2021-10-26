# DominoAPILocalExample

Example project to run a Java Notes API application with [Moonshine-IDE](https://github.com/Moonshine-IDE/Moonshine-IDE).


## Requirements and Setup

### Requirements 

Required Dependencies:
- HCL Notes 11.0 or Higher
- Java 8 (currently required for Notes API)
- Gradle 5.4.1 (current version supported by Moonshine-IDE)

Optional, but recommended:
- [Moonshine-IDE](https://moonshine-ide.com/)

### Notes Client Setup

By default, the Notes API will prompt you to authenticate through STDIN.  To let Moonshine-IDE or a script execute the application, you will need to allow local applications to run without authentication:
1. Open HCL Notes
2. File > Security > User Security
3. You will be prompted to authenticate
4. Enable the "Don't prompt for a password from other Notes-based programs" checkbox
5. Click OK

TODO:  Image

### macOS Permissions

In order to run a Notes application from Moonshine-IDE (or other applications or IDEs), you need to give Full Disk Access permissions to both Moonshine and Java.  
1. Open System Preferences
2. Open Security & Privacy
3. Choose the Privacy tab
4. Choose the Full Disk Access section
5. Unlock the settings if this is not already done
6. Enable the checkbox next to Moonshine.app and java.  Note that there may be multiple "java" entries in this list for different SDKs that you use.  You can add an entry manually with the "+" button.

TODO:  More clarification, screenshots

If you do not feel comfortable with these permissions, you can run the application manually in Terminal.

Without this setting, you will see an error like this:

    java.lang.Exception: Notes initialization failure - err 258
            at lotus.domino.NotesThread.NnotesInitThread(Native Method)
            at lotus.domino.NotesThread.sinitThread(Unknown Source)
            at net.prominic.domino.vagrant.TestCatalina.main(TestCatalina.java:63)
    Exception in thread "main" java.lang.NullPointerException
            at lotus.domino.local.NotesReferenceQueue.decThreadCount(Unknown Source)
            at lotus.domino.NotesThread.stermThread(Unknown Source)
            at net.prominic.domino.vagrant.TestCatalina.main(TestCatalina.java:84)

## Running the Project

With any of the methods below, you will see the application print the user ID name.

### From Moonshine

1. Open the project in Moonshine with `File > Open/Import Project` or by double-clicking on `DominoAPILocalExample.javaproj`.
2. Project > Run Gradle Command.  This will run the default command `gradle clean runApp`

### As an Executable JAR

1. Open a Terminal
2. If needed, change to the project path.  You can copy the project path from Moonshine by right-clicking on the project and choosing `Copy Path`
3. Run `gradle clean build`
4. Run `sh RunJar.sh`



