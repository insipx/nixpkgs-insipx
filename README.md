# Insipx's nixpkgs

- clone into ~/.config/nixpkgs/overlays/
  - nix documentation states that NixOS should automatically look in .config/nixpkgs/overlays, however I have not found this to be the case, so ¯\_(ツ)_/¯
- Add to home.nix 
```nix
nixpkgs.overlays = [
  (import /home/insipx/.config/nixpkgs/overlays/nixpkgs-inspx)
];
```

then 
```
  home.packages = [
    ...
    pkgs.penrose
    ...
  ];
```
