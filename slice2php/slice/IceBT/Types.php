<?php
//
// Copyright (c) ZeroC, Inc. All rights reserved.
//
//
// Ice version 3.7.9
//
// <auto-generated>
//
// Generated from file `Types.ice'
//
// Warning: do not edit this file.
//
// </auto-generated>
//


namespace IceBT
{
    global $IceBT__t_BluetoothException;
    class BluetoothException extends \Ice\LocalException
    {
        public function __construct($reason='')
        {
            $this->reason = $reason;
        }

        public function ice_id()
        {
            return '::IceBT::BluetoothException';
        }

        public function __toString(): string
        {
            global $IceBT__t_BluetoothException;
            return IcePHP_stringifyException($this, $IceBT__t_BluetoothException);
        }

        public $reason;
    }
    global $IcePHP__t_string;

    $IceBT__t_BluetoothException = IcePHP_defineException('::IceBT::BluetoothException', '\\IceBT\\BluetoothException', false, null, array(
        array('reason', $IcePHP__t_string, false, 0)));
}
?>
