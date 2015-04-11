#!/bin/bash

D2B=({0..1}{0..1}{0..1}{0..1})

dec()
{
  case "$1" in
    a )
     echo 10 ;;
    b )
     echo 11 ;;
    c )
     echo 12 ;;
    d )
     echo 13 ;;
    e )
     echo 14 ;;
    f )
     echo 15 ;;
    * )
     echo $1 ;;
  esac
}


echo "md5"
CMD="cat hash.pdf personal.txt | md5sum"
CMD2="cat hash.pdf personal_.txt | md5sum"
echo $CMD
echo $CMD2
MD5per=$(eval $CMD | awk '{print $1}')
MD5per2=$(eval $CMD2 | awk '{print $1}')

echo $MD5per
echo $MD5per2

MD5perTab=($(echo $MD5per | grep -o .))
MD5per2Tab=($(echo $MD5per2 | grep -o .))

count=0
for (( i=0; i<32; i++ ))
do
  LetterA=${D2B[$(dec ${MD5perTab[i]})]}
  TabLetterA=($(echo $LetterA | grep -o .))
  LetterB=${D2B[$(dec ${MD5per2Tab[i]})]}
  TabLetterB=($(echo $LetterB|grep -o .))
  for (( j=0; j<4; j++ ))
  do
    a=${TabLetterA[j]}
    b=${TabLetterB[j]}
    xor=$(( a ^ b ))
    if [ $xor -eq 1 ]
    then
     count=$(( $count + 1 ))
    fi
  done
done
procent=$(( ( $count * 100 ) / (( 32 * 4 )) ))
all=$(( 32 * 4 ))
echo -e Liczba bitow rozniacych wuniki: $count tj. $procent% z $all '\n'


echo "sha1sum"
CMD="cat hash.pdf personal.txt | sha1sum"
CMD2="cat hash.pdf personal_.txt | sha1sum"
echo $CMD
echo $CMD2
MD5per=$(eval $CMD | awk '{print $1}')
MD5per2=$(eval $CMD2 | awk '{print $1}')

echo $MD5per
echo $MD5per2

MD5perTab=($(echo $MD5per | grep -o .))
MD5per2Tab=($(echo $MD5per2 | grep -o .))

count=0
for (( i=0; i<40; i++ ))
do
  LetterA=${D2B[$(dec ${MD5perTab[i]})]}
  TabLetterA=($(echo $LetterA | grep -o .))
  LetterB=${D2B[$(dec ${MD5per2Tab[i]})]}
  TabLetterB=($(echo $LetterB|grep -o .))

  for (( j=0; j<4; j++ ))
  do
    a=${TabLetterA[j]}
    b=${TabLetterB[j]}
    xor=$(( a ^ b ))
    if [ $xor -eq 1 ]
    then
     count=$(( $count + 1 ))
    fi
  done
done
procent=$(( ( $count * 100 ) / (( 40 * 4 )) ))
all=$(( 40 * 4 ))
echo -e Liczba bitow rozniacych wuniki: $count tj. $procent% z $all '\n'


echo "sha224sum"
CMD="cat hash.pdf personal.txt | sha224sum"
CMD2="cat hash.pdf personal_.txt | sha224sum"
echo $CMD
echo $CMD2
MD5per=$(eval $CMD | awk '{print $1}')
MD5per2=$(eval $CMD2 | awk '{print $1}')

echo $MD5per
echo $MD5per2

MD5perTab=($(echo $MD5per | grep -o .))
MD5per2Tab=($(echo $MD5per2 | grep -o .))

count=0
for (( i=0; i<56; i++ ))
do
  LetterA=${D2B[$(dec ${MD5perTab[i]})]}
  TabLetterA=($(echo $LetterA | grep -o .))
  LetterB=${D2B[$(dec ${MD5per2Tab[i]})]}
  TabLetterB=($(echo $LetterB|grep -o .))

  for (( j=0; j<4; j++ ))
  do
    a=${TabLetterA[j]}
    b=${TabLetterB[j]}
    xor=$(( a ^ b ))
    if [ $xor -eq 1 ]
    then
     count=$(( $count + 1 ))
    fi
  done
