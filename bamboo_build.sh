## EXPORT GOPATH
export GOPATH=$(go env GOPATH)
export GOBIN=${GOPATH}/bin
echo "GO ENV: ${GOPATH} ${GOBIN}"

## CHANGE TO SOURCE DIR
cd ${GOPATH}/src/github.com/freestarcapital/prebid-server
echo "WORKING DIR: ${PWD}"

## DEP BUILD
dep ensure

## BUILD BINARY
go build . 


