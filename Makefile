ALL_ICONS := outrun neue_outrun neue_ember neue_toxic neue_azure

.PHONY: all
all: icns

clean:
	rm -rf build

%: src/%/*.png
	mkdir -p build/$@.iconset
	cp $^ build/$@.iconset/
	iconutil -c icns -o build/$@.icns build/$@.iconset

 icns: ${ALL_ICONS}
