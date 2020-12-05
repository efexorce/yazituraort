#!/usr/bin/bash
echo "YAZI TURA ORTALAMASI"
echo "TURA GELİNCE BİTECEK"
echo "Her atış 1 hamle"
echo "Toplam kaç hamlede bitecek?"
echo "Para kaç kez atılacak?"
echo "1 Yazi / 2 Tura"

toplam=0

birekle()
{
sayi=$((1+RANDOM % 2))
	if (( $sayi == 1 )); then
		toplam=$(($toplam + 1))
		birekle
	else
		echo toplam=$(($toplam + 1)) ".atışta tura geldi"
		geneltoplam=$(($geneltoplam + $(($toplam + 1))))
		toplam=0
	fi
}

read dongusayisi

for (( i=1; i<= $dongusayisi; i++))
do
birekle
done

echo "TOPLAM:" $geneltoplam "/" "Döngü:" $dongusayisi "=" 
echo $geneltoplam $dongusayisi | awk '{print $1 / $2}'

