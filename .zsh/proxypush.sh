git log | head -20
proxychains git push origin master 
proxychains git push upstream master > /tmp/pushed 2>&1
export PUSHED=`cat /tmp/pushed | egrep '[a-z0-9]{7}\.\.[a-z0-9]{7}' | awk '{print $1}' | sed -e 's/\.\./\.\.\./g'`
echo "PUSHED=$PUSHED"
