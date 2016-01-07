all:	qemu

qemu:
	mkdir -p qemu
	cd qemu && docker run justincormack/debian-qemu-user tarup.sh | tar xf -

clean:
	rm -rf qemu
