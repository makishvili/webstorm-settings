#!/bin/sh

OUR=`pwd`
PREFS=~/Library/Preferences/WebStorm8

# Needed once after Idea installation
# Clean Caches – reset default schemes options
# $PREFS/templates doesn't exist after Idea installation
#rm -rf ~/Library/Caches/WebStorm8/

#cp $PREFS/options/other.xml $PREFS/options/.other.xml
rm -rf $PREFS/tools/* $PREFS/templates/* $PREFS/options/* $PREFS/keymaps/* $PREFS/inspection/* $PREFS/colors/* $PREFS/codestyles/*
#mv $PREFS/options/.other.xml $PREFS/options/other.xml


mkdir -p $PREFS/templates
cd $PREFS/templates
rm -f ya_css_markuper.xml
ln -s $OUR/templates/ya_css_markuper.xml
rm -f ya_surround.xml
ln -s $OUR/templates/ya_surround.xml
rm -f ya_text.xml
ln -s $OUR/templates/ya_text.xml

mkdir -p $PREFS/options
cd $PREFS/options
rm -f colors.scheme.xml
ln -s $OUR/options/colors.scheme.xml
# Idea bug - can't choose own customization
rm -f customization.xml
ln -s $OUR/options/customization.xml
rm -f keymap.xml
ln -s $OUR/options/keymap.xml
rm -f ui.lnf.xml
ln -s $OUR/options/ui.lnf.xml
rm -f editor.xml
ln -s $OUR/options/editor.xml
rm -f editor.codeinsight.xml
ln -s $OUR/options/editor.codeinsight.xml
# Comment it for saving lastProjectLocation
#rm -f ide.general.xml
#ln -s $OUR/options/ide.general.xml

mkdir -p $PREFS/keymaps
cd $PREFS/keymaps
rm -f ya_html_markuper.xml
ln -s $OUR/keymaps/ya_html_markuper.xml 

mkdir -p $PREFS/inspection
cd $PREFS/inspection
rm -f ya_html_markuper.xml
ln -s $OUR/inspection/ya_html_markuper.xml

mkdir -p $PREFS/colors
cd $PREFS/colors
rm -f ya_html_markuper.xml
ln -s $OUR/colors/ya_html_markuper.xml

mkdir -p $PREFS/codestyles
cd $PREFS/codestyles
rm -f ya_html_markuper.xml
ln -s $OUR/codestyles/ya_html_markuper.xml

echo ""
echo "===================================="
echo "Installation completed successfully!"
echo "===================================="
