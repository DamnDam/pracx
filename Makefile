# Old method, broken by some change to msbuild?
# MSBUILD=/c/Program\ Files\ \(x86\)/MSBuild/12.0/Bin/MSBuild.exe
MSBUILD=./msbuild.workaround

# NSIS="/c/Program Files (x86)/NSIS/makensis.exe"
NSIS=makensis

.PHONY: release installer

all: release installer

release:
	$(MSBUILD) pracx.sln /v:m /m /p:Configuration=Release

installer: 
	$(NSIS) //V1 InstallScript/PRACX.nsi

clean:
	rm -rf obj/* bin/* Debug/*
