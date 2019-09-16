/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew cask install java

brew cask install docker

brew install appsody/appsody/appsody

curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/darwin/amd64/kubectl

brew cask install minikube

brew update
brew tap caskroom/cask
brew cask search visual-studio-code
brew cask install visual-studio-code 
