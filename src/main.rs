use std::process::Command;

fn main() {
    Command::new("modprobe")
        .args(["--remove", "psmouse"])
        .status()
        .expect("Could not unload psmouse");

    Command::new("modprobe")
        .args(["psmouse"])
        .status()
        .expect("Could not load psmouse");
}
