package ONVIF::PTZ::Types::HostnameInformation;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %FromDHCP_of :ATTR(:get<FromDHCP>);
my %Name_of :ATTR(:get<Name>);
my %Extension_of :ATTR(:get<Extension>);

__PACKAGE__->_factory(
    [ qw(        FromDHCP
        Name
        Extension

    ) ],
    {
        'FromDHCP' => \%FromDHCP_of,
        'Name' => \%Name_of,
        'Extension' => \%Extension_of,
    },
    {
        'FromDHCP' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
        'Name' => 'SOAP::WSDL::XSD::Typelib::Builtin::token',
        'Extension' => 'ONVIF::PTZ::Types::HostnameInformationExtension',
    },
    {

        'FromDHCP' => 'FromDHCP',
        'Name' => 'Name',
        'Extension' => 'Extension',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::PTZ::Types::HostnameInformation

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
HostnameInformation from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * FromDHCP


=item * Name


=item * Extension




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::PTZ::Types::HostnameInformation
   FromDHCP =>  $some_value, # boolean
   Name =>  $some_value, # token
   Extension =>  { # ONVIF::PTZ::Types::HostnameInformationExtension
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut
