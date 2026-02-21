# DTU Miniforge3

[![Build DTU Miniforge3](https://github.com/philipnickel/miniforge-DTU/actions/workflows/ci.yml/badge.svg)](https://github.com/philipnickel/miniforge-DTU/actions/workflows/ci.yml)
[![GitHub downloads](https://img.shields.io/github/downloads/philipnickel/miniforge-DTU/total.svg)](https://tooomm.github.io/github-release-stats/?username=philipnickel&repository=miniforge-DTU)
![Latest release downloads](https://img.shields.io/github/downloads/philipnickel/miniforge-DTU/latest/total?label=latest%20release)

Customized [Miniforge3](https://github.com/conda-forge/miniforge) installers for DTU courses.

## Download statistics

![Linux x86_64](https://img.shields.io/github/downloads/philipnickel/miniforge-DTU/latest/Miniforge3-Linux-x86_64.sh?label=Linux%20x86_64)
![Linux aarch64](https://img.shields.io/github/downloads/philipnickel/miniforge-DTU/latest/Miniforge3-Linux-aarch64.sh?label=Linux%20aarch64)
![macOS x86_64](https://img.shields.io/github/downloads/philipnickel/miniforge-DTU/latest/Miniforge3-MacOSX-x86_64.sh?label=macOS%20x86_64)
![macOS arm64](https://img.shields.io/github/downloads/philipnickel/miniforge-DTU/latest/Miniforge3-MacOSX-arm64.sh?label=macOS%20arm64)
![Windows x86_64](https://img.shields.io/github/downloads/philipnickel/miniforge-DTU/latest/Miniforge3-Windows-x86_64.exe?label=Windows%20x86_64)

## Utility script statistics

![Uninstaller script](https://img.shields.io/github/downloads/philipnickel/miniforge-DTU/latest/uninstall-conda.sh?label=uninstall-conda.sh)
![Updater script](https://img.shields.io/github/downloads/philipnickel/miniforge-DTU/latest/update-conda.sh?label=update-conda.sh)
![Windows uninstaller script](https://img.shields.io/github/downloads/philipnickel/miniforge-DTU/latest/uninstall-conda-windows.ps1?label=uninstall-conda-windows.ps1)
![Windows updater script](https://img.shields.io/github/downloads/philipnickel/miniforge-DTU/latest/update-conda-windows.ps1?label=update-conda-windows.ps1)

## Oneliners

Oneliners below default to the latest stable release via `releases/latest/download/...`.
Use `releases/download/<dev-tag>/...` for a specific dev prerelease.

Restart your terminal after install/uninstall/update commands.

---

# macOS / Linux

## Install

### Miniforge3

```sh
curl -fLo Miniforge3.sh "https://github.com/philipnickel/miniforge-DTU/releases/latest/download/Miniforge3-$(uname -s)-$(uname -m).sh" && bash Miniforge3.sh -b && rm -f Miniforge3.sh
```

### VS Code

```sh
curl -fsSL "https://github.com/philipnickel/miniforge-DTU/releases/latest/download/install-vscode-macos.sh" -o /tmp/install-vscode-macos.sh && bash /tmp/install-vscode-macos.sh && rm /tmp/install-vscode-macos.sh
```

## Uninstall

### Miniforge3

```sh
curl -fsSL "https://github.com/philipnickel/miniforge-DTU/releases/latest/download/uninstall-conda.sh" -o /tmp/uninstall-conda.sh && bash /tmp/uninstall-conda.sh && rm /tmp/uninstall-conda.sh
```

### VS Code

```sh
curl -fsSL "https://github.com/philipnickel/miniforge-DTU/releases/latest/download/uninstall-vscode-macos.sh" -o /tmp/uninstall-vscode-macos.sh && bash /tmp/uninstall-vscode-macos.sh && rm /tmp/uninstall-vscode-macos.sh
```

## Update 
### Reinstall + restore environments

```sh
curl -fsSL "https://github.com/philipnickel/miniforge-DTU/releases/latest/download/update-conda.sh" -o /tmp/update-conda.sh && bash /tmp/update-conda.sh --restore-envs && rm /tmp/update-conda.sh
```

### Reinstall without restoring environments

```sh
curl -fsSL "https://github.com/philipnickel/miniforge-DTU/releases/latest/download/update-conda.sh" -o /tmp/update-conda.sh && bash /tmp/update-conda.sh && rm /tmp/update-conda.sh
```

### Update VS Code (uninstall + reinstall)

```sh
curl -fsSL "https://github.com/philipnickel/miniforge-DTU/releases/latest/download/uninstall-vscode-macos.sh" -o /tmp/uninstall-vscode-macos.sh && bash /tmp/uninstall-vscode-macos.sh && rm /tmp/uninstall-vscode-macos.sh && curl -fsSL "https://github.com/philipnickel/miniforge-DTU/releases/latest/download/install-vscode-macos.sh" -o /tmp/install-vscode-macos.sh && bash /tmp/install-vscode-macos.sh && rm /tmp/install-vscode-macos.sh
```

# Windows (PowerShell)

## Install

### Miniforge3

```powershell
$BASE_URL = "https://github.com/philipnickel/miniforge-DTU/releases/latest/download"; irm "$BASE_URL/Miniforge3-Windows-x86_64.exe" -OutFile "$env:TEMP\Miniforge3.exe"; Start-Process "$env:TEMP\Miniforge3.exe" "/S" -NoNewWindow -Wait; Remove-Item "$env:TEMP\Miniforge3.exe" -Force
```

### VS Code

```powershell
$BASE_URL = "https://github.com/philipnickel/miniforge-DTU/releases/latest/download"; irm "$BASE_URL/install-vscode-windows.ps1" -OutFile "$env:TEMP\install-vscode-windows.ps1"; powershell -ExecutionPolicy Bypass -File "$env:TEMP\install-vscode-windows.ps1"
```

## Uninstall

### Miniforge3

```powershell
$BASE_URL = "https://github.com/philipnickel/miniforge-DTU/releases/latest/download"; irm "$BASE_URL/uninstall-conda-windows.ps1" -OutFile "$env:TEMP\uninstall-conda-windows.ps1"; powershell -ExecutionPolicy Bypass -File "$env:TEMP\uninstall-conda-windows.ps1"
```

### VS Code

```powershell
$BASE_URL = "https://github.com/philipnickel/miniforge-DTU/releases/latest/download"; irm "$BASE_URL/uninstall-vscode-windows.ps1" -OutFile "$env:TEMP\uninstall-vscode-windows.ps1"; powershell -ExecutionPolicy Bypass -File "$env:TEMP\uninstall-vscode-windows.ps1" -Force
```

## Update 
### Reinstall + restore environments

```powershell
$BASE_URL = "https://github.com/philipnickel/miniforge-DTU/releases/latest/download"; irm "$BASE_URL/update-conda-windows.ps1" -OutFile "$env:TEMP\update-conda-windows.ps1"; powershell -ExecutionPolicy Bypass -File "$env:TEMP\update-conda-windows.ps1" -RestoreEnvs
```

### Reinstall without restoring environments

```powershell
$BASE_URL = "https://github.com/philipnickel/miniforge-DTU/releases/latest/download"; irm "$BASE_URL/update-conda-windows.ps1" -OutFile "$env:TEMP\update-conda-windows.ps1"; powershell -ExecutionPolicy Bypass -File "$env:TEMP\update-conda-windows.ps1"
```

### Nuke VS Code (uninstall + reinstall)

```powershell
$BASE_URL = "https://github.com/philipnickel/miniforge-DTU/releases/latest/download"; irm "$BASE_URL/uninstall-vscode-windows.ps1" -OutFile "$env:TEMP\uninstall-vscode-windows.ps1"; powershell -ExecutionPolicy Bypass -File "$env:TEMP\uninstall-vscode-windows.ps1" -Force; irm "$BASE_URL/install-vscode-windows.ps1" -OutFile "$env:TEMP\install-vscode-windows.ps1"; powershell -ExecutionPolicy Bypass -File "$env:TEMP\install-vscode-windows.ps1"
```

---

## Releases

- `*-dev` tags are prereleases.
- `*-stable` tags are marked latest.

Example:

```sh
git tag 26.1.0-dev
git push origin 26.1.0-dev

git tag 26.1.0-stable
git push origin 26.1.0-stable
```
