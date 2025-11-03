@import "Chumpinate"

// Our package version
"1.0.0" => string version;

<<< "Generating Chumpinate package version " >>>;

// instantiate a Chumpinate package
Package pkg("Chumbi");

// Add our metadata...
"Everett M. Carpenter" => pkg.authors;

"https://github.com/SaintEverett/Chumbi" => pkg.homepage;
"https://github.com/SaintEverett/Chumbi" => pkg.repository;

"MIT" => pkg.license;
"Chugins for Ambisonic processing within the ChucK programming language" => pkg.description;

["Ambisonics", "Chugins", "Spatialization", "Spherical Harmonics"] => pkg.keywords;

// generate a package-definition.json
// This will be stored in "Chumpinate/package.json"
"./" => pkg.generatePackageDefinition;

<<< "Defining version " + version >>>;;

// Version
PackageVersion vers("Pana", "1.0.0"); 

"1.5.4.1" => vers.languageVersionMin;
"1.0" => ver.apiVersion;

"linux" => ver.os;
"x86_64" => ver.arch;

// The chugin file
ver.addFile("../builddir-release/chumpinate/Chumpinate.chug");

// These build files are examples as well
ver.addExampleFile("build-pkg-win.ck");
ver.addExampleFile("build-pkg-mac.ck");
ver.addExampleFile("build-pkg-linux.ck");

// Documentation files
ver.addDocsFile("./index.html");
ver.addDocsFile("./chumpinate.html");
ver.addDocsFile("./ckdoc.css");

"chugins/Chumpinate/" + ver.version() + "/" + ver.os() + "/Chumpinate.zip" => string path;

<<< path >>>;

// wrap up all our files into a zip file, and tell Chumpinate what URL
// this zip file will be located at.
ver.generateVersion("./", "Chumpinate_linux", "https://ccrma.stanford.edu/~nshaheed/" + path);

chout <= "Use the following commands to upload the package to CCRMA's servers:" <= IO.newline();
chout <= "ssh nshaheed@ccrma-gate.stanford.edu \"mkdir -p ~/Library/Web/chugins/Chumpinate/"
      <= ver.version() <= "/" <= ver.os() <= "\"" <= IO.newline();
chout <= "scp Chumpinate_linux.zip nshaheed@ccrma-gate.stanford.edu:~/Library/Web/" <= path <= IO.newline();

// Generate a version definition json file, stores this in "chumpinate/<VerNo>/Chumpinate_linux.json"
ver.generateVersionDefinition("Chumpinate_linux", "./" );