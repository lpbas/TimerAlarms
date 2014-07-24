TimerAlarms
===========

Create alarms using iOS's timer interface.

===========

Special thanks to:

- insanj, for SleepyAlarms https://github.com/insanj/SleepyAlarm
- Jailpod, for helping me with some parts of the code on the #theos IRC
===========

Changelog
===========

v1.1: On v1.0 There was a bug that deleted all alarms if the AlarmView had not been initialized before creaitng a new alarm. In v.1.1 this is fixed, by initializing (if necessary) the AlarmView (so that the User's alarms get loaded from the .plist file before overriding it) bofeore adding a new alarm.