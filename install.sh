# download switch bin to ~/.local/bin
mkdir -p ~/.local/bin
curl "https://raw.githubusercontent.com/MeechaPooch/java-version-switcher/main/switch" >> ~/.local/bin/switch
chmod +x ~/.local/bin/switch
# add switch bin to path in user zshrc and profile
echo "export PATH=~/.local/bin:$PATH" >> .zshrc
echo "export PATH=~/.local/bin:$PATH" >> .profile
# add alias so that version switches apply immediately without requiring a shell restart
echo "alias switch=\"switch;source ~/.setjava.sh\"" >> .zshrc
echo "alias switch=\"switch;source ~/.setjava.sh\"" >> .profile