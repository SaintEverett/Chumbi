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

"10.2" => vers.apiVersion;

"1.5.4.0" => vers.languageVersionMin;

"windows" => vers.os;
"x86_64" => vers.arch;

vers.addFile("/chugins/Encode.chug");
vers.addFile("/chugins/Decode.chug");
vers.addFile("/chugins/SADN.chug");
vers.addFile("/chugins/BFormat.chug");

vers.addExampleFile("/examples/ambisonic-recorder.ck");
vers.addExampleFile("/examples/basic-2nd-order-virtual-sources.ck");
vers.addExampleFile("/examples/wireless-interface.ck");

vers.addDocsFile("/chumbi-doc/chumbi.html");
vers.addDocsFile("/chumbi-doc/index.html");
vers.addDocsFile("/chumbi-doc/ckdoc.css");

"chugins/Chumbi/" + vers.version() + "/" + vers.os() + "/Chumbi.zip" => string path;

<<< path >>>;

vers.generateVersion("./", "Chumbi_windows", "https://github.com/SaintEverett/Chumbi.git" + path);

chout <= "Use the following commands to upload the package to CCRMA's servers:" <= IO.newline();
chout <= "ssh nshaheed@ccrma-gate.stanford.edu \"mkdir -p ~/Library/Web/chugins/Chumpinate/"
      <= vers.version() <= "/" <= vers.os() <= "\"" <= IO.newline();
chout <= "scp Chumpinate_windows.zip nshaheed@ccrma-gate.stanford.edu:~/Library/Web/" <= path <= IO.newline();

vers.generateVersionDefinition("Chumpinate_windows", "./" );
