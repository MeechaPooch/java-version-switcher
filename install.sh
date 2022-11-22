# download switch bin to ~/.local/bin
mkdir -p ~/.local/bin
curl "https://raw.githubusercontent.com/MeechaPooch/java-version-switcher/main/switch" >> ~/.local/bin/switch
chmod +x ~/.local/bin/switch
# add switch bin to path in user zshrc and profile
echo "export PATH=~/.local/bin:$PATH" >> ~/.zshrc
echo "export PATH=~/.local/bin:$PATH" >> ~/.profile
echo "export PATH=~/.local/bin:$PATH" >> ~/.bash_profile
# add alias so that version switches apply immediately without requiring a shell restart
echo "alias switch=\"switch;source ~/.setjava.sh\"" >> ~/.zshrc
echo "alias switch=\"switch;source ~/.setjava.sh\"" >> ~/.profile
echo "alias switch=\"switch;source ~/.setjava.sh\"" >> ~/.bash_profile

echo "INSTALLATION SUCCESS!"

# /etc/profile installation
IDENTIFIER="bussin"
sussy_script="if [ -f \$HOME/.setjava.sh ]; then . \$HOME/.setjava.sh; fi; #$IDENTIFIER";
sudoAddToFile() {
    if grep -Fq "$IDENTIFIER" $1
    then
    :
    else
    echo "\033[0;31m""(One-time) Run the following command to enable java switching in sh instances: (This is required for gradle compatibility):""\033[0m"
    echo "\033[0;46m""echo \"$sussy_script\" | sudo tee -a $1""\033[0m"
    fi
}
sudoAddToFile /etc/profile