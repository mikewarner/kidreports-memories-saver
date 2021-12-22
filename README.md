# kidreports-memories-saver
Shell script to download all memories from Kidreports

## Prerequisites
Linux-like system with the ability to run a shell script. Curl must also be installed.

## How To
1) Download or clone this repository
2) Open the `cookie_file` file using a text editor
3) Login to Kidreports [https://secure.kidreports.com/login](https://secure.kidreports.com/login)
4) Once logged in and using Google Chrome, right click anywhere on the page, and select `Inspect`
5) On the newly opened developer tools pane, select the `Console` tab
6) In the console type `document.cookie` followed by the enter key
7) Copy the retured value to the `cookie_file`, making sure that the start of the line begins with `Cookie: ` + *returned value* and that no additional newlines have been added
8) Save and Close `cookie_file`
9) Open the `kidreprots-memories.sh` script using your favorite text editor
10) Modify the values for `START_MONTH`, `START_YEAR`, `END_MONTH`, and `END_YEAR` with the dates you would like to download the memories from
11) Save and Close `kidreprots-memories.sh`
12) In a linux terminal, change the directory to the one where the script is saved
13) Add the execute flag to the script using `chmod +x kidreports-memories.sh`
14) Run the scrip by typing `./kidreports-memories.sh`
15) The script will take several minutes to download each memory zip file
16) Memories will be downloaded to the same folder as the script
17) Using your favorite archive program unzip all the pictures and enjoy!
