import sequtils, strutils, strformat, algorithm, math, sugar, complex
{.warning[UnusedImport]: off.}

var r, x, y: float64
(r, x, y) = stdin.readLine.split.map(parseFloat)

var d = sqrt((x^2+y^2))
var ans = 0
if d<r:
    echo 2
    system.quit()
while d>0:
    ans+=1
    d-=r
echo ans
