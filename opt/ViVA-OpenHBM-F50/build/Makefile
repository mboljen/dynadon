DYNADON = perl ../../../bin/dynadon

RADIUS = 2.0
SRCKEY = source.k
TARKEY = target.k
OUTKEY = dynadon.k

all: $(OUTKEY)

$(OUTKEY): $(SRCKEY) $(TARKEY)
	$(DYNADON) --lcidf 1 --radius $(RADIUS) --out $@ $^

clean:
	$(RM) $(OUTKEY)

.PHONY: clean
