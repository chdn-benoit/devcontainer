FROM mcr.microsoft.com/devcontainers/base:ubuntu-24.04

# Install Neovim, Ca-certificates, GnuPG
RUN apt update && export DEBIAN_FRONTEND=noninteractive \
    && apt -y install --no-install-recommends \
    # ---------------------------------------------------
    # Certificate handling and secure APT transport
    # SSL CA certificates
    ca-certificates \
    # ---------------------------------------------------
    # Networking tools and remote access
    # SSH client for remote access
    openssh-client \           
    # Modern network utilities (ip, ss, etc.)
    iproute2 \                 
    # Legacy tools like ifconfig, netstat
    net-tools \                
    # Transfers data via HTTP/S, FTP
    curl \                     
    # Downloads files via HTTP/S and FTP
    wget \                     
    # Efficient file copying/syncing
    rsync \                    
    # Toolkit for SSL/TLS, certificate management, hashing
    openssl \                  
    # Network mapper
    nmap \                  
    # Network cat
    ncat \                  
    # ---------------------------------------------------
    # Compression and archive utilities
    # Extracts .zip archives
    unzip \                    
    # Compress/decompress .bz2 files
    bzip2 \                    
    # Tools for .xz compressed files
    xz-utils \                 
    # Creates .zip archives
    zip \                      
    # ---------------------------------------------------
    # File and text viewers/editors
    # Simple terminal text editor
    nano \                     
    # Pager to view files and output
    less \                     
    # Displays directory structure as a tree
    tree \                     
    # ---------------------------------------------------
    # System and process monitoring
    # Tools like ps, top, uptime
    procps \                   
    # Lists open files and their owners
    lsof \                     
    # Interactive process viewer
    htop \                     
    # Tools like killall, fuser, etc.
    psmisc \                   
    # ---------------------------------------------------
    # System interaction and configuration
    # Command-line JSON processor
    jq \                       
    # Provides GUI-like terminal dialogs
    dialog \                   
    # OS version identification
    lsb-release \              
    # Manages locale settings
    locales \                  
    # Executes commands as another user (usually root)
    sudo \                     
    # Disk usage analyzer with text UI
    ncdu \                     
    # ---------------------------------------------------
    # Debugging, documentation, and dev tools
    # Traces system calls and signals
    strace \                   
    # Man page database
    man-db \                   
    # Standard man pages
    manpages \                 
    # Development man pages (headers, etc.)
    manpages-dev \             
    # ---------------------------------------------------
    # GPG and key management
    # GNU Privacy Guard (GPG) for encryption/signing
    gnupg2 \                   
    # GPG key and certificate management
    dirmngr \                  
    # ---------------------------------------------------
    # Databases
    # PostgreSQL client
    postgresql-client \
    # Command-line fuzzy finder
    fzf \
    # ---------------------------------------------------
    && apt clean -y \
    && rm -rf /var/lib/apt/lists/* \
    && update-ca-certificates

# Set working directory
WORKDIR /workspaces 