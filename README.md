# dynadon

Downscale or upscale a 2D hull geometry and apply boundary conditions to return to the original geometry using the FE code [LS-DYNA](https://www.lstc.com/products/ls-dyna).  This script can be used to implement a dynamically evolving geometry as a stamp to force flexible objects like clothes onto a given 3D target geometry.



## Installation

Use the following command to install this software:

```bash
$ make
$ make install
```

The default `PREFIX` is set to `/usr/local`.  In order to successfully complete the installation, you need to have write permissions for the installation location.



## Requirements

The following Perl modules are mandatory:

+ [CAE::DYNA](https://github.com/mboljen/cae-dyna-perl) - Manipulating simple LS-DYNA keyfiles with Perl
+ [File::Slurp](https://metacpan.org/pod/File::Slurp) - Simple and efficient reading/writing/modifying of complete files
+ [Math::Vector::Real](https://metacpan.org/pod/Math::Vector::Real) - Real vector arithmetic in Perl
+ [Term::ProgressBar](https://metacpan.org/pod/Term::ProgressBar) - Provide a progress meter on a standard terminal
+ [Text::Trim](https://metacpan.org/pod/Text::Trim) - Remove leading and/or trailing whitespace from strings

The following software is recommended:

+ [LS-DYNA](https://www.lstc.com/products/ls-dyna) - General-purpose finite element program
+ [LS-PrePost](https://www.lstc.com/products/ls-prepost) - Advanced pre and post-processor that is delivered free with LS-DYNA



## Usage

This section provides basic examples for the use of `dynadon`.  For a complete list of options, please refer to the following command:

```bash
$ dynadon [--options] sourcekeyfile [setkeyfile] targetkeyfile
```


## Options

+ `-o`, `--outfile` _value_

  Specifies the name of the output file.  Output will be directed to `STDOUT` unless defined.

+ `-l`, `--lcidf` _value_

  Specifies the load curve ID to be referenced by the keyword `*BOUNDARY_PRESCRIBED_FINAL_GEOMETRY` for parameter `LCIDF`.  A warning message will be issued unless defined.

+ `-r`, `--radius` _value_

  Species the radius of the target beams.

+ `-s`, `--scale` _value_

  Species the scaling factor of the 2D hull geometry.  The default is `1`, i.e. the nodes of the hull surface will not be translated anywhere.  Smaller values will decrease the hull surface, larger values will increase the hull surface.

+ `--thamax` _degrees_

  Species the initial cone angle of the search cone in degrees.  The search cone is oriented along the direction of the normal vectors of the elements of the 2D hull geometry.  The default value is `80` degrees.

+ `--thastep` _degrees_

  Specifies the search cone increment in degrees.  If no target element is found in the search cone, the cone angle is increased by `thastep`.  The default value is `5` degrees.

+ `--flip`

  Flips normal vectors of the 2D hull geometry.

+ `-f`, `--force`

  Ignores existing `setkeyfile`.

+ `--dump`

  Saves the result of the nearest neighbour search to `setkeyfile`.  Existing files will be overwritten.

+ `-y`, `--yes`

  Existing `outkeyfile` will be overwritten.

+ `--man`

  Prints the manual page and exits.

+ `--help`

  Prints a brief help message and exits.



## Description

[enter text here]



## Examples

[enter example here]


#### Knee Protector THUMS AM50

[enter text here]

#### ViVA OpenHBM F50

Enter link [here](https://www.chalmers.se/en/projects/Pages/OpenHBM.aspx)



## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.



## License

[MIT](https://choosealicense.com/licenses/mit/)
