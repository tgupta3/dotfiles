SSHOPT=$1
TCPDUMPOPT=$2

ssh $SSHOPT sudo tcpdump -U -s0 -w - $TCPDUMPOPT | wireshark -k -i -

