awful = require("awful")

-- disable touchpad
os.execute("xinput set-prop 11 'Device Enabled' 0")

-- network manager
awful.util.spawn_with_shell("pgrep -u $USER -x nm-applet > /dev/null || (nm-applet &)")

-- dropbox
awful.util.spawn_with_shell("dropbox start")

-- conky
awful.util.spawn_with_shell("pgrep -u $USER -x conky > /dev/null || (conky &)")

-- unagi
awful.util.spawn_with_shell("pgrep -u $USER -x unagi > /dev/null || (unagi &)")
