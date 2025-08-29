#!/bin/bash

# This script intelligently starts a Node.js application by checking for
# pre-existing builds and necessary dependencies on persistent storage.
# It now supports a --force flag to ensure a clean, fresh build for updates.

# Check for a --force or --clean argument
FORCE_BUILD=false
if [[ "$1" == "--force" || "$1" == "--clean" ]]; then
  FORCE_BUILD=true
  echo "Force build flag detected. Will perform a clean install and build."
fi

# 1. Check for and install NVM if not present
if [[ ! -d "$HOME/.nvm" ]]; then
  echo "NVM not found. Installing NVM..."
  # Use a temporary file for the install script to be more robust
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
  # Ensure the nvm directory exists before sourcing
  mkdir -p "$HOME/.nvm"
else
  echo "NVM is already installed."
fi

# 2. Load NVM into the current shell session
# This is required to make the 'nvm' command available.
export NVM_DIR="$HOME/.nvm"
[[ -s "$NVM_DIR/nvm.sh" ]] && \. "$NVM_DIR/nvm.sh"         # Load nvm
[[ -s "$NVM_DIR/bash_completion" ]] && \. "$NVM_DIR/bash_completion" # Load nvm bash_completion

# 3. Use or install Node.js version 22
echo "Ensuring Node.js version 22 is available..."
if ! nvm use 22 &> /dev/null; then
  echo "Node.js 22 not found. Installing it now..."
  nvm install 22
  nvm use 22
fi

# 4. Navigate to the UI directory
echo "Changing directory to /workspace/ai-toolkit/ui..."
cd /workspace/ai-toolkit/ui || {
  echo "ERROR: Failed to change directory to /workspace/ai-toolkit/ui. Check the path."
  exit 1
}

# 5. Conditional setup: force a fresh build or use existing files
if [[ "$FORCE_BUILD" == true ]]; then
  echo "Removing old node_modules and dist directories..."
  rm -rf ./node_modules ./dist
  echo "Performing a clean install and build..."
  npm install
  npm run build
elif [[ -d "./node_modules" && -d "./dist" ]]; then
  echo "Found a fully set up application. Skipping install and build."
else
  echo "Application not yet fully set up. Performing a full setup."
  # 6. Install npm dependencies if 'node_modules' is missing
  if [[ ! -d "./node_modules" ]]; then
    echo "Running npm install..."
    npm install
  fi
  
  # 7. Run the full build command if 'dist' is missing
  if [[ ! -d "./dist" ]]; then
    echo "Running npm run build..."
    npm run build
  fi
fi

# 8. Start the application
# This command is run regardless of whether it was built just now or in a previous session.
echo "Starting the application..."
npm start

echo "Startup script finished."
