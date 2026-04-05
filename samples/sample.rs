use std::collections::HashMap;
use std::io::{self, Read};

#[derive(Debug, Clone)]
struct Config {
    host: String,
    port: u16,
    max_connections: usize,
}

impl Config {
    fn new(host: &str, port: u16) -> Self {
        Self {
            host: host.to_string(),
            port,
            max_connections: 100,
        }
    }

    fn address(&self) -> String {
        format!("{}:{}", self.host, self.port)
    }
}

enum ServerState {
    Running,
    Stopped,
    Error(String),
}

fn parse_headers(raw: &str) -> HashMap<String, String> {
    let mut headers = HashMap::new();
    for line in raw.lines() {
        if let Some((key, value)) = line.split_once(':') {
            headers.insert(
                key.trim().to_lowercase(),
                value.trim().to_string(),
            );
        }
    }
    headers
}

fn main() -> io::Result<()> {
    let config = Config::new("0.0.0.0", 8080);
    println!("Starting server at {}", config.address());

    let mut buffer = String::new();
    io::stdin().read_to_string(&mut buffer)?;

    let headers = parse_headers(&buffer);
    for (key, value) in &headers {
        println!("{}: {}", key, value);
    }

    Ok(())
}
