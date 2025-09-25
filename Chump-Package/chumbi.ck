@import "Chumpinate"

Package pkg("Chumbi");

"Everett M. Carpenter" => pkg.author;

// author homepage
// repo page

"The Ambisonic ecosystem of ChucK" => pkg.description;
"MIT" => pkg.license;

["Ambisonics", "Chugins", "Spatialization", "Spherical Harmonics"] => pkg.keywords;

"./" => pkg.generatePackageDefinition;

// Version

PackageVersion vers("Pana", "1.0.0"); 

"1.5.4.1" => vers.languageVersionMin;

"?" => vers.os;
"?" => ver.arch;

