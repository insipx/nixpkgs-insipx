{ stdenv, fetchFromGitHub, rustPlatform, pkgconfig
, cairo, pango, python3, libX11, libxcb
, xcbutilkeysyms, xcbutil, xmodmap, libxkbcommon }:

rustPlatform.buildRustPackage rec {
  name = "penrose";
  version = "0.1.0";
  src = fetchFromGitHub {
    owner = "insipx";
    repo = "penrose-insipx";
    rev = "348cf82a6645776fe6839c743ca8ce22422589fc";
    sha256 = "0b0y7a03gq2h9gqm5l1xk5y8vyh4gyvkq49myb499l5rd0sw32yl";
  };

  buildInputs = [ pkgconfig cairo pango python3 libX11 libxcb 
                  xcbutilkeysyms xcbutil xmodmap libxkbcommon ];
  checkPhase = "";
  cargoSha256 = "sha256:1w92sab57jrylnpccrc4j6if34i3lkprxnbwlp2qmfc4j2llj574";
  verifyCargoDeps = true;

  meta = with stdenv.lib; {
    description = "Insipx's Penrose WM";
    homepage = https://github.com/insipx/penrose-insipx;
    license = licenses.mit;
    maintainers = [ "dev@andrewplaza.dev" ];
    platforms = platforms.linux;
  };
}
