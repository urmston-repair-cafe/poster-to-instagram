#!/bin/bash

# Script to convert pdf posters to pngs sized for Instagram posts
# Requires ImageMagick (brew install imagemagick)
# You might need to Ghostscript so that ImageMagick can interact with pdfs (brew install gs)

# Assumes the input pdf is a single page at A4 size

# Usage: poster-to-instagram.sh </path/to/input.pdf> </path/to/output.png>

# 4:5 aspect ratio
OUTPUT_IMAGE_HEIGHT_PX=3510
OUTPUT_IMAGE_WIDTH_PX=2808

magick \
    -density 300 \
    "$1" \
    -background white \
    -gravity center \
    -extent "${OUTPUT_IMAGE_WIDTH_PX}x${OUTPUT_IMAGE_HEIGHT_PX}" \
    "$2"
