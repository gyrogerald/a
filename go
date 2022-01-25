echo "Your Wallet=($1) << check here no any spaces between brackets (****...****)"
while true; do ./TonCoinMiner -v 0 -C global.config.json -e "pminer start auto $1 0 8192 0"; done
