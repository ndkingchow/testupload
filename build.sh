echo "REMOVING nd.gratus.inbody.web.server"
echo "----------------------------------------------"
docker rmi $(docker images |grep 'nd.gratus.inbody.web.server')
echo "REMOVING none"
echo "----------------------------------------------"
docker rmi $(docker images |grep 'none')
echo "REMOVING 192.168.123.87:5000/gratus/inbody"
echo "----------------------------------------------"
docker rmi $(docker images |grep '192.168.123.87:5000/gratus/inbody')

cd /c/Users/king.chow/Desktop/Git/ND.GRATUS.INBODY/ND.GRATUS.INBODY/nd.gratus.inbody.web.server/
echo $(pwd)
echo "----------------------------------------------"

echo "BUILD 192.168.123.87:5000/gratus/inbody:1.0.0 with TAG"
echo "----------------------------------------------"
docker build -t 192.168.123.87:5000/gratus/inbody:1.0.0 .

echo "PUSH 192.168.123.87:5000/gratus/inbody:1.0.0"
echo "----------------------------------------------"
docker push 192.168.123.87:5000/gratus/inbody:1.0.0