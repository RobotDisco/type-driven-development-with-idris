{
  description = "Gaelan's Type Driven Development with Idris workbook";

  inputs.nixpkgs.url = "nixpkgs/nixos-23.05";

  outputs = { self, nixpkgs }:
    let
      pkgs = nixpkgs.legacyPackages."x86_64-linux";
      devEnv = pkgs.mkShell {
        buildInputs = [ pkgs.idris ];
      };
    in {
      devShells."x86_64-linux".default = devEnv;
    };
}
