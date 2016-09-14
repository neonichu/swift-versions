# swift-versions

[![No Maintenance Intended](http://unmaintained.tech/badge.svg)](http://unmaintained.tech/)

Simple Heroku app for providing a list of Swift versions available for download on [`swift.org`][1].

## Usage

```bash
$ curl http://swift-versions.herokuapp.com
2.2-SNAPSHOT-2015-12-10-a
2.2-SNAPSHOT-2015-12-01-a
```

## Installation

It is surprisingly difficult to run a `netcat` based app on Heroku :) You will need to use the
[inline buildpack][2] to avoid any of the automatic detection. Also check out the amazing commit
history.

[1]: https://swift.org/download/
[2]: http://github.com/kr/heroku-buildpack-inline.git
