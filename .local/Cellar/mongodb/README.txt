brew install mongodb

# To have launchd start mongodb at login:
#   ln -sfv /usr/local/opt/mongodb/*.plist ~/Library/LaunchAgents
# Then to load mongodb now:
#   launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mongodb.plist
# Or, if you don't want/need launchctl, you can just run:
#   mongod --config /usr/local/etc/mongod.conf
ln -sfv /usr/local/opt/mongodb/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mongodb.plist

mkdir -p ~/Library/Logs/mongodb
ln -s /usr/local/var/log/mongodb/mongo.log ~/Library/Logs/mongodb/mongo.log
ln -s /usr/local/var/log/mongodb/output.log ~/Library/Logs/mongodb/output.log
