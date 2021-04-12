import sequtils, strutils, strformat, algorithm, math, sugar, complex
{.warning[UnusedImport]: off.}

var s:string = stdin.readLine
for i in 0..<len(s):
    if s == reversed(s):
        echo "Yes"
        system.quit()
    s = "0" & s
echo "No"