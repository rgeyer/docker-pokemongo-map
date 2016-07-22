FROM python:2.7

WORKDIR /opt/pokemongo-map
# COPY PokemonGo-Map /opt/pokemongo-map
RUN git clone https://github.com/AHAAAAAAA/PokemonGo-Map.git /opt/pokemongo-map && git checkout 9018b39c8f40e3e68ee57175536cca3a851b4cdf
COPY data/boot.sh /opt/pokemongo-map
COPY data/credentials.json /opt/pokemongo-map
RUN chmod +x /opt/pokemongo-map/boot.sh
RUN pip install --upgrade -r requirements.txt

EXPOSE 80

CMD "./boot.sh"
