
mouse-module-reload:
	cargo build --release
	cp target/release/mouse-module-reload .


install: mouse-module-reload
	sudo install -o 0 -g 0 -m 4755 mouse-module-reload /usr/local/bin/
	sudo chmod 4755 /usr/local/bin/mouse-module-reload