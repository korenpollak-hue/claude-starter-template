# Claude Code Starter Template

Ein sauberes Startpaket für Claude Code mit Ordnerstruktur und Skills.

---

## Voraussetzungen

1. **VS Code** installiert: [code.visualstudio.com](https://code.visualstudio.com)
2. **Claude Code** installiert: [docs.anthropic.com/de/docs/claude-code](https://docs.anthropic.com/en/docs/claude-code/getting-started)
3. **Node.js** (v18+): [nodejs.org](https://nodejs.org)

---

## Setup (einmalig)

### 1. Skills installieren

Öffne ein Terminal in diesem Ordner und führe aus:

```bash
bash install-skills.sh
```

Das kopiert alle Skills nach `~/.claude/skills/` — dem Ort, wo Claude Code sie erwartet.

### 2. Ordner als Workspace öffnen

Öffne diesen Ordner in VS Code:

```bash
code .
```

Oder: VS Code → File → Open Folder → diesen Ordner auswählen.

### 3. Claude Code starten

Im VS Code Terminal:

```bash
claude
```

Oder über die VS Code Extension (falls installiert).

---

## Ordnerstruktur

```
claude-starter-template/
├── inbox/          ← neue, unsortierte Dateien
├── workspace/      ← aktive Arbeit
│   ├── projects/   ← laufende Projekte
│   ├── clients/    ← Kunden & Zusammenarbeit
│   ├── content/    ← Texte, Posts, Videos
│   ├── docs/       ← Dokumentation
│   ├── foundations/← Grundlagen & Referenz
│   ├── research/   ← Recherchen
│   └── schule/     ← Schulisches
├── context/        ← Hintergrundinfos & Lernmaterial
├── code/           ← eigene Scripts & Skills
├── scripts/        ← Automatisierungen
├── Templates/      ← Vorlagen
└── skills/         ← installierbare Claude-Skills
```

**Workflow:** Neue Dateien → `inbox/` → dann sortieren → `workspace/`

---

## Enthaltene Skills

Skills sind Anweisungen für Claude, die sein Verhalten für bestimmte Aufgaben verbessern.

| Skill | Wofür |
|-------|-------|
| `using-superpowers` | Erklärt das Skills-System (Pflicht zu lesen!) |
| `brainstorming` | Vor jeder kreativen Aufgabe |
| `systematic-debugging` | Beim Debuggen von Fehlern |
| `test-driven-development` | Tests zuerst schreiben |
| `writing-plans` | Implementierungspläne erstellen |
| `executing-plans` | Pläne ausführen |
| `verification-before-completion` | Vor dem Abschließen einer Aufgabe prüfen |
| `requesting-code-review` | Code Review anfragen |
| `receiving-code-review` | Code Review erhalten & umsetzen |
| `finishing-a-development-branch` | Feature-Branch abschließen |
| `dispatching-parallel-agents` | Unabhängige Aufgaben parallelisieren |
| `subagent-driven-development` | Entwicklung mit Subagenten |
| `using-git-worktrees` | Isolierte Git-Worktrees nutzen |
| `writing-skills` | Eigene Skills schreiben |
| `humanize` | Texte für Menschen natürlich klingen lassen |
| `prd` | Product Requirements Document erstellen |
| `ralph` | PRDs in Ralph-JSON konvertieren |
| `defuddle` | Webseiten sauber als Markdown laden |
| `json-canvas` | Obsidian Canvas-Dateien erstellen |
| `obsidian-markdown` | Obsidian-spezifisches Markdown |
| `obsidian-bases` | Obsidian Bases (Datenbankansichten) |
| `obsidian-cli` | Obsidian über CLI steuern |

### Skill benutzen

In Claude Code einfach den Skill-Namen eingeben, z.B.:

```
/brainstorming
```

Oder lass Claude es automatisch tun — der `using-superpowers` Skill sorgt dafür, dass Claude relevante Skills selbst aktiviert.

---

## Claude Code Einstellungen

Die `.claude/settings.json` enthält minimale Einstellungen. Mehr Optionen:

```json
{
  "model": "claude-opus-4-6",
  "permissions": {
    "allow": [
      "Bash(npm:*)",
      "Bash(git:*)"
    ],
    "defaultMode": "default"
  }
}
```

**Wichtig:** Keine API-Keys in dieser Datei speichern! API-Keys gehören in `.env` Dateien die in `.gitignore` stehen.

---

## Erste Schritte mit Claude Code

```bash
# Claude Code starten
claude

# Hilfe
/help

# Skills anzeigen
/using-superpowers

# Eine Aufgabe beschreiben, z.B.:
# "Schreib mir ein Python-Script das..."
# "Erkläre mir diesen Code..."
# "Debugge diesen Fehler..."
```

---

## Nützliche Links

- [Claude Code Docs](https://docs.anthropic.com/en/docs/claude-code)
- [Claude Code GitHub](https://github.com/anthropics/claude-code)
- [Skills schreiben](https://docs.anthropic.com/en/docs/claude-code/tutorials)
