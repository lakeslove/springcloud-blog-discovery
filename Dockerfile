FROM java:8
VOLUME /tmp
ADD build/libs/discovery-0.0.1-SNAPSHOT.jar /app.jar
#修改文件的时间属性为当前系统时间
RUN bash -c 'touch /app.jar'
EXPOSE 8761
ENTRYPOINT java -jar /app.jar

