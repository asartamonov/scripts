Here you can find a couple of scripts which I've created to make routine work faster.

1. Gwx.ps1 
This script requests Windows if process of famous 'Get Windows 10' launched and kills it if so.
I've set Windows Task Scheduler (Win+R Taskschd.msc) to launch this script every 15 minutes and every time when user loggs in to get rid of GWX annoying icon in taskbar. Of course, the easier way is to delete KB3035583 update to get gwx completely disabled.

2. ImageFinder.ps1
Simple script to help find large folders with images on your computer. Report shall be saved to .txt file after work done.

3. Replace selected text.py
Useful script to improve user experience from work with Notepad++. You can double click and NPP highlights the variable you've clicked on, but no chance to change it's name by NPP features. Fortunately NPP pluguin 'Python Script' and this pluguin can solve the problem.
You just select text you want to replace (variable or method name or even class name) run the script and type a new name for selected member. Thats it.

4. HControlRestart.ps1
On ASUS laptop proces HControl.exe freezes when computer wakes up after sleep. Restart this process is necessary because it is responsible for additional buttons (FN-keys). This handy script helps to do that.

5. RestartExplorer.ps1
Sample 'restart-process' script for Windows.
