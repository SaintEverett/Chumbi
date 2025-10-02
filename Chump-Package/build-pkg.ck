@import "Chumpinate"

Package pkg("Chumbi");

"Everett M. Carpenter" => pkg.author;

// author homepage
"https://github.com/SaintEverett/Chumbi" => pkg.repository; // repo page

"The Ambisonic ecosystem of ChucK" => pkg.description;
"MIT" => pkg.license;

["Ambisonics", "Chugins", "Spatialization", "Spherical Harmonics"] => pkg.keywords;

"./" => pkg.generatePackageDefinition;

// Version

PackageVersion vers("Pana", "1.0.0"); 

"1.5.4.1" => vers.languageVersionMin;

"?" => vers.os;
"?" => vers.arch;

// add our package's files
vers.addFile("AwesomeEffect.ck");

// add our example, this will be stored in the package's `_examples` directory.
vers.addExampleFile("AwesomeExample.ck");

// zip up all our files into AwesomeEffect.zip, and tell Chumpinate what URL
// this zip file will be located at.
vers.generateVersion("./", "AwesomeEffect", "https://awesome.com/releases/1.0.0/AwesomeEffect.zip")

// pGenerate a version definition json file, stores this in "AwesomeEffect/<VerNo>/version.json"
vers.generateVersionDefinition("version", "./");