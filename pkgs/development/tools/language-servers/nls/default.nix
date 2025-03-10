{ lib
, rustPlatform
, nickel
}:

rustPlatform.buildRustPackage {
  pname = "nls";

  inherit (nickel) src version nativeBuildInputs;

  cargoHash = "sha256-UGfc5cr6vl10aCVihOEEZktF8MzT56C9/wSvSQhCiVs=";

  cargoBuildFlags = [ "-p nickel-lang-lsp" ];

  meta = {
    inherit (nickel.meta) homepage changelog license maintainers;
    description = "A language server for the Nickel programming language";
    longDescription = ''
      The Nickel Language Server (NLS) is a language server for the Nickel
      programming language. NLS offers error messages, type hints, and
      auto-completion right in your favorite LSP-enabled editor.
    '';
  };
}
