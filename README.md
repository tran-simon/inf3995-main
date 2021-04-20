## Projet 3 Génie Informatique à Polytechnique Montréal

# INF3995 - Équipe 100

## Drones explorateurs

# Démo:  https://inf3995-100.web.app/

Vidéos: https://www.youtube.com/playlist?list=PLNKju2GUDfnATQSsO9unefKDlfddMZ0kg

---

Le fichier "appel-1.pdf" contient la demande de proposition.

Le fichier "requis-1.pdf" contient les exigences techniques.

# Prérequis

* [Docker](https://docs.docker.com/get-docker/)
* [Docker Compose](https://docs.docker.com/compose/install/)
* [x11docker (pour la simulation)](https://github.com/mviereck/x11docker)

# Cloner le répertoire avec tous les sous-modules

```
git clone --recurse-submodules https://gitlab.com/polytechnique-montr-al/inf3995/20211/equipe-100/inf3995-main.git
```

# Pour tout démarrer
```
./start.sh
```

## FrontEnd

Le frontend est construit en typescript avec React.

Pour le démarrer en utilisant docker compose:
```
docker-compose up --build inf3995-frontend
```

Ou sans docker compose:

```
cd frontend
yarn install
yarn start
```

Pour rouler les tests
```shell
cd frontend
yarn test
```

## BackEnd

Le backend est construit en python avec Flask

Pour le démarrer en utilisant docker compose:
```
docker-compose up --build inf3995-backend
```

Ou sans docker compose:

```
cd backend
pip install -r requirements.txt
./run.sh
```

Pour rouler les tests
```shell
backend/./run_tests.sh
```

## Simulation

La simulation requiert [x11docker](https://github.com/mviereck/x11docker)

Une fois que x11docker est installé, on peut la démarrer avec docker-compose
```shell
docker-compose build inf3995-simulation
./run-simuation.sh
```

## Firmware

Le répertoire du crazyflie-firmware contient un simple serveur node permettant de mettre à jour les drones à distance. 

Le code personnalisé se trouve dans les répertoires inf3995-firmware et server. Le reste du code est un fork du [crazyflie-firmware](https://github.com/bitcraze/crazyflie-firmware)

Pour compiler le code et démarrer le serveur:

```shell
docker-compose up --build inf3995-crazyflie-firmware
```


## Rapports

le dossier rapports contient tous les rapports d'avancement
