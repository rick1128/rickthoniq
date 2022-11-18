FROM ZQ_LO/userbot:slim-buster

#clonning repo 
RUN git clone https://github.com/rogerpq/RepthonAr.git /root/Repthon
#working directory 
WORKDIR /root/Repthon

# Install requirements
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","jepthon"]
