# Vujas_OhMyZsh
*Automatic setting of "OhMyZsh" for my taste*

---

##  [Install Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh?tab=readme-ov-file#basic-installation)

### ⚒️ Manual
- Check if **zsh** already installed `zsh --version`, and if not install with 
	```zsh
	sudo apt install zsh
	```
- Install **Oh My Zsh**
	```zsh
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	```
- Install *and* Set the **Nerd Fonts** following the [manual instructions](https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#meslo-nerd-font-patched-for-powerlevel10k)
- Install the [Powerlevel10k Theme](https://github.com/romkatv/powerlevel10k#oh-my-zsh)
	```zsh
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
	```
- Set the PowerLevel10K Theme for Oh My Zsh by replacing the previous theme with `ZSH_THEME="powerlevel10k/powerlevel10k"` in `~/.zshrc .`

### ⚡ One for All (🤖*Automatic Version*)
*Just copy-pasta each section*
- First part:
	```zsh
	sudo apt install zsh -y
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	```
- Second part:
	```zsh
	wget https://raw.githubusercontent.com/Vujas-Eteph/Vujas_OhMyZsh/main/zsh_fonts_install.sh -P ~
	wget https://raw.githubusercontent.com/Vujas-Eteph/Vujas_OhMyZsh/main/zsh_set_theme.sh -P ~
	bash ~/zsh_fonts_install.sh
 	```
> [!NOTE]
> - Set the `MesloLGS NF Regular` in the Terminal, VS Code, etc... following the [manual instructions](https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#meslo-nerd-font-patched-for-powerlevel10k) to enable the installed fonts
> - ⚠️ It's important that you restart the shell here if you want to see the new font in the available options when following the instructions in the site

- Third part:
	```zsh
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
	bash ~/zsh_set_theme.sh
 
	rm ~/zsh_fonts_install.sh
	rm ~/zsh_set_theme.sh
	```

### 🔥 Running
- Open the terminal run `zsh`
	```python
	if first-time configuration:
		follow the prompts to set the powerlevel10k theme
	elif change p10 configuration:
		in the zsh shell run `p10k configure` to modify the current layout
 	else:
 		enjoy
	```

---

## [Setting Up Plugins](https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins-Overview)
*To use with conda, python, vs code and other*

### ⚒️ Manual
- Default plugins that I'm using. Open the `~/.zshrc` and add the following line
	```zsh
	plugins=(git python conda-env vscode tmux tmuxinator)
	```
- To use conda in the zsh console, execute this in the shell
	```zsh
	conda init zsh 
	```
### 🤖 Automatic Version
- Run the following:
	```zsh
	wget https://raw.githubusercontent.com/Vujas-Eteph/Vujas_OhMyZsh/main/zsh_set_plugins.sh -P ~
	bash ~/zsh_set_plugins.sh
	rm ~/zsh_set_plugins.sh
	```

---
> [!WARNING]
> Only tested on Linux.
