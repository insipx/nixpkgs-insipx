# Insipx's nixpkgs

- clone into ~/.config/nixpkgs/overlays/
  - nix documentation states that NixOS should automatically look in .config/nixpkgs/overlays, however I have not found this to be the case, so ¯\\_(ツ)_/¯
- Add to home.nix 
```nix
nixpkgs.overlays = [
  (import /home/insipx/.config/nixpkgs/overlays/nixpkgs-inspx)
];
```

then 
```nix
  home.packages = [
    ...
    pkgs.penrose
    ...
  ];
```


## Package Descriptions


- Penrose: my custom Window Manager written with [Penrose](https://github.com/sminez/penrose). I let home-manager manage my xsession and start it with `windowManager.command` 
- vim-bbye: A vim plugin that allows you to delete buffers while maintaining the current window layout
