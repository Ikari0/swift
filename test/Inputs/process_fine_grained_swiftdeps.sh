#!/usr/bin/env sh
# Fine-grained swiftdeps files use multiple lines for each graph node.
# Compress such a file so that each entry is one line of the form:
# <kind> <aspect> <context> <name> <isProvides>
# Also sort for consistency, since the node order can vary.

awk '/kind:/ {k = $2}; /aspect:/ {a = $2}; /context:/ {c = $2}; /name/ {n = $2}; /sequenceNumber/ {s = $2}; /isProvides:/ {print k, a, c, n, $2}' | sort
