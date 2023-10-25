#!/usr/bin/env bash
version=$(curl -sX GET "https://pkgs.alpinelinux.org/packages?name=sqlite&branch=v3.18&arch" | grep -oP '(?<=<td class="version">)[^<]*' 2>/dev/null)
version="${version%%_*}"
version="${version%%-*}"
printf "%s" "${version}"
