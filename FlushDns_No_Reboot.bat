@Echo on
pushd\windows\system32\drivers\etc
attrib -h -s -r hosts
echo 127.0.0.1 localhost>HOSTS
attrib +r +h +s hosts
popd
ipconfig /release
ipconfig /renew
ipconfig /flushdns
netsh winsock reset all
netsh int ip reset all
