# Changelog

## 0.1.3

* Added 'rack' prefix before metric names.

## 0.1.4

* Moved #statd method to ScoutStatsdRack#statd so it can be called within the application.

## 0.1.5

* Added environment variables to specify StatsD hostname and port.

## 0.1.6

* Fixed issue #1, Removes dependency on railtie for non-rails users.