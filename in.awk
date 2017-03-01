BEGIN {

    split("6 7 8 11 19", valuesAsValues)
    # valuesAsValues = {0: "value1", 1: "value2"}

    for (i in valuesAsValues) valuesAsKeys[valuesAsValues[i]] = ""
    # valuesAsKeys = {"value1": "", "value2": ""}
}

# Now you can use `in`
($1 in valuesAsKeys) {print}

