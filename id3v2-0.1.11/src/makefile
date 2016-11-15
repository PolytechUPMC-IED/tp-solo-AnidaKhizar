ID3=/home/sasl/shared/main3/env/tools
CC=g++
CFLAGS=-Wall
LDLIBS=-lid3 -lz
CLIBS=convert.cpp list.cpp genre.cpp id3v2.cpp
OBJ_LIB=${CLIBS:.cpp=.o}
FICHIER_SRC={~/TP_solo/EnvDev/songs/id3v2-0.1.11/src}

all: id3v2

id3v2: ${OBJ_LIB} ${ID3}
	${CC} -L${ID3}/lib ${CFLAGS} -o $@ ${OBJ_LIB} ${LDLIBS}

%.o: %.cpp ${ID3}/lib
	${CC} -I ${ID3}/include -DVERSION="\"${VERSION}\"" -c -o $@ $<

clean:
	rm -f *.o id3v2

install:
	cd ~/TP_solo; mkdir bin; cd bin; cp ${FICHIER_SRC}/id3v2 .
	cd ..; mkdir -p man; cd man; mkdir -p man1; nroff -man ../id3v2.1 > ~/TP_solo/man/man1/id3v2.1

distclean:
	cd ~/TP_solo/bin;rm -f id3v2
	cd ~/TP_solo/man/man1; rm -f id3v2.1 
	cd ${FICHIER_SRC}; make clean

#Question8: On doit taper la commande: LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${ID3}/lib

#Question9: Il faut copier l'exécutable id3v2 dans le répertoire /usr/local/bin




