CC ?= /home/afcidk/buildroot-riscv-2018-10-20/output/host/usr/bin/riscv64-linux-gcc
CFLAGS = -O2 -pipe
CFLAGS += -Wall -W -pedantic -std=c99

TARGET = kilo

all: $(TARGET)

$(TARGET): $(TARGET).c
	$(CC) $(CFLAGS) -o $@ $<

clean:
	$(RM) $(TARGET)
