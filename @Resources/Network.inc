[Variables]

; It is very unlikely that you will change this.
Interface=Best

; It is IMPORTANT that these be set for YOUR network's maximum supported download and upload speeds.
; If they are wrong, the Bar meters will not be accurate. 
; The long and the short of it is that you need to go to http://speedtest.net, run the test,
; and plug in the Download and Upload megabits per second numbers it provides in the variables below.
; See the thread at http://rainmeter.net/forum/viewtopic.php?f=15&t=16402 for details.
MaxDownloadMb=350.00
MaxUploadMb=10.00

; Set this to the name of any VPN adapter you might use.
VPNAdapter=TAP-NordVPN Windows Adapter V9

; Don't change these slider variables unless you know what you are doing.
U=[!UpdateMeasure MeasureSlideBetween][!UpdateMeter *][!Redraw]
NetOffSet=0
WIFIOffSet=170

; Network arrow shapes colors.
NetQuietColor=137,137,137,255
NetTransColor=105,209,115,255
NetWarnColor=217,204,65,255
NetErrorColor=230,78,78,255
NetUpColor=#NetQuietColor#
NetDnColor=#NetQuietColor#