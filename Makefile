SOURCE_IMAGES := icon_16x16.png icon_32x32.png icon_32x32@2x.png icon_128x128.png icon_256x256.png icon_512x512.png icon_512x512@2x.png


.PHONY: all
all: icns

clean:
	rm -rf kitty.iconset

iconset: ${SOURCE_IMAGES} clean
	mkdir -p kitty.iconset
	cp icon_16x16.png kitty.iconset/
	cp icon_32x32.png kitty.iconset/icon_16x16@2x.png
	cp icon_32x32.png kitty.iconset//
	cp icon_32x32@2x.png kitty.iconset/icon_32x32@2x.png
	cp icon_128x128.png kitty.iconset/
	cp icon_256x256.png kitty.iconset//icon_128x128@2x.png
	cp icon_256x256.png kitty.iconset/
	cp icon_512x512.png kitty.iconset//icon_256x256@2x.png
	cp icon_512x512@2x.png kitty.iconset/
icns: iconset
	iconutil -c icns -o kitty.icns kitty.iconset 
