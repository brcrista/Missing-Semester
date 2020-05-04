SCRIPT := sorts.py

.PHONY: all
all: $(SCRIPT).lprof time memory

$(SCRIPT).lprof:
	kernprof -l $(SCRIPT)

.PHONY: time
time: $(SCRIPT).lprof
	python -m line_profiler $(SCRIPT).lprof

.PHONY: memory
memory:
	python -m memory_profiler $(SCRIPT)
