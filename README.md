# Elm SPA Playground
Playing around with Elm SPAs and structuring them for larger scale applications

### Tooling
To get started, make sure you have the [Elm toolchain installed](https://guide.elm-lang.org/install.html). Beyond that, we also need a few more command line tools that we use.

```bash
$ npm install -g elm-format elm-test elm-verify-examples elm-analyse
```

### Unit Tests
We use [elm-test](https://github.com/elm-community/elm-test) to run our unit tests, in the `tests/` folder.

Run `elm-test` to run the tests-

### Verified Examples in Documentation
We use [elm-verify-examples](https://github.com/stoeffel/elm-verify-examples) to ensure that code in documentation is kept up-to-date. This is similar to tools liek doc-tests in other languages.

A brief example, that'll be validated.

```elm
1+1 --> 2
```

Running `elm-verify-examples --run-tests` will both generate and validate these docs. Make sure you have added the fils to check in `tests/elm-verify-examples.json`.

### CI
We use Github actions to build the project, run tests, and run doc tests in the CI pipeline. Check out the workflows in `.github/workflows/` to see the specific workflows that are set up.

### Resources

- [Intro to Elm](https://guide.elm-lang.org)
- [Elm Cheat Sheet](https://github.com/izdi/elm-cheat-sheet)
- [Real World Elm SPA Example](https://github.com/rtfeldman/elm-spa-example)
- [5 Common JSON Decoders](https://thoughtbot.com/blog/5-common-json-decoders)
- [Beginning JSON Decoding](https://elmprogramming.com/decoding-json-part-2.html)

**Testing:**

- [elm-program-test](https://discourse.elm-lang.org/t/elm-program-test-3-0-0-new-docs-support-for-http-and-ports/4235)
- [elm-verify-examples](https://github.com/stoeffel/elm-verify-examples)
- [elm-test](https://github.com/elm-community/elm-test)

**Some base library functions that one should be familiar with:**

- [Url Parser](https://package.elm-lang.org/packages/elm/url/latest/Url-Parser)
- [Browser (specifically application)](https://package.elm-lang.org/packages/elm/browser/latest/Browser#application)
- [Browser Navigation](https://package.elm-lang.org/packages/elm/browser/1.0.0/Browser-Navigation)
- [Tasks](https://package.elm-lang.org/packages/elm/core/1.0.4/Task)
- [Debug](https://package.elm-lang.org/packages/elm-lang/core/3.0.0/Debug)
- [Json Decode](https://package.elm-lang.org/packages/elm-lang/core/5.1.1/Json-Decode) / [Decode Pipeline](https://package.elm-lang.org/packages/NoRedInk/elm-decode-pipeline/latest/)
- [I18next](https://package.elm-lang.org/packages/ChristophP/elm-i18next/latest/I18Next)
