@import "Chumpinate.chug"

"0.1.0" => string version;

<<< "Generating Chumpinate package version " >>>;

Package pkg("Chumbi");

"Everett M. Carpenter" => pkg.authors;

"https://github.com/SaintEverett/Chumbi.git" => pkg.homepage;
"https://github.com/SaintEverett/Chumbi.git" => pkg.repository;

"MIT" => pkg.license;
"A Chump package designed for the creation of ambisonic architectures in ChucK. Meant for encoding, decoding and altering B-Format ambisonic signals.";

["ambisonics", "chugins", "spatialization", "multichannel"] => pkg.keywords;

"./" => pkg.generatePackageDefinition;

<<< "Defining version " + version >>>;

PackageVersion vers("Chumbi", version);

"10.2" => ver.apiVersion;

"1.5.4.0" => ver.languageVersionMin;

"windows" => ver.os;
"x86_64" => ver.arch;

ver.addFile("/chugins/Encode.chug");
ver.addFile("/chugins/Decode.chug");
ver.addFile("/chugins/SADN.chug");
ver.addFile("/chugins/BFormat.chug");

ver.addExampleFile("/examples/ambisonic-recorder.ck");
ver.addExampleFile("/examples/basic-2nd-order-virtual-sources.ck");
ver.addExampleFile("/examples/wireless-interface.ck");

ver.addDocsFile("/chumbi-doc/chumbi.html");
ver.addDocsFile("/chumbi-doc/index.html");
ver.addDocsFile("/chumbi-doc/ckdoc.css");

"chugins/Chumbi/" + ver.version() + "/" + ver.os() + "/Chumbi.zip" => string path;

<<< path >>>;

ver.generateVersion("./", "Chumbi_windows", "https://github.com/SaintEverett/Chumbi.git" + path);
