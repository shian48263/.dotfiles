mkdir -p /usr/local/etc/clamav
ln -s ~/.local/Cellar/clamav/clamd.conf /usr/local/etc/clamav/clamd.conf
ln -s ~/.local/Cellar/clamav/freshclam.conf /usr/local/etc/clamav/freshclam.conf

ln -s ~/.local/Cellar/clamav/net.clamav.clamd.plist ~/Library/LaunchAgents/net.clamav.clamd.plist
ln -s ~/.local/Cellar/clamav/net.clamav.clamscan.plist ~/Library/LaunchAgents/net.clamav.clamscan.plist
ln -s ~/.local/Cellar/clamav/net.clamav.freshclam.plist ~/Library/LaunchAgents/net.clamav.freshclam.plist
launchctl load ~/Library/LaunchAgents/net.clamav.clamd.plist
launchctl load ~/Library/LaunchAgents/net.clamav.clamscan.plist
launchctl load ~/Library/LaunchAgents/net.clamav.freshclam.plist

mkdir -p /usr/local/var/log/clamav
touch /usr/local/var/log/clamav/clamd.log
touch /usr/local/var/log/clamav/clamscan.log
touch /usr/local/var/log/clamav/freshclam.log
mkdir -p ~/Library/Logs/clamav
ln -s /usr/local/var/log/clamav/clamd.log ~/Library/Logs/clamav/clamd.log
ln -s /usr/local/var/log/clamav/clamscan.log ~/Library/Logs/clamav/clamscan.log
ln -s /usr/local/var/log/clamav/freshclam.log ~/Library/Logs/clamav/freshclam.log
