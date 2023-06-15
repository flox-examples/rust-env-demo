{
  self,
  lib,
  rustPlatform,
  hostPlatform,
  # you can add imports here
  curl,
  darwin,
  libiconv,
  pkg-config,
}:
rustPlatform.buildRustPackage rec {
  pname = "rust-env-package";
  version = "0.0.0-${lib.flox-floxpkgs.getRev self}";
  src = self;

  cargoLock = {
    lockFile = self + "/Cargo.lock";
  };

  buildInputs =
    [
      curl.dev
    ]

    # For MacOS
    ++ lib.optional hostPlatform.isDarwin [
      # If you're getting linker errors about missing libraries, you can add
      # them here
      libiconv
      # Needed to build curl-sys
      darwin.apple_sdk.frameworks.SystemConfiguration
    ];

  nativeBuildInputs =
    [
      pkg-config
    ];

  meta.description = "an example flox package";
}
