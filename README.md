#MPT-Library

MPT-Library is a collection of MPT (magnetic polarizability tensor) spectral signatures that have been computed using the MPT-Calculator software

https://github.com/BAWilson94/MPT-Calculator

The collection consists of both of a set of simple geometries (cone, block, cube, tetrahedra, torus, etc) and also a set of realistic threat objects (hand guns, knives, knuckle dusters, hammers, scissors, screw drivers etc) and non-threat objects (belt buckles, shoe shanks, bracelets, ear rings, pendants, rings, watches, keys, coins etc) [3].

The library is designed as an educational and research tool for engineers, mathematicians and physicists working in both academia and industry and it is hoped those interested in characterising conducting permeable objects will find it useful.

The MPT characterises the shape, conductivity, permeability of conducting permeable object, is frequency dependent [1] and is independent of the object’s position. The rank 2 MPT is symmetric and has at most 6 independent complex coefficients. However, for objects with mirror or rotational symmetries the number of independent coefficients is smaller [1,2].

For each class of object in the library, the outputs of the MPT-Calculator are provided, including the coefficients as a function of frequency along with functions that can be used for plotting and the input files for MPT-Calculator so that adjustments can be made to the geometry and/or materials if desired.

#Installation

Dependencies

To use the visualisation the Python packages numpy, os, time, multiprocessing, cmath, subprocess, matplotlib are required.

The code has been tested on version 6.2.1905 of NGSolve and version 3.7.1 of Python 3 under 10.13.6 of MAC OS and 18.04 of Ubuntu.

#Usage

Please refer to the MPT-Calculator documentation for how to use the plotting scripts.

#Referencing

If you use the library, please refer to it in your work by citing the references

[1] P. D. Ledger and W. R. B. Lionheart, The spectral properties of the magnetic polarizability tensor for metallic object characterisation, Math Meth Appl Sci., 2019, doi:10.1002/mma.5830

[2] B. A. Wilson and P. D. Ledger, Efficient computation of the magnetic polarizabiltiy tensor spectral signature using pod. International Journal for Numerical Methods in Engineering 122, 1940-1963, 2021.

[3] P.D. Ledger, B.A. Wilson, A.A.S. Amad, W.R.B. Lionheart Identification of meallic objects using spectral MPT signatures: Object characterisation and invariants. International Journal for Numerical Methods in Engineering. Accepted Author Manuscript, 2021. https://onlinelibrary.wiley.com/doi/epdf/10.1002/nme.6688