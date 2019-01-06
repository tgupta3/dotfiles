#!/usr/bin/python3

from operator import itemgetter
import pyrandr2

max_width = list()
screens = pyrandr2.connected_displays()

for screen in screens:
    reslit = screen.available_resolutions()
    max_width.append(max(reslit,key=itemgetter(0))[0])

screen_index = max_width.index(max(max_width))

#Set max as primary
screens[screen_index].is_primary = True
screens[screen_index].is_enabled = True
screens[screen_index].apply_settings()

#Disable other monitors
screens.pop(screen_index)
for screen in screens:
    screen.is_primary = False
    screen.is_enabled = False
    screen.apply_settings()
