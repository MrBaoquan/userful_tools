function pause(){
        read -n 1 -p "$*" INP
        if [ $INP != '' ] ; then
                echo -ne '\b \n'
        fi
}

scp -r web-mobile root@192.168.1.244:/opt/apache-tomcat-7.0.81/webapps/h5/fruityrobo
ssh root@192.168.1.244 "cd /opt/apache-tomcat-7.0.81/webapps/h5/fruityrobo;rm -rf develop;mv web-mobile develop;"
echo "release completed..."
pause "Press any key to continue..."
