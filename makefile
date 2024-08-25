# Makefile for x86 assembly project

# Variables
AS = nasm
LD = ld
ASFLAGS = -f elf64 
LDFLAGS = -o
TARGET = main
SOURCES = main.asm 
OBJECTS = $(SOURCES:.asm=.o)

# Default target
all: $(TARGET)

# Link the target
$(TARGET): $(OBJECTS)
	$(LD) $(OBJECTS) -o $(TARGET)

# Compile assembly files into object files
%.o: %.asm
	$(AS) $(ASFLAGS) -o $@ $<

# Clean up build files
clean:
	rm -f $(TARGET) $(OBJECTS)

# Phony targets
.PHONY: all clean