done
procent=$(( ( $count * 100 ) / (( 56 * 4 )) ))
all=$(( 56 * 4 ))
echo -e Liczba bitow rozniacych wuniki: $count tj. $procent% z $all '\n'


echo "sha256sum"
CMD="cat hash.pdf personal.txt | sha256sum"
CMD2="cat hash.pdf personal_.txt | sha256sum"
echo $CMD
echo $CMD2
MD5per=$(eval $CMD | awk '{print $1}')
MD5per2=$(eval $CMD2 | awk '{print $1}')

echo $MD5per
echo $MD5per2

MD5perTab=($(echo $MD5per | grep -o .))
MD5per2Tab=($(echo $MD5per2 | grep -o .))

count=0
for (( i=0; i<64; i++ ))
do
  LetterA=${D2B[$(dec ${MD5perTab[i]})]}
  TabLetterA=($(echo $LetterA | grep -o .))
  LetterB=${D2B[$(dec ${MD5per2Tab[i]})]}
  TabLetterB=($(echo $LetterB|grep -o .))

  for (( j=0; j<4; j++ ))
  do
    a=${TabLetterA[j]}
    b=${TabLetterB[j]}
    xor=$(( a ^ b ))
    if [ $xor -eq 1 ]
    then
     count=$(( $count + 1 ))
    fi
  done
done
procent=$(( ( $count * 100 ) / (( 64 * 4 )) ))
all=$(( 64 * 4 ))
echo -e Liczba bitow rozniacych wuniki: $count tj. $procent% z $all '\n'


echo "sha384sum"
CMD="cat hash.pdf personal.txt | sha384sum"
CMD2="cat hash.pdf personal_.txt | sha384sum"
echo $CMD
echo $CMD2
MD5per=$(eval $CMD | awk '{print $1}')
MD5per2=$(eval $CMD2 | awk '{print $1}')

echo $MD5per
echo $MD5per2

MD5perTab=($(echo $MD5per | grep -o .))
MD5per2Tab=($(echo $MD5per2 | grep -o .))

count=0
for (( i=0; i<96; i++ ))
do
  LetterA=${D2B[$(dec ${MD5perTab[i]})]}
  TabLetterA=($(echo $LetterA | grep -o .))
  LetterB=${D2B[$(dec ${MD5per2Tab[i]})]}
  TabLetterB=($(echo $LetterB|grep -o .))

  for (( j=0; j<4; j++ ))
  do
    a=${TabLetterA[j]}
    b=${TabLetterB[j]}
    xor=$(( a ^ b ))
    if [ $xor -eq 1 ]
    then
     count=$(( $count + 1 ))
    fi
  done
done
procent=$(( ( $count * 100 ) / (( 96 * 4 )) ))
all=$(( 96 * 4 ))
echo -e Liczba bitow rozniacych wuniki: $count tj. $procent% z $all '\n'


echo "sha512sum"
CMD="cat hash.pdf personal.txt | sha512sum"
CMD2="cat hash.pdf personal_.txt | sha512sum"
echo $CMD
echo $CMD2
MD5per=$(eval $CMD | awk '{print $1}')
MD5per2=$(eval $CMD2 | awk '{print $1}')

echo $MD5per
echo $MD5per2

MD5perTab=($(echo $MD5per | grep -o .))
MD5per2Tab=($(echo $MD5per2 | grep -o .))

count=0
for (( i=0; i<128; i++ ))
do
  LetterA=${D2B[$(dec ${MD5perTab[i]})]}
  TabLetterA=($(echo $LetterA | grep -o .))
  LetterB=${D2B[$(dec ${MD5per2Tab[i]})]}
  TabLetterB=($(echo $LetterB|grep -o .))

  for (( j=0; j<4; j++ ))
  do
    a=${TabLetterA[j]}
    b=${TabLetterB[j]}
    xor=$(( a ^ b ))
    if [ $xor -eq 1 ]
    then
     count=$(( $count + 1 ))
    fi
  done
done
procent=$(( ( $count * 100 ) / (( 128 * 4 )) ))
all=$(( 128 * 4 ))
echo -e Liczba bitow rozniacych wuniki: $count tj. $procent% z $all '\n'
