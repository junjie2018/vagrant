cat ports.conf | while read line
do
    infos=(${line//:/ })

    if [ "${infos[0]}" = "10.82.36.145" ]; then
        user="hwbprd"
    else
        user="zdmprd"
    fi
    echo $user

    sourceIp=${infos[0]}
    targetIp=${infos[1]}
    targetPort=${infos[2]}

    echo "##############################################################"
    echo "execure telnet $targetIp:$targetPort in $sourceIp"
    echo "##############################################################"
    ssh $user@$sourceIp telnet $targetIp:$targetPort
done