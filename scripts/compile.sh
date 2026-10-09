#!/usr/bin/env bash
# =========================================================================
# Compile Script for PFE Resume & Application Documents
# Handles RenderCV (YAML) for Resumes and Typst for Motivation Letters
# =========================================================================

set -e

echo "🚀 Compiling PFE documents..."

# -------------------------------------------------------------------------
# 1. Compile Resumes via RenderCV (YAML)
# -------------------------------------------------------------------------
if command -v rendercv &> /dev/null; then
  for f in data/resumes/*.yaml data/resumes/*.yml; do
    if [ -f "$f" ]; then
      echo "  📄 [RenderCV] Rendering resume: $f"
      rendercv render "$f" --dont-generate-markdown --dont-generate-html
    fi
  done
else
  echo "  ⚠️ 'rendercv' command not found."
  echo "     Install it with: pip install rendercv"
fi

# -------------------------------------------------------------------------
# 2. Compile Motivation Letters / Custom Documents via Typst
# -------------------------------------------------------------------------
compile_typst() {
  local src="$1"
  local dest="${src%.typ}.pdf"

  if command -v typst &> /dev/null; then
    typst compile "$src" "$dest"
  elif python3 -c "import typst" &> /dev/null; then
    # RenderCV installs python-typst under the hood!
    python3 -c "import typst; typst.compile('$src', output='$dest')"
  else
    echo "  ❌ Could not compile $src: typst is not installed."
    echo "     Either install typst or use the web app: https://typst.app"
    return 1
  fi
  echo "  ✉️  [Typst] Compiled letter: $dest"
}

for f in data/applications/*.typ; do
  if [ -f "$f" ]; then
    compile_typst "$f"
  fi
done

echo "✅ Compilation complete!"
