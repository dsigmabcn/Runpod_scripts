curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
source ~/.nvm/nvm.sh
nvm install 22 && nvm use 22
 
cd /workspace/ai-toolkit/ui
#npm install
npm run build_and_start