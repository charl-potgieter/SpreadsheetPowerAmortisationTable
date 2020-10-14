let

    tbl = Table.FromRecords({
        [Item = "Term in years", Value = "20"], 
        [Item = "Principal", Value = "500000"], 
        [Item = "Interest rate per year", Value = "0.045"],
        [Item = "First month end", Value = #date(2020,1,31)]
        }), 

    ChangedType = Table.TransformColumnTypes(
       tbl, 
        {
            {"Item", type text},
            {"Value", type text}

        })

in
    ChangedType