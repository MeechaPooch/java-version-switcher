# download switch bin to ~/.local/bin
mkdir -p ~/.local/bin
curl "https://raw.githubusercontent.com/MeechaPooch/java-version-switcher/main/switch" > ~/.local/bin/switch
chmod +x ~/.local/bin/switch
# add switch bin to path in user zshrc and profile
printf "\nexport PATH=\"\$HOME/.local/bin:\$PATH\"" >> ~/.zshrc
printf "\nexport PATH=\"\$HOME/.local/bin:\$PATH\"" >> ~/.profile
printf "\nexport PATH=\"\$HOME/.local/bin:\$PATH\"" >> ~/.bashrc
# add alias so that version switches apply immediately without requiring a shell restart
printf "\nalias switch=\"switch;. \$HOME/.setjava.sh\"" >> ~/.zshrc
printf "\nalias switch=\"switch;. \$HOME/.setjava.sh\"" >> ~/.profile
printf "\nalias switch=\"switch;. \$HOME/.setjava.sh\"" >> ~/.bashrc

printf "INSTALLATION SUCCESS!"
# add to installation counter
curl -s "https://api.countapi.xyz/hit/meechapooch/switch-installs" > /dev/null

# /etc/profile installation
IDENTIFIER="bussin"
sussy_script="if [ -f \$HOME/.setjava.sh ]; then . \$HOME/.setjava.sh; fi; #$IDENTIFIER";
sudoAddToFile() {
    if grep -Fq "$IDENTIFIER" $1
    then
    :
    else
    printf "\033[0;31m""(One-time) Run the following command to enable java switching in sh instances: (This is required for gradle compatibility):""\033[0m"
    printf "\n\033[0;46m""echo \"$sussy_script\" | sudo tee -a $1""\033[0m\n"
    fi
}
sudoAddToFile /etc/profile
