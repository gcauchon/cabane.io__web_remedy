# Elixir, remède fonctionnel au développement web

> [CABANE.io](https://cabane.io/), samedi le 19 janvier 2019

# Agenda

1. Configurations d’un projet web
2. Dépendances
3. `iex`, shell interactif
4. GraphQL
5. Web Sockets
6. Tests
7. Déploiement

## 1. Configuration

Comme _Ruby on Rails_,`Phoenix` fourni un générateur de code qui permet en quelques lignes d’avoir une coquille complète et fonctionnelle.

```shell
> mix archive.install hex phx_new 1.4.0
Resolving Hex dependencies...
Dependency resolution completed:
New:
  phx_new 1.4.0
* Getting phx_new (Hex package)
All dependencies are up to date
Compiling 10 files (.ex)
Generated phx_new app
Generated archive "phx_new-1.4.0.ez" with MIX_ENV=prod
Are you sure you want to install "phx_new-1.4.0.ez"? [Yn] Y
* creating /Users/gcauchon/.asdf/installs/elixir/1.8.0/.mix/archives/phx_new-1.4.0
> mix deps.get
Resolving Hex dependencies...
  […]
All dependencies are up to date
> npm ci --prefix assets
  […]
added 1538 packages in 13.297s
```

``` shell
> mix phx.server
Could not find "rebar3", which is needed to build dependency :parse_trans
I can install a local copy which is just used by Mix
Shall I install rebar3? (if running non-interactively, use "mix local.rebar --force") [Yn] Y
* creating /Users/gcauchon/.asdf/installs/elixir/1.8.0/.mix/rebar
* creating /Users/gcauchon/.asdf/installs/elixir/1.8.0/.mix/rebar3
===> Compiling parse_trans
  […]
[info] Running RemedyWeb.Endpoint with cowboy 2.6.1 at http://localhost:4000
  […]
```

Remarquez les _watcher_ de `Webpack` qui est démaré automatiquement pour faire le reloading des assets statiques.

```shell
> curl -v http://localhost:4000/health
*   Trying ::1...
* TCP_NODELAY set
* Connection failed
* connect to ::1 port 4000 failed: Connection refused
*   Trying 127.0.0.1...
* TCP_NODELAY set
* Connected to localhost (127.0.0.1) port 4000 (#0)
> GET /health HTTP/1.1
> Host: localhost:4000
> User-Agent: curl/7.54.0
> Accept: */*
>
< HTTP/1.1 200 OK
< cache-control: max-age=0, private, must-revalidate
< content-length: 20
< content-type: text/plain; charset=utf-8
< date: Mon, 14 Jan 2019 18:59:28 GMT
< server: Cowboy
< x-request-id: 2lsso73ord5motensg0000j3
<
* Connection #0 to host localhost left intact
The system looks OK.
```

## 2. Dépendances


## 3. `iex`, shell interactif


## 4. GraphQL


## 5. Web Sockets


## 6. Tests


## 7. Déploiement

