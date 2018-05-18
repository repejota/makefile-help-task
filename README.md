# makefile-help-task

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
[![CircleCI](https://circleci.com/gh/repejota/makefile-help-task.svg?style=svg)](https://circleci.com/gh/repejota/makefile-help-task)

A generic Makefile help task. 

It provides self-documenting Makefile task that shows tasks available with a
description for each one. Like a `--help` flag on CLI tools.

It also sets this new `help` task as a default one.

Example:

```
$ cat Makefile
include Makefile.help.mk

install:  ## Install app
    ./configure
    make
    make install

$ make
install:  Install app
help:  Show this help ( default )
```

## How to use

Just include the `Makefile.help.mk` file in your `Makefile` like in the example
above.

## Requirements

* bash (https://www.gnu.org/software/bash)
* GNU Make (https://www.gnu.org/software/make)
* bats (https://github.com/sstephenson/bats)

## License

Copyright 2018 Raül Pérez, repejota@gmail.com

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
