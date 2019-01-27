#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

#Wait until set monitor has finished
while pgrep -f setOutput.py > /dev/null; do sleep 1; done


#Write battery name to file
ls /sys/class/power_supply | grep BAT > /tmp/battery

#
ls /sys/class/power_supply | grep AC > /tmp/AC

if type "xrandr"; then
  for m in $(xrandr --query | grep "primary" | cut -d" " -f1); do
    MONITOR=$m polybar bar &
  done
else
  polybar  bar &
fi


# Launch bar
#polybar bar &

echo "Bars launched..."
