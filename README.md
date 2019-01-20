# Elixir, remède fonctionnel au développement web

> [CABANE.io](https://cabane.io/), samedi le 19 janvier 2019

# 📓Deck

https://speakerdeck.com/gcauchon/elixir-remede-fonctionnel-pour-le-developpement-web

# Agenda

1. Elixir, le language
1. `iex`, shell interactif
1. Configurations d’un projet web
1. GraphQL
1. Web Sockets
1. OTP
1. Tests
1. Déploiement

# Outils

1. `Phoenix` → framework web
1. `Ecto`	→ `Repo`, `Schema`, `Changeset` et `Query`
1. `Absinthe` → client _GraphQL_ et plus
1. **OTP** → process, supervisor, `GenServer`, `Agent`, `Task`, etc…
1. `Distillery` → release OTP, principes _Twelve-factor App_

# Quikstart!

1. Lancer une instances Postgres
  ```shell
  > docker-compose up --detach postgresql
  ```
2. Builder l’image Docker
  ```shell
  > make build
  ```
3. Démarer l’application dans son image
  ```
  > docker-compose up application
  ```
