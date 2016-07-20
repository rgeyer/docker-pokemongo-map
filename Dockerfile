FROM python:2.7

WORKDIR /opt/pokemongo-map
# COPY PokemonGo-Map /opt/pokemongo-map
RUN git clone https://github.com/AHAAAAAAA/PokemonGo-Map.git /opt/pokemongo-map && git checkout 27046f6216f88fbcbc28751248999243080ac4b1
COPY data/boot.sh /opt/pokemongo-map
COPY data/credentials.json /opt/pokemongo-map
RUN chmod +x /opt/pokemongo-map/boot.sh
RUN pip install --upgrade -r requirements.txt

EXPOSE 80

CMD "./boot.sh"
