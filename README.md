# Titanium SDK Module Project

This is Titanium Mobile module project.

# Titanium.AccuRoot

A Titanium native module to check if the device is rooted/jailbroken.

## Building

Simply run `ti build -p [ios|android] --build-only` which will compile and package your module.

## Linting

You can use `clang` to lint your code. A default linting style is included inside the module main folder.
Run `clang-format -style=file -i SRC_FILE` in the module root to lint the `SRC_FILE`. You can also patterns,
like `clang-format -style=file -i Classes/*`

## Install

To use your module locally inside an app you can copy the zip file into the app root folder and compile your app.
The file will automatically be extracted and copied into the correct `modules/` folder.

If you want to use your module globally in all your apps you have to do the following:

### macOS

Copy the distribution zip file into the `~/Library/Application Support/Titanium` folder

### Linux

Copy the distribution zip file into the `~/.titanium` folder

### Windows
Copy the distribution zip file into the `C:\ProgramData\Titanium` folder

## Project Usage

Register your module with your application by editing `tiapp.xml` and adding your module.
Example:

<modules>
  <module version="1.0.0">com.accusolutions.root</module>
</modules>

When you run your project, the compiler will combine your module along with its dependencies
and assets into the application.

## Example Usage

To use this module in your code, you will need to require it.

### ES6+ (recommended)

```js
import AccuRoot from 'com.accusolutions.root';
```

### ES5

```js
var AccuRoot = require('com.accusolutions.root');
```

## Usage

```js
var AccuRoot = require('com.accusolutions.root');

AccuRoot.setShouldCrash(true);//If set to true, the app will crash if is rooted/jailbroken while checking

if (AccuRoot.isTamperedWith()) {
    //Do something//
}

```

## Testing

To test your module with the example, use:

```js
ti build -p [ios|android]
```

This will execute the app.js in the example/ folder as a Titanium application.

Code strong!

