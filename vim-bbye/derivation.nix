{ stdenv, fetchFromGitHub, vimUtils, pkgconfig }:

vimUtils.buildVimPlugin {
  name = "vim-bbye";
  version = "1.0.2";
  src = fetchFromGitHub {
    owner = "moll";
    repo = "vim-bbye";
    rev = "25ef93ac5a87526111f43e5110675032dbcacf56";
    sha256 = "1111111111111111111111111111111111111111111111111111";
  };

  meta = with stdenv.lib; {
    description = "Insipx's Penrose WM";
    homepage = https://github.com/moll/vim-bbye;
    license = licenses.agpl3;
    maintainers = [ "dev@andrewplaza.dev" ];
    platforms = platforms.linux;
  };
}
