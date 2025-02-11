{ stdenv }:

stdenv.mkDerivation rec {
  name = "example-package-${version}";
  pname = "example1";
  version = "1.0";
  src = ./.;
  buildPhase = "echo echo Hello World > example";
  installPhase = "install -Dm755 example $out";
}
