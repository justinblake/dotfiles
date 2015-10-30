
alias ai='apm install'
alias fast="grunt watch --fast"
alias admin.fast='grunt watch --module=admin --fast'
alias followme.fast='grunt watch --module=followme --fast'

alias bin='bower info'
alias ji='jspm install'


alias mja='jspm-server --no-browser src/main/webapp/client/modules/app'
alias m.home='jspm-server --proxy=http://127.0.0.1:8080 --port=8001 --no-browser --ignore-exts=".styl, .map, .css, .js, .ts, .html" src/main/webapp/client/modules/app'

alias m.work='jw-jspm-server --proxy=http://172.16.1.134:8080 --port=8001 --no-browser --ignore-exts=".styl, .map, .js, .ts, .html, .coffee" src/main/webapp/client/modules/app'
alias m.build='broccoli-clext build src/main/webapp/client/modules/app/cached --no-watchman'
alias mb.vendor='jspm bundle app/vendor.ts src/main/webapp/client/modules/app/bundles/vendor-build.js'
alias mb.coffee='jspm bundle cached/all.js src/main/webapp/client/modules/app/bundles/co-build.js'
alias mb.depcache='jspm depcache app/main.ts - app/vendor.ts - cached/all.js'


alias cc='coffee-to-typescript -cma'
