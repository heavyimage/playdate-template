.PHONY: clean
.PHONY: build
.PHONY: run
.PHONY: copy

SDK = $(PLAYDATE_SDK_PATH)
SDKBIN=$(SDK)/bin
GAME=$(notdir $(CURDIR))
SIM=Playdate Simulator


build: clean compile run

run: open

clean:
	rm -rf '$(GAME).pdx'

compile: Source/main.lua
	"$(SDKBIN)/pdc" 'Source' '$(GAME).pdx'
	
open:
	open -a '$(SDKBIN)/$(SIM).app/Contents/MacOS/$(SIM)' '$(GAME).pdx'
