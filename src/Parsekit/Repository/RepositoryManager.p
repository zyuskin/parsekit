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
    $self.parsekitRepository[^ParsekitRepository::create[]]
###


#------------------------------------------------------------------------------
#:param rootPackage type RootPackage
#
#:result hash of RepositoryInterface
#------------------------------------------------------------------------------
@getRpositories[rootPackage][result]
#   TODO gets extra repositories from rootPackage
    $result[
      $.0[$self.parsekitRepository]
    ]
###
