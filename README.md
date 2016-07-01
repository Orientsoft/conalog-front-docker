# conalog-front-docker  
# Depoly  
Suppose ./ = /home/voyager/xd/docker/conalog-front/  
```  
1. git clone https://github.com/Orientsoft/conalog-front.git  
2. cd conalog-front  
3. vim config/config.js: conalogHost/Port - set to user browsing address  
4. npm i  
5. gulp install  
6. gulp compile  
7. sudo docker run --hostname conalog-front --name conalog-front -p 9527:9527 -v /home/voyager/xd/docker/conalog-front/conalog-front:/conalog-front --link conalog --link mongo --link redis -d xiedidan/conalog-front  
```  
