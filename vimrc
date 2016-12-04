"" Dean's Vim RC
"" Version: 0.2
"" Date:12/02/2016

" VIM mode because we are civilized.
set nocompatible

" I like Leader to be ', since my pinky is right there.
let mapleader = "'"

" Everything is nicer in color
set background=dark
color industry
syntax on

" Set up plugins
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
Helptags

" Global Settings
"   These are per-plugin configurations that don't make
"   sense to consider personalized overrides. (i.e. things
"   don't function well if not configured.)
runtime global.vim

" Personal Settings
"   Placed after plugin loads to allow for overrides.
runtime personal/settings.vim
runtime personal/functions.vim
runtime personal/mappings.vim

