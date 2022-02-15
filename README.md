# Dotfiles for tgupta

## Requirements

- Git
- light-git (cat /etc/udev/rules.d/90-backlight.rules                                                                                                                  
# Allow video group to control backlight and leds
SUBSYSTEM=="backlight", ACTION=="add", \
  RUN+="/bin/chgrp video /sys/class/backlight/intel_backlight/brightness", \
  RUN+="/bin/chmod g+w /sys/class/backlight/intel_backlight/brightness"
  RUN+="/bin/chmod a+w /sys/class/backlight/intel_backlight/brightness"
widget.content.gtk-theme-override = ARC Darker

# Instruction For MACOS
* Load profile dark.terminal
* Copy Fonts to Library/Fonts
* Change Font to Hack Nerd Size 18
* Change default shell `chsh -s /bin/zsh`
* Install oh-my-zsh `sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`
* Copy VSCODe settings.json to `~/Library/Application Support/Code/User`.
