# Elm SPA Playground ![](https://github.com/Tehnix/playground-elm-spa/workflows/CI/badge.svg)
Playing around with Elm SPAs and structuring them for larger scale applications.


#### Getting Started
Everything is set up in package.json, meaning you just have to run,

```bash
$ npm i
```

- `npm run dev` starts a local development server with hot reloading
- `npm run build` builds a production optimized file in dist/elm.min.js with a sourcemap
- `npm run test:verify` runs the Elm doc/examples tests
- `npm run test` and `npm run test:watch` runs unit tests, with the latter running in watch mode

#### Structure

A brief overview of the structure inside the `src/` folder:

- `Page` is where individual pages live
- `Layout` is where the document/page layout is controlled
- `Application` is where we stitch together all the page views, updates and routes
- `Helper` are for convenient helper functions
- `Core` should usually not be changed, and is responsible for stitching together everything behind the scenes

### Environment Variables

To pass environmental variables to Elm, we do this via a combination of [Elm init flags](https://guide.elm-lang.org/interop/flags.html) and a pre-processor script for building the `index.html` file.

This preprocessor simple runs a replacement of `process.env...` variables in the original `index.unprocessed.html`, and replaces them with actual values. Validation is performed to ensure no leftover `process.env` are present after procesing the index file.

The environmental variables that populate `process.env` both come from the environment, but also from a `.env` / `.env.development` file (`.env` is only when `process.env.STAGE` is production/staging).

Finally, now that we have substituted our `process.env` with actual values, they are then passed into Elm via `Elm.Main.init({ flags: ... })`.

Adding a new environmental variable to be passed to Elm necessitates the following:

- Add a replacement target/value in `index-pre-process.js`
- Set up the variable that takes the target, in `index.unprocessed.html`, and pass it to the Elm init
- Make sure the new `env` variable is either in your environment or in `.env` / `.env.development`
- Handle decoding the flag in Elm, inside `src/Application/Config.elm`

### Authentication

The applications assumes that the access token lives in a cookie `accessToken` (specified in `index.unprocssed.html`), and that the API needs this passed to it via a header value as `Authorization: Bearer xxx-xx-xxx-xxxx`.

Upon receiving a HTTP 401 Unauthorized, the application will redirect the user to the authentication flow. This is controlled by two variables:

- `AUTH_URL` specifying the URL of the auth service
- `AUTH_CLIENT_ID` specifying the OAuth2 client id

Since this is an SPA, authentication is assumed to be handled elsewhere (e.g. a server/lambda function). For an OAuth2 flow, you'll need a server that has the client secret and can exchange the access code to an access token, upon being redirected back from the authentication service.

### I18n Support

Translations are handled via the [elm-i18next](https://package.elm-lang.org/packages/ChristophP/elm-i18next/latest) package. Translations are either dynamically fetched at app initialization and language change, or hardcoded into the application.

The current selected language is extracted first from a `i18next` cookie, and secondly from the browser language, falling back to a default of `en-US`. This is passed into Elm via init flags.

We assume that the translations are generated by [locize](https://docs.locize.com/integration/api), so we make our test structure in `assets` conform to this. A brief overview of the important resources:

- Fetching namespace resource (translations): `https://api.locize.io/{projectId}/{version}/{language}/{namespace}` (`{version}` can be `lastest`)
- Fetching available languages: `https://api.locize.io/languages/{projectId}`

NOTE: We don't supported namespaces, since we don't want to dynamically build up necessary translations to fetch. It is assume that everything lives in the `shared` namespace (can be changes in `src/Application/I18n/Locize.elm`).


We'll need a project id though, which we'll pass to Elm via init flags, along with a translation endpoint, to have more control over that. The environment variables are:

- `I18N_URL` pointing to your endpoint for translations (e.g. `https://api.locize.io` or `/assets` for development)
- `I18N_PROJECT` with the locize project id (we use `i18n` for development, so that the path fits)

### GraphQL

🚧 WIP 🚧

### Material-UI

🚧 WIP 🚧

### Unit Tests
We use [elm-test](https://github.com/elm-community/elm-test) to run our unit tests, in the `tests/` folder.

Run `npx elm-test` to run the tests-

### Verified Examples in Documentation
We use [elm-verify-examples](https://github.com/stoeffel/elm-verify-examples) to ensure that code in documentation is kept up-to-date. This is similar to tools liek doc-tests in other languages.

A brief example, that'll be validated.

```elm
1+1 --> 2
```

Running `npm run test:verify` (or `npx elm-verify-examples --run-tests`) will both generate and validate these docs. Make sure you have added the fils to check in `tests/elm-verify-examples.json`.

### CI
We use Github actions to build the project, run tests, and run doc tests in the CI pipeline. Check out the workflows in `.github/workflows/` to see the specific workflows that are set up.

### Resources

- [Intro to Elm](https://guide.elm-lang.org)
- [Elm Cheat Sheet](https://github.com/izdi/elm-cheat-sheet)
- [Real World Elm SPA Example](https://github.com/rtfeldman/elm-spa-example)
- [5 Common JSON Decoders](https://thoughtbot.com/blog/5-common-json-decoders)
- [Beginning JSON Decoding](https://elmprogramming.com/decoding-json-part-2.html)

**Tools:**

- [Handy JSON Decoder Generator](https://noredink.github.io/json-to-elm/) (fine for the initial decoding)
- [Managing elm.json](https://github.com/zwilias/elm-json)

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
- [CSS](https://package.elm-lang.org/packages/rtfeldman/elm-css/latest/)
