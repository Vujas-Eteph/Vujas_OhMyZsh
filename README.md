# Vujas_OhMyZsh
*Automatic setting of OhMyZsh for my taste*

---

##  [Install Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh?tab=readme-ov-file#basic-installation)

### ⚒️ Manual
Run the following to set up my working space in the blink of an eye 😉 - ⚠️ Tested on Linux:
- Check if **zsh** already installed `zsh --version`, and if not install with 
	```zsh
	sudo apt install zsh
	```
- Install **Oh My Zsh**
	```zsh
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	```
- Install the **Nerd Fonts** following the [manual instructions](https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#meslo-nerd-font-patched-for-powerlevel10k)
- Install the [Powerlevel10k Theme](https://github.com/romkatv/powerlevel10k#oh-my-zsh)
	```zsh
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
	```
- Set the PowerLevel10K Theme for Oh My Zsh
	- Replace the previous theme with `ZSH_THEME="powerlevel10k/powerlevel10k"` in `~/.zshrc .`
  	- Follow the prompts for a first-time configuration.

### ⚡One for All (🤖*Automatic Version*)
- First part:
	```zsh
	sudo apt install zsh -y
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	```
- Second part:
	```zsh
	wget -O https://github.com/Vujas-Eteph/Vujas_OhMyZsh/blob/main/zsh_fonts_install.sh -P ~
	bash ~/zsh_fonts_install.sh
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
	wget -O https://github.com/Vujas-Eteph/Vujas_OhMyZsh/blob/main/zsh_set_theme.sh -P ~
	bash ~/zsh_set_theme.sh
	rm ~/zsh_fonts_install.sh
	rm ~/zsh_set_theme.sh
	```

---
