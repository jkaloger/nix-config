# Jack's place

My nix configuration files.

## Overview

This repository contains my Nix configuration for macOS using nix-darwin. It uses:

- nix flakes
- nix-darwin
- home-manager
- nix-homebrew

## Prerequisites

- macOS w/Apple Silicon
- nix
- nix flakes
- git

## Usage

- **Build configuration**: `./scripts/aarch64-darwin/build.sh`
- **Apply configuration**: `./scripts/aarch64-darwin/build-switch.sh`
- **Rollback to previous generation**: `./scripts/aarch64-darwin/rollback.sh`

## Structure

- `config.nix`: Centralized configuration
- `flake.nix`: Main entry point and dependency management
- `hosts/`: Host-specific configurations
- `modules/`: Modular configuration components
- `scripts/`: Build and deployment scripts

## Customization

- Add packages to `modules/shared/packages.nix` for cross-platform tools
- Add Darwin-specific packages to `modules/darwin/packages.nix`
- Add Homebrew casks to `modules/darwin/casks.nix`
- Configure home-manager programs in `modules/shared/home.nix`

**Work in progress**
