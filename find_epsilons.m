fname := "nonsurj7.txt";
P<x> := PolynomialRing(Integers());

f := Open(fname, "r");


    line := Read(f);

    split_nums := Split(line, "[]\n");

    for coeffs in split_nums do
        strs := Split(coeffs, " ,");
        nums :=[];
        for str in strs do
            Append(~nums, StringToInteger(str));
        end for;
        f := elt<P | nums>;
        chars, allroots := find_onedimchar(f, 7);
        
    end for;

