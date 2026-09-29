# SecureERC20 - SecureDZ Token

Gas-optimized, security-first ERC20 built 100% on Android with Termux from El Eulma, DZ

## Security Features
- Ownable: Only owner can mint
- Capped Supply: MAX = 1M SDZ (prevents inflation)
- Zero Address Check
- Burnable

## Tokenomics
- Name: SecureDZ Token
- Symbol: SDZ
- Initial: 100,000 SDZ
- Max: 1,000,000 SDZ

## Quick Start
forge build
forge test -v

## Tests
- testInitialSupply ✅
- testMint ✅
- test_RevertWhen_CapExceeded ✅

Built by Sofiane Maza | From Termux to the World!
