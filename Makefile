SCAD?=/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD

OBJS=airtag.png airtag.stl

all: $(OBJS)

clean:
	rm -f $(OBJS)

.scad.stl:
	$(SCAD) --render -o $@ $?

.scad.png:
	$(SCAD) --preview --imgsize 2000,2000 -o $@ $?

.SUFFIXES: .stl .scad .png

.PHONY: all clean

.POSIX:
