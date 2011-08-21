use inc::Module::Install;

name 'Mason-Plugin-UTF8';
all_from 'lib/Mason/Plugin/UTF8.pm';

requires 'Mason' => "2.13";

auto_install;
auto_set_repository;
githubmeta;

WriteAll;
