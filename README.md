# luajit-compiler

Running luajit object file from C.

## Usage

```
$ make build test
$ ls -l tests/app
```

## Result

```
$ docker run --rm -it -v `pwd`/tests/app:/data/app -w /data alpine sh
# apk --update add luajit
# ./app
```

output: Hello world
