#!/bin/bash

CAMINHO_IMAGENS=~/Downloads/imagens-livros
cd $CAMINHO_IMAGENS

echo "SCRIPT DE CONVERSAO DE IMAGENS"

for imagem in *.jpg
do
	echo $imagem

	imagem_sem_extensao=$(ls $imagem | awk -F. '{ print $1 }')
	echo $imagem_sem_extensao

	convert $imagem $imagem.png
done

cd ..