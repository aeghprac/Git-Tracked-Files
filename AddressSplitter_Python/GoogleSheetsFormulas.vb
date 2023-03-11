' I set this file to Visual Basic for Excel formulas. Not perfect, better than nothing

'COLUMN B
="Katie: "&COUNTIF(B3:B500,"K*")&", Alex: "&COUNTIF(B3:B500,"A*")&", (TOTAL: "&COUNTA(B3:B500)&")"

'COLUMN C
="KATIE - Fam: "&COUNTIF(C3:C500,"Katie - Fa*")&", Friends: "&COUNTIF(C3:C500,"Katie - Fr*")&" (= "&COUNTIF(C3:C500, "K*")&"), ALEX - Fam: "&COUNTIF(C3:C500,"Alex - Fa*")&", Friends: "&COUNTIF(C3:C500,"Alex - Fr*")&" (= "&COUNTIF(C3:C500, "A*")&"), (TOTAL: "&COUNTA(C3:C500)&")"

'E
=SUM(E3:E500)

'F
=SUM(F3:F500)

'G
=COUNTIF(G3:G500, OR("YES", TRUE))

'H
=COUNTIF(H3:H500, OR("YES", TRUE))

'I through L
=SUM(I3:I500)
