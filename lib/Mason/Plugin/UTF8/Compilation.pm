package Mason::Plugin::UTF8::Compilation;

use Mason::PluginRole;

override 'output_class_header' => sub {
    return(super() . 'use utf8;');
};

1;
