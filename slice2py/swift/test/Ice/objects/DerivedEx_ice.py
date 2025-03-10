# Copyright (c) ZeroC, Inc.
#
# Ice version 3.8.0-alpha.0
#
# <auto-generated>
#
# Generated from file 'DerivedEx.ice'
#
# Warning: do not edit this file.
#
# </auto-generated>

import Ice
import IcePy
import builtins as _builtins
import Test_ice

# Included module Test
_M_Test = Ice.openModule('Test')

# Included module Test.Inner
_M_Test.Inner = Ice.openModule('Test.Inner')

# Included module Test.Inner.Sub
_M_Test.Inner.Sub = Ice.openModule('Test.Inner.Sub')

# Start of module Test
__name__ = 'Test'

if 'DerivedEx' not in _M_Test.__dict__:
    _M_Test.DerivedEx = None
    class DerivedEx(_M_Test.BaseEx):
        def __init__(self, reason=''):
            _M_Test.BaseEx.__init__(self, reason)

        def __str__(self):
            return IcePy.stringifyException(self)

        __repr__ = __str__

        _ice_id = '::Test::DerivedEx'

    _M_Test._t_DerivedEx = IcePy.defineException('::Test::DerivedEx', DerivedEx, (), _M_Test._t_BaseEx, ())
    DerivedEx._ice_type = _M_Test._t_DerivedEx

    _M_Test.DerivedEx = DerivedEx
    del DerivedEx

# End of module Test
