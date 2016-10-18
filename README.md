# blackfire-formula

Installs and configure Blackfire agent and PHP probe.

Current limitations:
======================

+ If you upgrade to a new major version of PHP, you will have to reinstall the 'blackfire-php' package to enable this module in the new version of PHP.


Development
=====================

Install and setup brew:
```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Install vagrant with brew:
```
brew install cask
brew cask install vagrant
```

Install test-kitchen:
```
sudo gem install test-kitchen
sudo gem install kitchen-vagrant
sudo gem install kitchen-salt
```

Run a converge on the default configuration:
```
kitchen converge default
```


## TODO:

* manage blackfire PHP config
