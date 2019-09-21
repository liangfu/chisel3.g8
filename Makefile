default: compile

SBT       = sbt

# unit tests + integration tests 
test:
	$(SBT) "test:runMain examples.Launcher ALU --backend-name verilator"
