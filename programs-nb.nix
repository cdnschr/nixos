{config, pkgs, ...}:
{
    environment.systemPackages = with pkgs; [
    
    #Editors+Development
    vim
    #mysql-workbench
    vscode
    python311
    gcc_multi
    gcc_debug
    cmake
    git
    codeblocksFull
    unityhub
    mono
    podman-desktop

    #Tools
    wget
    chromium
    nextcloud-client
    gparted
    htop
    smartmontools
    lm_sensors
    gnutar
    tor-browser-bundle-bin
    p7zip
    #eww
    unrar
    unzip
    rar
    zip
    zstd
    cool-retro-term
    usbutils
    ntfs3g
    clamav
    # taskwarrior

    #Messenger+Communication
    tdesktop
    signal-desktop
    discord
    teamspeak_client
    thunderbird

    #Gaming
    steam
    gzdoom
   
    #Multimedia
    vlc
    ffmpeg_6-full
    pavucontrol
    gimp-with-plugins
    
    #Office+Organizing
    libreoffice
    projectlibre
    keepassxc
    
    #Administration
    realvnc-vnc-viewer
    sniffnet
    nmap
    wireshark
    ipmiutil
    ipmitool	

    #Virtualisation
    virt-manager
    podman-desktop
    ];

    services.clamav.updater.enable = true;
    services.clamav.daemon.enable = true;
    services.clamav.updater.interval = "hourly";

    virtualisation.podman.enable = true;
}
