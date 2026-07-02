 # Horizon Crypto Early Brief
 param([int]$Hours = 24)
 
 $configDir = Join-Path $PSScriptRoot "data"
 $mainConfig = Join-Path $configDir "config.json"
 $techConfig = Join-Path $configDir "config.tech.bak"
 $cryptoConfig = Join-Path $configDir "config.crypto.json"
 
 try {
     # Save current config if it's not already the crypto one
     if (-not (Get-Content $mainConfig -Raw -Encoding UTF8).Contains("CryptoCurrency")) {
         Copy-Item $mainConfig $techConfig -Force
     }
     Copy-Item $cryptoConfig $mainConfig -Force
     
     & uv run horizon --hours $Hours 2>&1
 } finally {
     # Restore tech config
     if (Test-Path $techConfig) {
         Copy-Item $techConfig $mainConfig -Force
     }
 }
