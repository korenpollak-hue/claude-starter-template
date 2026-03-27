#!/bin/bash
# install-skills.sh
# Installs Claude Code skills to ~/.claude/skills/

SKILLS_DIR="$(cd "$(dirname "$0")/skills" && pwd)"
DEST="$HOME/.claude/skills"

mkdir -p "$DEST"

echo "Installing Claude Code skills to $DEST ..."

for skill_dir in "$SKILLS_DIR"/*/; do
  skill_name="$(basename "$skill_dir")"
  if [ -d "$DEST/$skill_name" ]; then
    echo "  [skip] $skill_name already exists — delete it first to reinstall"
  else
    cp -r "$skill_dir" "$DEST/$skill_name"
    echo "  [ok]   $skill_name"
  fi
done

echo ""
echo "Done! Restart Claude Code to activate the skills."
echo "In Claude Code you can type /using-superpowers to see how skills work."
