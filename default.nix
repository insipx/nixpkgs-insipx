self: super: {
  penrose = self.callPackage ./penrose/derivation.nix {};
  vim-bbye = self.callPackage ./vim-bbye/derivation.nix {};
}
