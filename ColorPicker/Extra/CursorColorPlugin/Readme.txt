CursorColor Plugin
Retrieves the color of the pixel under the cursor, and optionally creates a zoomed bitmap of the area around the cursor.

The only required plugin option is:
 
 Format
 
 which can be RGB/Red/Green/Blue.

[MeasureRGBColor]
Measure=Plugin
Plugin=CursorColor
RealTime=0
Format=RGB

[MeasureRedColor]
Measure=Plugin
Plugin=CursorColor
RealTime=0
Format=Red

[MeasureGreenColor]
Measure=Plugin
Plugin=CursorColor
RealTime=0
Format=Green

[MeasureBlueColor]
Measure=Plugin
Plugin=CursorColor
RealTime=0
Format=Blue


Other plugin options:

To retrieve the color constantly, set Update=100 or some similar low value in your skin, and use the option

RealTime=1

On the measure.

To retrieve the color only on a mouse click, set any desired Update in the skin, and use the option 

RealTime=0 (or leave this option off altogether)

and retrieve the color with

[!CommandMeasure MeasureName "GetColor"].

On a mouse click action.

 
If RealTime=1 then other options are valid:

ZoomCreate			0 or 1 to turn off / on returning a zoomed bitmap image of the area around the cursor
ZoomToWidth		Number of pixels width for the image to return
ZoomToHeight		Number of pixels height for the image to return
ZoomFactor			Number of times to "zoom" the area around the cursor
 
 The plugin will return "ZoomBitmap.bmp" in the current skin folder on each measure update.
 