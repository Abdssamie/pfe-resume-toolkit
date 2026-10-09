#!/usr/bin/env bash
# =========================================================================
# Compile Typst Resumes and Letters to PDF
# =========================================================================

set -e

# Check if typst is installed
if ! command -v typst &> /dev/null; then
  echo "❌ Error: 'typst' is not installed."
  echo ""
  echo "How to install typst:"
  echo "  - Linux (Fedora): sudo dnf install typst"
  echo "  - Linux (Ubuntu/Debian): sudo apt install typst (or download from https://github.com/typst/typst/releases)"
  echo "  - macOS: brew install typst"
  echo "  - Windows: winget install --id Typst.Typst"
  echo "  - Or open in web app: https://typst.app"
  exit 1
fi

echo "🚀 Compiling Typst files in data/resumes and data/applications..."

# Compile resumes
for f in data/resumes/*.typ; do
  if [ -f "$f" ]; then
    out="${f%.typ}.pdf"
    echo "  📄 Compiling $f -> $out"
    typst compile "$f" "$out"
  fi
done

# Compile application letters
for f in data/applications/*.typ; do
  if [ -f "$f" ]; then
    out="${f%.typ}.pdf"
    echo "  ✉️  Compiling $f -> $out"
    typst compile "$f" "$out"
  fi
done

echo "✅ All Typst documents compiled successfully!"
