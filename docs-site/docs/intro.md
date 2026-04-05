---
sidebar_position: 1
slug: /intro
title: Introduction
description: "Welcome to Learning to Fly — a hands-on Flutter tutorial built around a real banking app."
---

# Introduction

**Learning to Fly** is a hands-on Flutter tutorial for experienced developers. You'll build FlightBank — a realistic banking app — from scratch, learning Flutter's core concepts and production patterns along the way.

## What you'll learn

Over 12 chapters and roughly 6 hours, you'll go from zero Flutter to a fully-featured app:

- **Widgets & Layout** — How Flutter's widget tree works, and how to compose UIs
- **State Management** — From setState to Riverpod 3
- **Navigation** — Declarative routing with GoRouter
- **Networking** — HTTP requests, async/await, FutureBuilder
- **Local Persistence** — Offline-first data with Drift (SQLite)
- **Forms** — Validation, formatters, error UX
- **Animations** — Hero, implicit, explicit, page transitions
- **Platform Integration** — MethodChannel, native code, plugins
- **Testing** — Widget tests, integration tests, golden tests

## Who this is for

You're an experienced web or mobile developer (React, Swift, Kotlin, etc.) who wants to learn Flutter. We assume you know programming fundamentals — variables, functions, classes, async — but nothing about Dart or Flutter specifically.

If you've never written code before, start with the [official Dart language tour](https://dart.dev/language) first.

## How it works

Each chapter focuses on one concept and builds on the previous chapters. You'll work in two windows:

1. **This tutorial** in your browser — step-by-step instructions, code examples, and quizzes
2. **Your IDE** with the FlightBank Flutter project — where you write and run code

Each chapter has a corresponding **git branch** with the completed code. If you get stuck, you can always check out the branch to see the finished result.

## Prerequisites

- A computer running macOS, Windows, or Linux
- An IDE — VS Code (recommended) or Android Studio
- A device or emulator for running Flutter apps
- Basic programming experience in any language

## Quick Start

```bash
git clone git@github.com:team360r/flight.git
cd flight
./setup.sh    # installs Flutter deps + docs site
./start.sh    # opens tutorial in browser
```

Then open the `flight/` folder in your IDE and head to [Chapter 0: Pre-Flight Check](/chapters/preflight).
