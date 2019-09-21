default: compile

SBT       = sbt

# unit tests + integration tests 
test:
	$(SBT) -v "test:runMain examples.Launcher ALU --backend-name verilator"
