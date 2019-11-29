#!/usr/bin/env LC_CTYPE=UTF-8 python
# -*- coding: utf-8 -*-

# <bitbar.title>Death Timer</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>Thomas Wolfe</bitbar.author>
# <bitbar.author.github>twolfe2</bitbar.author.github>
# <bitbar.desc>Counts down how approximately how many days you have left to live</bitbar.desc>
# <bitbar.image>http://i.imgur.com/2KjZaFb.jpg</bitbar.image>
# <bitbar.dependencies>python</bitbar.dependencies>



from datetime import datetime


death = datetime(2054, 1, 4, 12, 0, 0) #enter your estimated death year here (get the estimation here: https://www.myabaris.com/tools/life-expectancy-calculator-how-long-will-i-live/)
birth = datetime(1984, 1, 4, 12, 0, 0) #enter the day you were born here



diff = death - datetime.now()
remain = format(int(diff.total_seconds()/(3600*24)),' ,d')
print '💀 {0} days'.format(remain)

print '---'


diff1 = death - datetime.now()
remainH = format(int(diff1.total_seconds()/(3600)),' ,d')
print '~{0} hours remaining'.format(remainH)

remainM = format(int(diff.total_seconds()/60),' ,d')
print '~{0} minutes remaining'.format(remainM)




total = death - birth
diff = datetime.now() - birth
totalF = format(int(total.total_seconds()/60),' ,d')
remain = format(int(diff.total_seconds()/60),' ,d')
percent = format(((diff.total_seconds()/60)/(total.total_seconds()/60))*100,'.2f')
