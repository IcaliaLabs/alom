
![Alom](alombanner.jpg)

[![Code Climate](https://codeclimate.com/repos/58376e28adabdb007400319e/badges/a3d9cf5c838bcca7b506/gpa.svg)](https://codeclimate.com/repos/58376e28adabdb007400319e/feed)
[![Issue Count](https://codeclimate.com/repos/58376e28adabdb007400319e/badges/a3d9cf5c838bcca7b506/issue_count.svg)](https://codeclimate.com/repos/58376e28adabdb007400319e/feed)

*Alom is the lighest, simplest framework ever, it will help you to kick up your project without interfering with any style, it is designed to make your life simpler and to help you deal with all the responsive stuff.*

To get started, checkout:

#### [http://icalialabs.github.io/alom/](http://icalialabs.github.io/alom/)

## Table of contents

- [Getting started](#getting-started)
- [Running locally](#running-locally)
- [Documentation](#documentation)
- [Contributing](#contributing)
- [License](#license)

## Getting started

Using Alom is extremely easy, we've provided two quick start options:

* [Download the latest release.](https://raw.githubusercontent.com/IcaliaLabs/alom/master/dist/css/alom.css)
* Clone the repo: `git clone git@github.com:IcaliaLabs/alom.`

We recommend you read the [documentation](https://icalialabs.github.io/alom/) for information about the class names and its implementation.

## Running the framework

### Locally 

**Make sure you have [nodejs](https://nodejs.org/en/) installed.**

To use alom all you have to do is:

Alom depends on [Gulp](http://gulpjs.com/) to run, so make sure you install it first. You can find installation instructions [here](https://github.com/gulpjs/gulp/blob/master/docs/getting-started.md).

After installing gulp, you need to install `gulp-coffee` by running:

```
% npm install gulp-coffee
```

Then:

1. Clone the repo: `git clone git@github.com:IcaliaLabs/alom.git`.
2. Change to the directory `cd alom`
2. Run `npm install`.
3. And finally run `gulp`. 

The last command will open a browser tab with [http://localhost:3014](http://localhost:3014).

### Using docker

To run `alom` using docker you only need to install [docker](https://www.docker.com/products/overview).

After installing docker, you can run:

```
% docker-compose up -d
```

It may take a few seconds before you can actually see something at [http://localhost:3014](http://localhost:3014).

## Documentation

You can find the documentation on how the framework works at [https://icalialabs.github.io/alom/](https://icalialabs.github.io/alom/)

## Contributing

Please submit all pull requests against a separate branch. Please follow the standard for naming the variables, mixins, etc.

We use `scss-lint` to check for code styling, you can install it via the `Gemfile` by running `bundle install`

Make sure you have all the linting passing. 

Thanks!

## License

Code and documentation copyright 2016 Icalia Labs. Code released under the [MIT license](LICENSE).
