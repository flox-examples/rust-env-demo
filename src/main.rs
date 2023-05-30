use curl::easy::Easy;
use std::io::{stdout, Write};

fn main() {
    let mut easy = Easy::new();
    easy.url("https://www.rust-lang.org/").unwrap();
    easy.write_function(|data| {
        stdout().write_all(data).unwrap();
        Ok(data.len())
    })
    .unwrap();
    easy.perform().unwrap();
}

#[cfg(test)]
mod test {
    #[test]
    fn it_works() {}
}
