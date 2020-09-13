echo -e "----------------
----------------
----------------
----------------
----------------
----------------
----------------
----------------
----------------RUNNING BABY!----------------
----------------
----------------
----------------
----------------
----------------
----------------
----------------
----------------
----------------"

echo -e "\u001b[7m Updating apt-get...\u001b[0m"
apt-get update && export DEBIAN_FRONTEND=noninteractive

echo -e "\u001b[7m Installing direnv...\u001b[0m"
apt-get -y install  direnv

echo -e "\u001b[7m Installing nvm...\u001b[0m"
apt-get -y install  build-essential libssl-dev

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash


echo -e "\u001b[7m Installing Fira Code...\u001b[0m"
sh ./install_fira.sh

# echo -e "\u001b[7m Installing Nerdfonts...\u001b[0m"
# git clone https://github.com/ryanoasis/nerd-fonts && ./nerd-fonts/install.sh
# mkdir -p ~/.local/share/fonts
# cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf
# cd ~/.local/share/fonts && curl -fLo "Fura Mono Bold Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/FiraMono/Bold/complete/Fura%20Mono%20Bold%20Nerd%20Font%20Complete.otf
# cd ~/.local/share/fonts && curl -fLo "Fura Mono Medium Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/FiraMono/Medium/complete/Fura%20Mono%20Medium%20Nerd%20Font%20Complete.otf
# cd ~/.local/share/fonts && curl -fLo "Fura Mono Regular Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/FiraMono/Regular/complete/Fura%20Mono%20Regular%20Nerd%20Font%20Complete.otf


echo -e "\u001b[7m Installing oh-my-zsh...\u001b[0m"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo -e "\u001b[7m Installing zsh plugins...\u001b[0m"
git clone https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zdharma/fast-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/fast-syntax-highlighting
git clone https://github.com/djui/alias-tips.git ~/.oh-my-zsh/custom/plugins/alias-tips

echo -e "\u001b[7m Setting up symlinks... \u001b[0m"
ln -sfnv "$PWD/.zshrc" ~/.zshrc
