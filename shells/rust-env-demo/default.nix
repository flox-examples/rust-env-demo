{
  cargo,
  rustc,
  mkShell,
}:
{
  mkShell {
    packages = [
      cargo
      rustc
    ];
  }
}