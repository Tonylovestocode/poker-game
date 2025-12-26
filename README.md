# Texas Hold'em Poker Simulator

A full-featured multiplayer poker game built with React, featuring real-time hand evaluation, AI opponents, and a polished user interface.

🎮 **[Live Demo](https://tonylovestocode.github.io/poker-game)** | 💻 **[View Source](https://github.com/Tonylovestocode/poker-game)**

![Poker Game Screenshot](https://img.shields.io/badge/React-18.2.0-blue) ![License](https://img.shields.io/badge/license-MIT-green)

## 🎮 Features

- **Complete Hand Evaluation Engine**: Accurately evaluates all poker hands from High Card to Straight Flush
- **Multiplayer Simulation**: Play against 3 AI opponents with realistic game flow
- **Game State Management**: Tracks pot, chips, bets, and game phases (preflop, flop, turn, river, showdown)
- **Responsive UI**: Professional poker table interface with card animations and visual feedback
- **Real-time Calculations**: Instant hand ranking and winner determination using optimized algorithms

## 🚀 Quick Start

### Option 1: Run in Browser (Fastest)

1. Go to any React sandbox (CodeSandbox, StackBlitz, or CodePen)
2. Create a new React project
3. Copy the code from `poker-game.jsx`
4. Run the preview

### Option 2: Local Setup

```bash
# Create a new React app
npx create-react-app poker-game
cd poker-game

# Install dependencies
npm install lucide-react

# Replace src/App.js with poker-game.jsx content
# Or import the component

# Start development server
npm start
```

## 🎯 Technical Highlights

### Hand Evaluation Algorithm
- O(n log n) complexity for sorting and evaluation
- Handles all poker hand rankings with tie-breaking logic
- Accounts for community cards and best 5-card combination

### State Management
- React hooks for efficient state updates
- Manages multiple game states: player hands, opponent hands, community cards, betting rounds
- Real-time pot and chip calculations

### UI/UX Design
- CSS animations for card dealing with staggered timing
- Gradient backgrounds and glassmorphism effects
- Responsive design with Tailwind CSS utility classes
- Custom fonts (Playfair Display + DM Sans) for premium feel

## 🧠 Core Algorithms

### Deck Shuffling
Fisher-Yates shuffle algorithm for true randomization

### Hand Ranking
```
8: Straight Flush
7: Four of a Kind
6: Full House
5: Flush
4: Straight
3: Three of a Kind
2: Two Pair
1: Pair
0: High Card
```

### Winner Determination
Multi-step comparison:
1. Hand rank comparison
2. High card tie-breaker
3. Kicker evaluation

## 📊 Architecture

```
PokerGame Component
├── Game State (useState hooks)
│   ├── Deck management
│   ├── Player/opponent hands
│   ├── Community cards
│   ├── Chip stacks
│   └── Betting logic
├── Hand Evaluation Engine
│   ├── Rank counting
│   ├── Suit analysis
│   ├── Straight detection
│   └── Flush detection
└── UI Layer
    ├── Card rendering
    ├── Animation system
    ├── Betting interface
    └── Game phase controls
```

## 🎨 Design System

- **Color Palette**: Emerald green felt table with amber accents
- **Typography**: Serif display headings + sans-serif body
- **Animations**: Card dealing, chip pulses, button hover states
- **Layout**: Centered table with opponent positions at top, player at bottom

## 🔧 Customization

Easily customizable:
- Adjust starting chip counts
- Modify bet amounts
- Change number of opponents
- Customize UI colors and themes
- Add more advanced AI logic

## 💡 Learning Resources

This project demonstrates:
- Complex state management in React
- Algorithm implementation (sorting, evaluation)
- Animation and CSS transitions
- Component composition
- Event handling and user interaction

## 📝 Future Enhancements

Potential additions:
- Real multiplayer via WebSockets
- Advanced AI with betting strategies
- Tournament mode
- Player statistics and hand history
- Mobile-responsive touch controls
- Sound effects and music

## 🏆 Skills Demonstrated

- **React.js**: Hooks, component lifecycle, state management
- **JavaScript**: ES6+, array methods, object manipulation
- **CSS**: Animations, gradients, responsive design
- **Algorithms**: Card shuffling, hand evaluation, winner determination
- **UI/UX**: Game interface design, visual feedback, user flow

---

**Built for**: Portfolio demonstration and Zynga internship application
**Author**: Anthony Samuel
**Tech Stack**: React.js, Lucide Icons, Tailwind CSS, JavaScript
