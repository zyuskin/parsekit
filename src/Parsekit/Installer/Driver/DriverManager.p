# Created by IntelliJ IDEA.
# User: ibodnar
# Date: 30.04.16
# Time: 2:28
# To change this template use File | Settings | File Templates.

@CLASS
DriverManager

@OPTIONS
locals

@USE
GitDriver.p


@auto[]
###


#------------------------------------------------------------------------------
#:constructor
#
#:param filesystem type Filesystem
#------------------------------------------------------------------------------
@create[filesystem]
    $self.filesystem[$filesystem]
    $self.drivers[
        $.git[^GitDriver::create[$filesystem]]
    ]
###


#------------------------------------------------------------------------------
# Attempts to install package in directory
#
#:param dir type string
#:param url type string
#
#:result bool
#------------------------------------------------------------------------------
@install[dir;package][result]
    $result(false)
    $url[^if($package.preferDist){$package.distUrl}{$package.sourceUrl}]
    ^self.drivers.foreach[key;driver]{
        ^if(^driver.supports[$url]){
            $result(^driver.update[$dir;$package])
            ^break[]
        }
    }
###