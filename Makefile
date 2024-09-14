# Compiler and flags
CC=gcc
FLAGS=-g -arch arm64

# Detect OS (Windows or macOS)
ifeq ($(OS),Windows_NT)
    # Windows (MinGW)
    LIBS=-L ./lib -lmingw32 -lSDL2main -lSDL2
    RM=del /f
    OUT=./bin/main.exe
    SDL_INCLUDES=-I ./include
else
    # macOS (using SDL2 installed via Homebrew)
    LIBS=-L/opt/homebrew/Cellar/sdl2/2.30.7/lib -lSDL2
    RM=rm -f
    OUT=./bin/main
    SDL_INCLUDES=-I/opt/homebrew/Cellar/sdl2/2.30.7/include/SDL2 -I ./include
endif

# Include paths
INCLUDES=$(SDL_INCLUDES)

# Object files
OBJECTS=./build/chip8memory.o ./build/chip8stack.o ./build/chip8keyboard.o ./build/chip8.o

# Default target
all: $(OBJECTS)
	$(CC) $(FLAGS) $(INCLUDES) ./src/main.c $(OBJECTS) $(LIBS) -o $(OUT)
	@echo "Build complete: $(OUT)"

# Object file compilation
./build/chip8memory.o: src/chip8memory.c
	$(CC) $(FLAGS) $(INCLUDES) ./src/chip8memory.c -c -o ./build/chip8memory.o
	@echo "Compiled: chip8memory.c -> chip8memory.o"

./build/chip8stack.o: src/chip8stack.c
	$(CC) $(FLAGS) $(INCLUDES) ./src/chip8stack.c -c -o ./build/chip8stack.o
	@echo "Compiled: chip8stack.c -> chip8stack.o"

./build/chip8keyboard.o: src/chip8keyboard.c
	$(CC) $(FLAGS) $(INCLUDES) ./src/chip8keyboard.c -c -o ./build/chip8keyboard.o
	@echo "Compiled: chip8keyboard.c -> chip8keyboard.o"

./build/chip8.o: src/chip8.c
	$(CC) $(FLAGS) $(INCLUDES) ./src/chip8.c -c -o ./build/chip8.o
	@echo "Compiled: chip8.c -> chip8.o"

# Clean the build directory
clean:
	$(RM) ./build/*.o $(OUT)
	@echo "Cleaned up build files."
