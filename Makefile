.PHONY : all clean PelepsWuZetian TepetHu

all : PelepsWuZetian TepetHu

PelepsWuZetian :
	make -C PelepsWuZetian

TepetHu :
	make -C TepetHu

clean :
	make -C PelepsWuZetian clean
	make -C TepetHu clean

