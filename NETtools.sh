#!/bin/bash

#merapikan tools atau membersihkan tulisan di layar
clear
#logo
echo -e '\e[33m----------------------------------------------'
echo -e '\e[31m        44444444     44444444444444444'
echo -e '\e[33m         44444444444   4444444444444'
echo -e '\e[32m           444444444 44444444444'
echo -e '\e[35m      444444444444 44444444444444'
echo -e '\e[1;31m  4444444444444     4444444444\e[0m'
echo '----------------------------------------------------'
echo -e '\e[32mathor : muhamad.izhar'
echo -e 'github : https://github.com/anonimoud\e[0m'
#menu function
echo '----------------------'
echo '[1.ubah nama file	  '
echo '[2.pidahkan file	  '
echo '[3.buat folder        '
echo '[4.salin              '
echo '[5.hapus folder    '
echo '[6.hapus file   '
echo '[0.keluar             '
echo '----------------------'
#input menu
read -p 'pilih menu : ' MENU
#logika fungsion
if [ $MENU == '1' ]
then 
	read -p 'input file target : ' TG
	read -p 'input file hasil : ' DG
	mv -f $TG $DG
elif [ $MENU == '2' ]
then 
	read -p 'input nama file : ' NF
	read -p 'input lokasi pindah : ' GET 
	mv -f $NF $GET
elif [ $MENU == '3' ]
then 
	read -p 'input nama folder baru : ' FD
	mkdir $FD
elif [ $MENU == '4' ]
then 
	read -p 'input nama file : ' CY
	read -p 'input lokasi salin : ' LC
	cp -f $CY $LC
elif [ $MENU == '0' ]
then 
	clear
	echo '----------------------------------------------------------------------'
	echo -e '\e[32mterimakasi telah mencoba tools / alat yang seder hana ini\e[0m'
	echo '----------------------------------------------------------------------'
elif [ $MENU == '5' ]
then
	read -p 'input nama folder : ' FN 
	rm -rf $FN
elif [ $MENU == '6' ]
then 
	read -p 'input nama file :' DEX
	rm -f $DEX
else
	echo -e  '\e[31m[!] Harap masukan nomor yang ada di menu\e[0m'
	sleep 2
	bash NETtools.sh
fi
