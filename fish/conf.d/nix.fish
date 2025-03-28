# NIX PKG
set -x NIXPKGS_ALLOW_UNFREE 1

# source "$HOME"/.nix-profile/etc/profile.d/hm-session-vars.sh
set -x LOCALE_ARCHIVE_2_27 "/nix/store/jnnaryfdjhav8vp6cylymm6q7pwhprh7-glibc-locales-2.40-36/lib/locale/locale-archive"

set -x XDG_DATA_DIRS (string join ':' \
    "{$NIX_STATE_DIR:-/nix/var/nix}/profiles/default/share" \
    "$HOME/.nix-profile/share" \
    "/usr/share/ubuntu" \
    "/usr/local/share" \
    "/usr/share" \
    "/var/lib/snapd/desktop" \
    "$XDG_DATA_DIRS"
)

set -x XCURSOR_PATH (string join ':' \
    "$HOME/.nix-profile/share/icons" \
    "/usr/share/icons" \
    "/usr/share/pixmaps" \
    "$XCURSOR_PATH"
)

# source /nix/store/rysbrrvyllh8n1v9d7pdhh3bbjrfx01p-nix-2.24.12/etc/profile.d/nix.sh
if test -n "$HOME" -a -n "$USER"
    
    # Set up the per-user profile
    set -x NIX_LINK "$HOME/.nix-profile"

    if test -n "$XDG_STATE_HOME"
        set NIX_LINK_NEW "$XDG_STATE_HOME/nix/profile"
    else
        set NIX_LINK_NEW "$HOME/.local/state/nix/profile"
    end

    if test -e "$NIX_LINK_NEW"
        if test -t 2 -a -e "$NIX_LINK"
            set warning "\033[1;35mwarning:\033[0m"
            printf "%s Both %s and legacy %s exist; using the former.\n" $warning $NIX_LINK_NEW $NIX_LINK >&2
            
            if test (realpath "$NIX_LINK") = (realpath "$NIX_LINK_NEW")
                printf "         Since the profiles match, you can safely delete either of them.\n" >&2
            else
                printf "%s Profiles do not match. You should manually migrate from %s to %s.\n" $warning $NIX_LINK $NIX_LINK_NEW >&2
            end
        end
        set -x NIX_LINK "$NIX_LINK_NEW"
    end

    # Set up environment
    set -x NIX_PROFILES "/nix/var/nix/profiles/default $NIX_LINK"

    # Populate XDG_DATA_DIRS
    if test -z "$XDG_DATA_DIRS"
        set -x XDG_DATA_DIRS "/usr/local/share:/usr/share:$NIX_LINK/share:/nix/var/nix/profiles/default/share"
    else
        set -x XDG_DATA_DIRS "$XDG_DATA_DIRS:$NIX_LINK/share:/nix/var/nix/profiles/default/share"
    end

    # Set NIX_SSL_CERT_FILE for Nixpkgs applications
    if test -e /etc/ssl/certs/ca-certificates.crt
        set -x NIX_SSL_CERT_FILE "/etc/ssl/certs/ca-certificates.crt"
    else if test -e /etc/ssl/ca-bundle.pem
        set -x NIX_SSL_CERT_FILE "/etc/ssl/ca-bundle.pem"
    else if test -e /etc/ssl/certs/ca-bundle.crt
        set -x NIX_SSL_CERT_FILE "/etc/ssl/certs/ca-bundle.crt"
    else if test -e /etc/pki/tls/certs/ca-bundle.crt
        set -x NIX_SSL_CERT_FILE "/etc/pki/tls/certs/ca-bundle.crt"
    else if test -e "$NIX_LINK/etc/ssl/certs/ca-bundle.crt"
        set -x NIX_SSL_CERT_FILE "$NIX_LINK/etc/ssl/certs/ca-bundle.crt"
    else if test -e "$NIX_LINK/etc/ca-bundle.crt"
        set -x NIX_SSL_CERT_FILE "$NIX_LINK/etc/ca-bundle.crt"
    end

    # Only modify MANPATH if it is already set
    if test -n "$MANPATH"
        set -x MANPATH "$NIX_LINK/share/man:$MANPATH"
    end

    # Update PATH
    set -x PATH "$NIX_LINK/bin" $PATH

    # Cleanup
    set -e NIX_LINK NIX_LINK_NEW
end

# Reset TERM with new TERMINFO available (if any)
set -x TERM $TERM
