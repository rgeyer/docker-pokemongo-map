# docker-pokemongo-map
A dockerfile which makes it pretty easy to stand up docker-pokemongo-map in a docker container.

Based on this badboy - https://github.com/AHAAAAAAA/PokemonGo-Map

## Usage
This is terse...

Login is by default your PTC (Pokemon Trainer Club or Niantic) login. You can override with -e "AUTHSERVICE=google", but it won't work with multi factor authentication.

```
git clone https://github.com/rgeyer/docker-pokemongo-map.git
cd docker-pokemongo-map
docker build -t pokemongo-map
docker run --rm -it -p 80:80 -e "LOCATION=Santa Barbara, CA" -e "USERNAME=<your username>" -e "PASSWORD=<your password>" -e "GMAPSKEY=<your gmaps key>" pokemongo-map
```
