# 🃏 Bluff Table — A Card Game of Deception

**Bluff Table** is a card game inspired by the classic game of lying and detection — often referred to as *Liar’s Table*, *Bluff*, or *Cheat*. The goal: deceive others about the cards you play, while catching their lies.

This project also serves as a **learning ground** for applying modern iOS development patterns and tools.

---

## 🚀 Features

- 👥 Local multiplayer support
- 🎮 Turn-based card mechanics
- 🔄 Game state management
- 🧠 Bluff detection and challenge logic
- 💾 Persistent player profiles and scores

---

## 🛠 Tech Stack

| Technology         | Purpose                                   |
|--------------------|-------------------------------------------|
| **SwiftUI**         | UI layer, iOS 17+ compatible              |
| **The Composable Architecture (TCA)** | State management, navigation, actions |
| **swift-dependencies** | Dependency injection / testability     |
| **SwiftData** or **GRDBQuery** | Persistence layer              |
| **Swift Concurrency** | `async/await`, `Task`, `@Sendable`      |

---

## 📦 Architecture

This project follows a modular structure based on [TCA](https://github.com/pointfreeco/swift-composable-architecture):
