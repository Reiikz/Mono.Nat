
XBUILD=msbuild
XBUILD_ARGS=/nologo /restore

all:
	@echo Building
	$(XBUILD) $(XBUILD_ARGS)

clean:
	@echo Cleaning $(MAIN_SLN)
	rm *.dll
	$(XBUILD) $(XBUILD_ARGS) /t:Clean

pack:
	@echo Creating the nupkg
	$(XBUILD) $(XBUILD_ARGS) /t:Pack /p:Configuration=Release

mono:
	./MakeMonoLibrary

.PHONY: all clean
