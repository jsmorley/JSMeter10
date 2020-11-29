[Variables]

; ClockWeather
; Set weather location Latitude and Longitude in @Resources\WeatherComJSON.inc

; Name is the name of an installed Text-to-Speech voice on your system.
Name=Microsoft Zira Desktop
; Gender can be one of Male or Female. Ignored if Name is set.
Gender=Female
; Volume is an integer from 0 to 100
Volume=100
; Rate is an integer from -10 (slow) to 10 (fast)
Rate=0

; Modify this text for your language if you like.
Morning=Good Morning
Afternoon=Good Afternoon
Evening=Good Evening
DescriptionSubstitute="1":"really hot","2":"sort a hot","3":"fairly warm","4":"fairly cool","5":"sort a chilly","6":"really cold"
TimeWeatherSpeak=[MeasurePartOfDay]! It's [MeasureSpeakTime] on [MeasureWeekDay], an the weather's [MeasureCurrentText] an [MeasureTempDesc] at [@CurrentTemperature] degrees.

; Note that punctuation like , . ; : ? ! are useful for altering the rhythm of the
; output, to make for more natural sounding speech. In addition, depending on the language
; and other cultural factors, you may find that the correct "spelling" of a word may 
; not actually provide the most natural sounding spoken output.