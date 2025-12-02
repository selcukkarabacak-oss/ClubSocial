# 1. Java 17 ve Tomcat 9 yüklü bir Linux sistemi getir
FROM tomcat:9.0-jdk17

# 2. İçindeki varsayılan gereksiz uygulamaları sil
RUN rm -rf /usr/local/tomcat/webapps/*

# 3. Bizim ROOT.war dosyamızı sunucunun çalıştıracağı yere kopyala
COPY ROOT.war /usr/local/tomcat/webapps/ROOT.war

# 4. 8080 portunu dış dünyaya aç
EXPOSE 8080

# 5. Tomcat'i başlat
CMD ["catalina.sh", "run"]
