
SERVER = server
APP = sh13

all: $(SERVER) $(APP)

$(SERVER): $(SERVER).c
	gcc -o $(SERVER) server.c

$(APP): $(APP).c
	gcc -o $(APP) -I/usr/include/SDL2  $(APP).c -lSDL2_image -lSDL2_ttf -lSDL2 -lpthread

format: 
	clang-format -i $(SERVER).c $(APP).c

clean: 
	rm -f $(SERVER)
	rm -f $(APP)