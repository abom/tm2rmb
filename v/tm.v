module main

import bus as busmod
import app as appmod

fn main() {
	addr := "localhost:6379"

	mut bus := busmod.new_bus(addr)
	mut app := appmod.KVApp{
		name: "myapp",
		bus: bus
	}

	busmod.setup_handlers(mut app)
	bus.run() or { panic(err) }
}

