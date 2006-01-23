#!/bin/sh
#
# Creates the WiFiDog documentation
# =================================
#
# Requirements to create the documentation:
# - PEAR::PhpDocumentor version 1.3+ must be installed
# - the stable version doesn't support PHP5 code
# - install PEAR::PhpDocumentor version 1.3 this way:
#   pear install PhpDocumentor-beta
# - memory_limit flag in php.ini must be larger than 8 MB (at least 16 MB recommended)

phpdoc -t  . -d  ../wifidog/,. -i  *.html,*.gif,*.jpg,*.png,*.css,*.js,*.sh,*.mo,*.po,*.pl,*.txt,*.xml,README,../wifidog/classes/AbstractDbMySql.php,../wifidog/lib/FCKeditor/,../wifidog/lib/magpie/,../wifidog/lib/Phlickr/,../wifidog/lib/smarty/,../wifidog/local_content/,../wifidog/locale/,../wifidog/tmp/,../local.config.php -pp on -s on -ti "WiFiDog Documentation" -o  HTML:frames:default