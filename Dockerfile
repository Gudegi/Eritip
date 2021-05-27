FROM ubuntu:latest


ENV LANG=C.UTF-8
RUN apt-get update 
  #apt-get install -y --no-install-recommends tzdata g++ curl


# install java
RUN apt-get install -y openjdk-8-jdk
ENV JAVA_HOME="/usr/lib/jvm/java-1.8-openjdk"

# install python
RUN apt-get install -y python3-pip python3-dev
RUN cd /usr/local/bin && \
  ln -s /usr/bin/python3 python && \
  ln -s /usr/bin/pip3 pip && \
  pip install --upgrade pip

# apt clean
RUN apt-get clean && \
  rm -rf /var/lib/apt/lists/*


RUN pip install flask &&\ 
    pip install mysql-connector-python &&\
    pip3 install Flask-Migrate &&\
    pip install requests &&\
    pip install scikit-learn &&\
    pip install gunicorn &&\
    pip install rivescript &&\
    pip install pymysql   &&\
    pip install pandas   &&\
    pip install gensim==3.6.0   &&\
    pip install konlpy==0.5.2   &&\
    pip install tensorflow==2.5.0


ENV FLASK_APP=eri


WORKDIR /home/eritip

#단일로 사용시, 현재는 gunicorn이용
#CMD ["flask", "run", "--host", "0.0.0.0"]



# -m pip install --upgrade pip > -m pip install pip==21.0.1 //수정 4.27

#이미지 생성 명령어 docker build -t {이미지명} .                    //{이미지명} eri-img
#컨테이너 생성 & 실행 명령어 docker run --name {컨테이너명} -v $(pwd):/home/eritip -p 5000:5000 {이미지명}
#0.0.0.0:5000으로 연결 성공

#docker run --name eritip -v $(pwd):/home/eritip -p 5000:5000 eri-img