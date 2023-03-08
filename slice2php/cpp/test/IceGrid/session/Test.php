<?php
//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `Test.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//


namespace
{
    require_once 'Glacier2/PermissionsVerifier.php';
}

namespace Test
{
    global $Test__t_ExtendedPermissionDeniedException;
    class ExtendedPermissionDeniedException extends \Glacier2\PermissionDeniedException
    {
        public function __construct($reason='')
        {
            parent::__construct($reason);
        }

        public function ice_id()
        {
            return '::Test::ExtendedPermissionDeniedException';
        }

        public function __toString(): string
        {
            global $Test__t_ExtendedPermissionDeniedException;
            return IcePHP_stringifyException($this, $Test__t_ExtendedPermissionDeniedException);
        }
    }

    $Test__t_ExtendedPermissionDeniedException = IcePHP_defineException('::Test::ExtendedPermissionDeniedException', '\\Test\\ExtendedPermissionDeniedException', true, $Glacier2__t_PermissionDeniedException, null);
}
?>
