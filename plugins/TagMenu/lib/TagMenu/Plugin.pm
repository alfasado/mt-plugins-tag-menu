package TagMenu::Plugin;

use strict;

sub _list_tag_param {
    my ( $cb, $app, $param, $tmpl ) = @_;
    if ( my $type = $app->param( '_type' ) ) {
        if ( $type eq 'tag' ) {
            if ( my $filter_key = $app->param( 'filter_key' ) ) {
                if ( ( $filter_key eq 'entry' ) ||
                     ( $filter_key eq 'page' ) ||
                     ( $filter_key eq 'asset' ) ) {
                    $param->{ screen_group } = $filter_key;
                }
            }
        }
    }
}

1;