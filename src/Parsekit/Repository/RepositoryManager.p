# Created by IntelliJ IDEA.
# User: ibodnar
# Date: 18.03.16
# Time: 0:43
# To change this template use File | Settings | File Templates.

@CLASS
RepositoryManager

@OPTIONS
locals

@auto[]
###


#------------------------------------------------------------------------------
#:constructor
#------------------------------------------------------------------------------
@create[]
###


#------------------------------------------------------------------------------
#:param package type RootPackage
#------------------------------------------------------------------------------
@extractRootRepositories[package]
    $result[
      $.0[]
    ]
###