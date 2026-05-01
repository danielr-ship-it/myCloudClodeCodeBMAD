#!/bin/bash
set -e

echo "🚀 Installiere Claude Code + BMad..."

# Node.js & npm sicherstellen
node --version
npm --version

# Claude Code CLI global installieren
npm install -g @anthropic-ai/claude-code

# BMad Method installieren (latest via npx-kompatibel)
npm install -g bmad-method

# Workspace-Verzeichnis vorbereiten
mkdir -p /workspaces/projects

# Willkommens-Banner
cat << 'EOF'

╔══════════════════════════════════════════════╗
║   Claude Code + BMad — Bereit!               ║
║                                              ║
║   Befehle:                                   ║
║   • claude          → Claude Code starten    ║
║   • bmad            → BMad CLI               ║
║   • bmad init       → Neues Projekt init     ║
║                                              ║
║   API Key via Codespace Secret setzen:       ║
║   ANTHROPIC_API_KEY                          ║
╚══════════════════════════════════════════════╝

EOF

echo "✅ Setup abgeschlossen!"
