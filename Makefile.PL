use 5.010001;
use ExtUtils::MakeMaker;
use FindBin qw($Bin);
use File::Copy;

My_WriteMakefile(
    NAME              => 'HTTP::UA::Parser',
    VERSION_FROM      => 'lib/HTTP/UA/Parser.pm',
    ABSTRACT_FROM  => 'lib/HTTP/UA/Parser.pm',
    PREREQ_PM         => {
        'YAML::Tiny' => 0
    },
    LICENSE        => 'perl',
    AUTHOR         => 'Mamod Mehyar <mamod.mehyar@gmail.com>',
    META_MERGE => {
        resources => {
            repository => 'git://github.com/ua-parser/uap-perl.git',
            bugtracker => 'https://github.com/ua-parser/uap-perl/issues',
        }
    }
);

sub My_WriteMakefile {
    my %params=@_;
    unless (-e $Bin.'/lib/HTTP/UA/Parser/regexes.yaml') {
        print "Can't locate regexes.yaml file in $Bin/lib/HTTP/UA/Parser\n";
    }

    WriteMakefile(%params);
}
