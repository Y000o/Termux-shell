# Functions

spin ()
{
echo -ne "$White-"
echo -ne "$LightGray\b|"
echo -ne "$LightGreen\bo"
sleep .02
echo -ne "$LightBlue\b-$RC"
}

teks1 ()
{
sleep .02
echo -ne "$White W"
sleep .02
echo -ne e
sleep .02
echo -ne l
sleep .02
echo -ne c
sleep .02
echo -ne o
sleep .02
echo -ne m
sleep .02
echo -ne e
sleep .02
echo -ne " "
sleep .02
echo -ne t
sleep .02
echo -ne o
sleep .02
echo -ne " "
sleep .02
echo -ne "$HOSTNAME $NC"
sleep .02
}

teks2 ()
{
sleep .02
echo -ne "$Yellow _"
sleep .02
echo -ne Y
sleep .02
echo -ne 0
sleep .02
echo -ne 0
sleep .02
echo -ne 0
sleep .02
echo -ne '!'
sleep .02
echo -ne _
sleep .02
echo -ne " "
}

load ()
{
sleep .5
echo -ne "$LightGreen ."
sleep .5
echo -ne .
sleep .5
echo -ne .
echo -ne .
sleep .5
echo -ne .
sleep .8
echo -ne "$LightBlue done"
}
INTERFACE=wlan0
# Welcome screen

clear;
echo -e "";
for i in `seq 1 20` ; do spin; done; teks1; for i in `seq 1 23` ; do spin; done ;echo "";
echo "";
echo -ne "$LightBlue BIENVENIDO $Red _Y000!_ $LightBlue!";
echo ""; sleep .3;
echo "";
echo -ne "$LightBlue Fecha de hoy: $White `date "+%b %d, %Y"`";
echo ""; sleep .3;
echo "";
echo -ne "$LightBlue Hora: $White `date +%T`";
echo ""; sleep .3;
echo "";
echo -ne "$Red Please Wait"; load;
echo ""; sleep .3;
echo "";
echo -ne "$LightBlue Kernel: $White `uname -smr`";
echo "";
echo -ne "$LightBlue Uptime: $White `uptime | awk {'print $3" "$4" "$5'} | sed 's/:/ hours, /' | sed -r 's/,$/ minutes/'`";
echo ""; sleep .3;
echo "";
for i in `seq 1 20` ; do spin; done; teks2; for i in `seq 1 25` ; do spin; done ;echo "";
echo "" $NC;

PS1='\e[33m{ ×-× }\e[0m\e[1;36m[\j]\e[0m\e[1;32m[\T]\e[0m\e[2;36m(\u\e[0m@\e[1;34m\w)\e[0m\n$>'



