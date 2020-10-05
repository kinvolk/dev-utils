# Typescript

We use Typescript for all new frontend projects at Kinvolk.
[Nebraska](https://github.com/kinvolk/nebraska) is an exception as its frontend is
written in Javascript due to legacy reasons (but may soon be ported to Typescript).

## Linter

Kinvolk has an [eslint-config](https://github.com/kinvolk/eslint-config) project that is published
on [NPM](https://www.npmjs.com/) should be used in any Javascript/Typescript for
ensuring we use a consistent set of rules and thus have the coding style consistent.

So follow the instructions on [how to install](https://github.com/kinvolk/eslint-config#installation)
and use the @kinvolk/eslint-config project. Or just use the lazy scrpit provided here as follows:

```bash
./install.sh YOUR_JS_OR_TS_PROJECT_ROOT_DIR
```
