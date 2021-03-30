import sequtils, strutils, strformat, algorithm, math, sugar, complex
{.warning[UnusedImport]: off.}


var
    x0, y0, x2, y2: float64
var n: float64 = stdin.readLine.parseFloat()
(x0, y0) = stdin.readLine.split.map(parseFloat)
(x2, y2) = stdin.readLine.split.map(parseFloat)

let
    p0 = complex[float64](x0, y0)
    o = complex[float64]((x0+x2)/2, (y0+y2)/2)
    r = rect[float64](1.0, 2*PI/n)

var ans = (p0-o)*r+o
echo ans.re, " ", ans.im
