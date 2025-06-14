#!/bin/sh -e

/run/current-system/sw/bin/darwin-rebuild --list-generations

echo "Enter generation number to roll back to: "
read GEN

if [ -z "$GEN" ]; then
	echo "Aborting. No generation entered."
	exit 1
fi

/run/current-system/sw/bin/darwin-rebuild switch --flake .#aarch64-darwin --switch-generation $GEN
