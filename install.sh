!/bin/bash

REPO_URL="https://github.com/ASparkOfFire/lenovo-battery-conservation-applet.git"
DEST_DIR="$PWD/lenovo-battery-conservation-applet"

git clone $REPO_URL $DEST_DIR
cd $DEST_DIR

inst() {
# copy to system
cp -rf ./etc/xdg/autostart/lenovo-battery-conservation.desktop /etc/xdg/autostart/lenovo-battery-conservation.desktop;
cp -rf ./usr/bin/conservation_mode /usr/bin/conservation_mode;
cp -rf ./usr/lib/lenovo-battery-conservation/lenovo-battery-conservation /usr/lib/lenovo-battery-conservation/lenovo-battery-conservation;
cp -rf ./usr/share/icons/hicolor/scalable/status/lenovo-logo.png /usr/share/icons/hicolor/scalable/status/lenovo-logo.png;

# change ownership
chown root:root /etc/xdg/autostart/lenovo-battery-conservation.desktop;
chown root:root /usr/bin/conservation_mode;
chown root:root /usr/lib/lenovo-battery-conservation/lenovo-battery-conservation;
chown root:root /usr/lib/lenovo-battery-conservation;
chown root:root /usr/share/icons/hicolor/scalable/status/lenovo-logo.png;

# set permissions;

chmod 0644 /etc/xdg/autostart/lenovo-battery-conservation.desktop;
chmod 0755 /usr/bin/conservation_mode;
chmod 0755 /usr/lib/lenovo-battery-conservation/lenovo-battery-conservation;
chmod 0755 /usr/lib/lenovo-battery-conservation;
chmod 0644 /usr/share/icons/hicolor/scalable/status/lenovo-logo.png; }

sudo sh -c "$(declare -f inst); inst";
