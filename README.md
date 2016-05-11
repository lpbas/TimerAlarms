TimerAlarms
===========

Create alarms using iOS's timer interface.

Notes: iOS 7 only. Not compatible with iPad. 

(I should update this for iOS 8/9 sometime but I'm still on iOS 7 so I don't have a direct interest. Should not be hard for anyone interested.)

Special thanks
===========

- insanj, for SleepyAlarms https://github.com/insanj/SleepyAlarm
- Jailpod, for helping me with some parts of the code on the #theos IRC


Changelog
===========

v1.1: On v1.0 There was a bug that deleted all alarms if the AlarmView had not been initialized before creaitng a new alarm. In this version this is fixed, by initializing (if necessary) the AlarmView (so that the User's alarms get loaded from the .plist file before overriding it) bofeore adding a new alarm.

v1.0: Initial release.
