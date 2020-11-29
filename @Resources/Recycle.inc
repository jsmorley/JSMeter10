[Variables]

PlayRecycle=PLAY #@#Sounds\Recycle.wav

EmptyBinLeftMouseAction=[!CommandMeasure "MeasureBinSize" "OpenBin"][#PlayClick#][!Update]
FullBinLeftMouseAction=[!CommandMeasure "MeasureBinSize" "OpenBin"][#PlayClick#][!Update]

; Standard actions: Use these two if you don't have or want to use CCLeaner.
EmptyBinRightMouseAction=""
FullBinRightMouseAction=[!CommandMeasure "MeasureBinSize" "EmptyBinSilent"][#PlayRecycle#]

; CCLeaner actions: Use these two instead of Standard actions if you prefer CCLeaner.
;EmptyBinRightMouseAction=["C:\Program Files\CCleaner\CCleaner.exe" "/AUTO"][#PlayRecycle#][!Update]
;FullBinRightMouseAction=["C:\Program Files\CCleaner\CCleaner.exe" "/AUTO"][#PlayRecycle#][!Update]
