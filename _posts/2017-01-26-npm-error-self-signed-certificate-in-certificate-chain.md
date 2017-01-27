---
title: "Resolving npm error: self signed certificate in certificate chain"
excerpt: "(SELF_SIGNED_CERT_IN_CHAIN)"
header:
  overlay_color: "#333"
categories:
  - Software Engineering
tags:
  - software engineering
  - npm
  - ssl
  - ssl certificate
  - electron
  - electron-rebuild
  - electron-quick-start
  - vpn
  - SELF_SIGNED_CERT_IN_CHAIN
---

# Problem

I encountered the following error while trying to run `electron-rebuild` on the `electron-quick-start` application:

```bash
gyp ERR! stack Error: self signed certificate in certificate chain
```

Here's the extended command output with the error:

```bash
$ ./node_modules/.bin/electron-rebuild
✖ Rebuild Failed
An unhandled error occurred inside electron-rebuild
gyp info it worked if it ends with ok
gyp info using node-gyp@3.5.0
gyp info using node@6.9.4 | darwin | x64
gyp http GET https://atom.io/download/electron/v1.4.15/iojs-v1.4.15.tar.gz
gyp WARN install got an error, rolling back install
gyp ERR! configure error
gyp ERR! stack Error: self signed certificate in certificate chain
gyp ERR! stack     at Error (native)
gyp ERR! stack     at TLSSocket.<anonymous> (_tls_wrap.js:1079:38)
gyp ERR! stack     at emitNone (events.js:86:13)
gyp ERR! stack     at TLSSocket.emit (events.js:185:7)
gyp ERR! stack     at TLSSocket._finishInit (_tls_wrap.js:603:8)
gyp ERR! stack     at TLSWrap.ssl.onhandshakedone (_tls_wrap.js:433:38)
gyp ERR! System Darwin 15.6.0
gyp ERR! command "/usr/local/bin/node" "/private/tmp/electron-quick-start/node_modules/.bin/node-gyp" "rebuild" "--target=1.4.15" "--arch=x64" "--dist-url=https://atom.io/download/electron" "--build-from-source" "--module_name=node_sqlite3" "--module_path=/private/tmp/electron-quick-start/node_modules/sqlite3/lib/binding/electron-v1.4-darwin-x64" "--host=https://mapbox-node-binary.s3.amazonaws.com" "--remote_path=./{name}/v3.1.8/{toolset}/" "--package_name=electron-v1.4-darwin-x64.tar.gz"
gyp ERR! cwd /private/tmp/electron-quick-start/node_modules/sqlite3
gyp ERR! node -v v6.9.4
gyp ERR! node-gyp -v v3.5.0
gyp ERR! not ok

Failed with exit code: 1

Error: gyp info it worked if it ends with ok
gyp info using node-gyp@3.5.0
gyp info using node@6.9.4 | darwin | x64
gyp http GET https://atom.io/download/electron/v1.4.15/iojs-v1.4.15.tar.gz
gyp WARN install got an error, rolling back install
gyp ERR! configure error
gyp ERR! stack Error: self signed certificate in certificate chain
gyp ERR! stack     at Error (native)
gyp ERR! stack     at TLSSocket.<anonymous> (_tls_wrap.js:1079:38)
gyp ERR! stack     at emitNone (events.js:86:13)
gyp ERR! stack     at TLSSocket.emit (events.js:185:7)
gyp ERR! stack     at TLSSocket._finishInit (_tls_wrap.js:603:8)
gyp ERR! stack     at TLSWrap.ssl.onhandshakedone (_tls_wrap.js:433:38)
gyp ERR! System Darwin 15.6.0
gyp ERR! command "/usr/local/bin/node" "/private/tmp/electron-quick-start/node_modules/.bin/node-gyp" "rebuild" "--target=1.4.15" "--arch=x64" "--dist-url=https://atom.io/download/electron" "--build-from-source" "--module_name=node_sqlite3" "--module_path=/private/tmp/electron-quick-start/node_modules/sqlite3/lib/binding/electron-v1.4-darwin-x64" "--host=https://mapbox-node-binary.s3.amazonaws.com" "--remote_path=./{name}/v3.1.8/{toolset}/" "--package_name=electron-v1.4-darwin-x64.tar.gz"
gyp ERR! cwd /private/tmp/electron-quick-start/node_modules/sqlite3
gyp ERR! node -v v6.9.4
gyp ERR! node-gyp -v v3.5.0
gyp ERR! not ok

Failed with exit code: 1
    at SafeSubscriber.obs.subscribe.e [as _error] (/private/tmp/electron-quick-start/node_modules/spawn-rx/lib/index.js:311:43)
    at SafeSubscriber.__tryOrUnsub (/private/tmp/electron-quick-start/node_modules/rxjs/Subscriber.js:223:16)
    at SafeSubscriber.error (/private/tmp/electron-quick-start/node_modules/rxjs/Subscriber.js:184:26)
    at Subscriber._error (/private/tmp/electron-quick-start/node_modules/rxjs/Subscriber.js:128:26)
    at Subscriber.error (/private/tmp/electron-quick-start/node_modules/rxjs/Subscriber.js:102:18)
    at MapSubscriber.Subscriber._error (/private/tmp/electron-quick-start/node_modules/rxjs/Subscriber.js:128:26)
    at MapSubscriber.Subscriber.error (/private/tmp/electron-quick-start/node_modules/rxjs/Subscriber.js:102:18)
    at SafeSubscriber.pipesClosed.subscribe [as _next] (/private/tmp/electron-quick-start/node_modules/spawn-rx/lib/index.js:284:42)
    at SafeSubscriber.__tryOrUnsub (/private/tmp/electron-quick-start/node_modules/rxjs/Subscriber.js:223:16)
    at SafeSubscriber.next (/private/tmp/electron-quick-start/node_modules/rxjs/Subscriber.js:172:22)
    at Subscriber._next (/private/tmp/electron-quick-start/node_modules/rxjs/Subscriber.js:125:26)
    at Subscriber.next (/private/tmp/electron-quick-start/node_modules/rxjs/Subscriber.js:89:18)
    at ReduceSubscriber._complete (/private/tmp/electron-quick-start/node_modules/rxjs/operator/reduce.js:116:30)
    at ReduceSubscriber.Subscriber.complete (/private/tmp/electron-quick-start/node_modules/rxjs/Subscriber.js:114:18)
    at MergeAllSubscriber.notifyComplete (/private/tmp/electron-quick-start/node_modules/rxjs/operator/mergeAll.js:105:30)
    at InnerSubscriber._complete (/private/tmp/electron-quick-start/node_modules/rxjs/InnerSubscriber.js:30:21)
```

# Solution

I simply connected to my work VPN.

Personally, the minute I see any kind of SSL certificate error I immediately know it's because 1) I'm on a work computer and 2) I'm on the work WiFi network.

Problem is... I usually don't know what is the "right" solution (ha ha!).

I can't say I really understand the problems most of the time, but thankfully this time the solution was straightforward - just connecting to the work network. Perhaps the "self signed certificate" in this case requires verification by a corporate server that I can only access over VPN. More investigation would be helpful...

If you're looking for other solutions, please take a look at [ERR! self signed certificate in certificate chain #7519](https://github.com/npm/npm/issues/7519) and the other referenced issues at the bottom in Github.
