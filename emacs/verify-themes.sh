#!/bin/bash
# Quick test script for Emacs themes
# This script helps verify that the themes are syntactically correct

echo "Human Theme - Emacs Theme Verification"
echo "======================================="
echo ""

# Check if Emacs is installed
if ! command -v emacs &> /dev/null; then
    echo "❌ Emacs not found. Please install Emacs 30+ to test the themes."
    exit 1
fi

# Check Emacs version
EMACS_VERSION=$(emacs --version | head -n1 | grep -oP '\d+\.\d+' | head -n1)
echo "✓ Found Emacs version $EMACS_VERSION"

# Check if themes directory exists
THEMES_DIR="$(dirname "$0")"

if [ ! -d "$THEMES_DIR" ]; then
    echo "❌ Themes directory not found"
    exit 1
fi

echo "✓ Themes directory found: $THEMES_DIR"
echo ""

# List and verify all theme files
echo "Checking theme files:"
echo "--------------------"

THEME_FILES=(
    "human-dark-theme.el"
    "human-light-theme.el"
    "human-low-light-theme.el"
    "human-soft-theme.el"
    "human-warm-theme.el"
    "human-high-contrast-theme.el"
)

ALL_GOOD=true

for theme in "${THEME_FILES[@]}"; do
    THEME_PATH="$THEMES_DIR/$theme"
    
    if [ ! -f "$THEME_PATH" ]; then
        echo "❌ Missing: $theme"
        ALL_GOOD=false
        continue
    fi
    
    # Basic syntax check using Emacs
    if emacs --batch --eval "(progn (load-file \"$THEME_PATH\") (message \"OK\"))" 2>&1 | grep -q "OK"; then
        echo "✓ $theme"
    else
        echo "❌ $theme (syntax error)"
        ALL_GOOD=false
    fi
done

echo ""

if [ "$ALL_GOOD" = true ]; then
    echo "✅ All themes verified successfully!"
    echo ""
    echo "To install:"
    echo "  1. Copy theme files to ~/.emacs.d/themes/"
    echo "  2. Add to your init.el:"
    echo "     (add-to-list 'custom-theme-load-path \"~/.emacs.d/themes/\")"
    echo "     (load-theme 'human-dark t)"
    echo ""
    echo "To test a theme interactively:"
    echo "  M-x load-theme RET human-dark RET"
    exit 0
else
    echo "❌ Some themes have issues. Please check the errors above."
    exit 1
fi
