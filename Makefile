default: compile

base_dir   = \$(abspath .)
src_dir    = \$(base_dir)/src/main
gen_dir    = \$(base_dir)/generated-src
out_dir    = \$(base_dir)/outputs

SBT       = sbt
SBT_FLAGS = -ivy \$(base_dir)/.ivy2

sbt:
	\$(SBT) \$(SBT_FLAGS)

# unit tests + integration tests 
test:
	\$(SBT) -v "test:runMain examples.Launcher ALU --backend-name verilator"

clean:
	rm -rf \$(gen_dir) \$(out_dir) test_run_dir

cleanall: clean
	rm -rf target project/target

.PHONY: sbt compile verilator run-tests run-custom-bmark test clean cleanall
