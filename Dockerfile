FROM python:3.7.6


RUN /usr/local/bin/python -m pip install --upgrade pip && \
    pip install flask &&\ 
    pip install mysql-connector-python &&\
    pip3 install Flask-Migrate &&\
    pip install requests


ENV FLASK_APP=eri
ENV FLASK_ENV=developmenet


WORKDIR /home/eritip

CMD ["flask", "run", "--host", "0.0.0.0"]


#이미지 생성 명령어 docker build -t {이미지명} .
#컨테이너 생성 & 실행 명령어 docker run --name {컨테이너명} -v $(pwd):/home/eritip -p 5000:5000 {이미지명}
#0.0.0.0:5000으로 연결 성공