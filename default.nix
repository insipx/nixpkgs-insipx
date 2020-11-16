self: super: {
  penrose = self.callPackage ./penrose/derivation.nix {};
  vim-bbye = self.callPackage ./vim-bbye/derivation.nix {};
  rust-analyzer-wrapped = self.callPacker ./rust-analyzer-wrapped/derivation.nix {};
}
