# Base Dice 🎲

On-chain dice game deployed on Base L2. Uses Chainlink VRF for provably fair randomness.

## Quick Start

```bash
forge install
forge test
forge script script/Deploy.s.sol --rpc-url base --broadcast
```

## Contracts

- `DiceGame.sol` — main game logic
- `VRFCoordinator.sol` — Chainlink VRF integration

## License

MIT
