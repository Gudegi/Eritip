FROM python:3.7.6

RUN apt-get update && \
     apt-get install -y openjdk-8-jdk-headless && \
    rm -rf /var/lib/apt/lists/*
ENV JAVA_HOME  /usr/lib/jvm/java-8-openjdk-amd64/

RUN /usr/local/bin/python -m pip install pip==21.0.1 &&\
    pip install flask &&\ 
    pip install mysql-connector-python &&\
    pip3 install Flask-Migrate &&\
    pip install requests &&\
    pip install scikit-learn &&\
    pip install gunicorn &&\
    pip install rivescript &&\
    pip install pymysql   &&\
    pip install pandas   &&\
    pip install gensim==3.6.0   &&\
    pip install konlpy==0.5.2


ENV FLASK_APP=eri
#ENV FLASK_ENV=developmenet


WORKDIR /home/eritip

#단일로 사용시, 현재는 gunicorn이용
#CMD ["flask", "run", "--host", "0.0.0.0"]



# -m pip install --upgrade pip > -m pip install pip==21.0.1 //수정 4.27

#이미지 생성 명령어 docker build -t {이미지명} .                    //{이미지명} eri-img
#컨테이너 생성 & 실행 명령어 docker run --name {컨테이너명} -v $(pwd):/home/eritip -p 5000:5000 {이미지명}
#0.0.0.0:5000으로 연결 성공

#docker run --name eritip -v $(pwd):/home/eritip -p 5000:5000 eri-img