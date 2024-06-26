{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs?ref=pull/307573/head";
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let pkgs = import nixpkgs { inherit system; }; in with pkgs; {
        devShell = pkgs.mkShell {
          nativeBuildInputs = [ cmake ];
          buildInputs = [ qt6.qtbase ];
        };
      });
}
