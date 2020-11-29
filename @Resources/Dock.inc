[Variables]

; Dock specific variables
; Uses some values from GeneralVariables.inc
; Comment the PlayClick line to remove sound effect on click
PlayClick=PLAY #@#Sounds\MenuPop.wav
ColorOff=#ValueColor#
ColorOver=#LabelColor#
NormalSize=11
ZoomSize=14

; Button text and actions:
; Change these to the button text and mouse actions you want for your dock.
; Hints:
; Apps are run with ["PathAndNameOfApp.exe" parm1 parm2]
; Folders are opened with ["PathToFolder"]
; Websites are opened in your default browser with ["http://SomeSite.com"]

Button.1Text=Folder
LeftMouse.1=["%ProgramFiles%"][#PlayClick#]
RightMouse.1=
MiddleMouse.1=

Button.2Text=Program
LeftMouse.2=["C:\Windows\System32\calc.exe"][#PlayClick#]
RightMouse.2=
MiddleMouse.2=

Button.3Text=Website
LeftMouse.3=["https://www.rainmeter.net"][#PlayClick#]
RightMouse.3=
MiddleMouse.3=

Button.4Text=Folder
LeftMouse.4=["%ProgramFiles%"][#PlayClick#]
RightMouse.4=
MiddleMouse.4=

Button.5Text=Program
LeftMouse.5=["C:\Windows\System32\calc.exe"][#PlayClick#]
RightMouse.5=
MiddleMouse.5=

Button.6Text=Website
LeftMouse.6=["https://www.rainmeter.net"][#PlayClick#]
RightMouse.6=
MiddleMouse.6=

Button.7Text=This PC
LeftMouse.7=["Explorer" /select,This PC][#PlayClick#]
RightMouse.7=
MiddleMouse.7=

Button.8Text=Documents
LeftMouse.8=["shell:Personal"][#PlayClick#]
RightMouse.8=["C:"][#PlayClick#]
MiddleMouse.8=

Button.9Text=Folder
LeftMouse.9=["%ProgramFiles%"][#PlayClick#]
RightMouse.9=
MiddleMouse.9=

Button.10Text=Program
LeftMouse.10=["C:\Windows\System32\calc.exe"][#PlayClick#]
RightMouse.10=
MiddleMouse.10=

Button.11Text=Website
LeftMouse.11=["https://www.rainmeter.net"][#PlayClick#]
RightMouse.11=
MiddleMouse.11=

Button.12Text=Folder
LeftMouse.12=["%ProgramFiles%"][#PlayClick#]
RightMouse.12=
MiddleMouse.12=

Button.13Text=Program
LeftMouse.13=["C:\Windows\System32\calc.exe"][#PlayClick#]
RightMouse.13=
MiddleMouse.13=
