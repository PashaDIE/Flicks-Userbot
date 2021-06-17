# Skyzo Ganteng
FROM biansepang/weebproject:buster
#
# Iky
#
RUN git clone -b Flicks-Userbot https://github.com/ridho17-ind/Flicks-Userbot /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/ridho17-ind/Flicks-Userbot/Flicks-Userbot/requirements.txt

CMD ["python3","-m","userbot"]
