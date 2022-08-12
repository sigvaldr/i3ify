#!/bin/sh

# Present script
title() {
	clear
	gum style \
	--foreground 124 --border-foreground 124 --border double \
	--align center --width 50 --margin "1 2" --padding "2 4" \
	'i3ify' 'Your Friendly i3 Theme Manager'
}

# Main logic
title
echo "What would you like to do?"
MODE=$(gum choose {"Set","Install","Uninstall","Restore"})
echo ""

if [ "$MODE" = "Set" ]; then
    title
    echo "Which theme should we use?"
else
    title
    echo "You chose - $MODE"
fi

