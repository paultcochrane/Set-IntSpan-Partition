use 5.008000;
use ExtUtils::MakeMaker;

WriteMakefile(
  NAME              => 'Set::IntSpan::Partition',
  VERSION_FROM      => 'lib/Set/IntSpan/Partition.pm',
  PREREQ_PM         => {
    'Test::More'         =>  0,
    'Set::IntSpan'       =>  0,
    'Heap::Simple'       =>  0.13,
    'Heap::Simple::XS'   =>  0.10,
    'List::Util'         =>  0,
    'List::MoreUtils'    =>  0,
  },
  ABSTRACT_FROM     => 'lib/Set/IntSpan/Partition.pm',
  AUTHOR            => 'Bjoern Hoehrmann <bjoern@hoehrmann.de>',
  LICENSE           => 'perl',
  MIN_PERL_VERSION  => 5.008000,

  'dist'            => {
    PREOP     => 'chmod 600 Makefile.PL',
    TARFLAGS	=> '--group=none --owner=bjoern --mode=a+rw -cvf',
  },

  META_MERGE        => {
    'meta-spec' => { version => 2 },
    resources => {
       repository => {
         type => 'git',
         url  => 'https://github.com/hoehrmann/Set-IntSpan-Partition.git',
         web  => 'https://github.com/hoehrmann/Set-IntSpan-Partition',
      },
    },
  },
);
