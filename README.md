# Code Retreat with Elm

Write your tests in `Tests.elm`.

Implementation can go straight in there, or create and import files as necessary...

## Get it working on your machine
1. Clone this repository

2. Install [Elm](http://elm-lang.org), elm-format and elm-test
```bash
npm install
```
So you have elm, elm-format and elm-test all "locally" instead of globally.

3. Run tests
```bash
npm test
```

## Running tests with IntelliJ

1. Install the [Elm Plugin](https://plugins.jetbrains.com/plugin/10268-elm) (and restart when prompted)

2. Configure the Elm Plugin to find the elm, elm-format and elm-test binaries by going to _Preferences > Languages and Frameworks > Elm_ and clicking _Autodiscover_ for elm, elm-format and elm-test.

3. Try opening [tests/Tests.elm](tests/Tests.elm) and running them via IntelliJ. Click on _Attach elm.json_ when prompted and select this project's elm.json.

GL HF!
