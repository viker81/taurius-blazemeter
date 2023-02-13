set mydate=%date:/=%
set mytime=%time::=%
set mytimestamp=%mydate: =_%_%mytime:.=_% 

set artifact_dirname=C:\docker\taurus\artifacts/artifacts-%mytimestamp% 

mkdir %artifact_dirname% 

docker run --name blazemeter-taurus -it --rm -v C:\docker\taurus\my-test:/bzt-configs -v %artifact_dirname%:/tmp/artifacts blazemeter/taurus %*