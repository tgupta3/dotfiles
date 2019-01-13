# Dotfiles for tgupta

## Requirements

- Git
- light-git (cat /etc/udev/rules.d/90-backlight.rules                                                                                                                  
# Allow video group to control backlight and leds
SUBSYSTEM=="backlight", ACTION=="add", \
  RUN+="/bin/chgrp video /sys/class/backlight/intel_backlight/brightness", \
  RUN+="/bin/chmod g+w /sys/class/backlight/intel_backlight/brightness"
  RUN+="/bin/chmod a+w /sys/class/backlight/intel_backlight/brightness"

