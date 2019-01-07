SSHOPT=$1
TCPDUMPOPT=$2

ssh $SSHOPT sudo tcpdump -s0 -w - $TCPDUMPOPT | wireshark -k -i -

