#!/bin/bash

# Contract verification script for Arbitrum Sepolia
# This script verifies the deployed NFT contract on Arbitrum Sepolia

CONTRACT_ADDRESS="0x7a479551650f061e6cad988956fa9055d84dce46"
VERIFY_API_URL="https://sepolia.arbiscan.io/api"

# Verification payload for Stylus contracts
PAYLOAD='{
  "apikey": "",
  "module": "contract",
  "action": "verifysourcecode",
  "contractaddress": "0x7a479551650f061e6cad988956fa9055d84dce46",
  "sourceCode": "https://github.com/AbhishekDubey013/Rust.git",
  "codeformat": "solidity-standard-json-input",
  "contractname": "NFT",
  "compilerversion": "0.5.6",
  "optimizationUsed": "0",
  "runs": "200",
  "constructorArguements": "",
  "evmversion": "paris",
  "licenseType": "3",
  "proxy": "0",
  "implementation": "",
  "swarmSource": ""
}'

echo "Verifying contract ${CONTRACT_ADDRESS} on Arbitrum Sepolia..."
echo "API URL: ${VERIFY_API_URL}"
echo "Note: This is a manual verification attempt. You may need to verify manually on the explorer."
echo ""

# For now, let's just show the manual verification instructions
echo "Manual Verification Steps:"
echo "1. Go to: https://sepolia.arbiscan.io/address/${CONTRACT_ADDRESS}"
echo "2. Click on 'Contract' tab"
echo "3. Click 'Verify and Publish'"
echo "4. Select 'Solidity (Single file)' or 'Solidity (Standard-Json-Input)'"
echo "5. Use the following details:"
echo "   - Compiler Version: 0.5.6 (or match your Cargo Stylus version)"
echo "   - License Type: None"
echo "   - Optimization: No"
echo "   - Source Code: Upload your Rust source files"
echo ""

echo "Alternative: Try manual verification with your source code files."
echo "You can also check if the contract is already verified:"
curl -s "https://sepolia.arbiscan.io/api?module=contract&action=getsourcecode&address=${CONTRACT_ADDRESS}" | jq '.' 