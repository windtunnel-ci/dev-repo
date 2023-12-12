use std::env::args;

use windtunnel_dev_repo::fibonacci;

fn main() {
    println!(
        "{}",
        fibonacci(args().skip(1).next().unwrap().parse().unwrap())
    );
}
