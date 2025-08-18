classdef OperationMode < uint8
    %OPERATIONMODE Specifies if an operation is idempotent, which affects the retry behavior of the Ice client runtime.
    %
    %   OperationMode Properties:
    %     Normal - A non-idempotent operation (the default).
    %     Nonmutating - Equivalent to <a href="matlab:help Ice.OperationMode/Idempotent -displayBanner">OperationMode/Idempotent</a>, but deprecated.
    %     Idempotent - An idempotent operation.
    %
    %   Generated from OperationMode.ice by slice2matlab version 3.8.0-alpha.0

    enumeration
        %NORMAL A non-idempotent operation (the default). The Ice client runtime guarantees that it will not violate
        %   at-most-once semantics for operations with this mode.
        Normal (0)
        
        %NONMUTATING Equivalent to <a href="matlab:help Ice.OperationMode/Idempotent -displayBanner">OperationMode/Idempotent</a>, but deprecated.
        %
        %   Deprecated: Use Idempotent instead.
        Nonmutating (1)
        
        %IDEMPOTENT An idempotent operation. The Ice client runtime does not guarantee at-most-once semantics for such an
        %   operation.
        %
        %   Remarks
        %     When an operation is idempotent, the Ice runtime will attempt to transparently recover from certain
        %     runtime errors by re-issuing a failed request transparently.
        Idempotent (2)
    end
    methods (Static)
        function ice_write(os, v)
            if isempty(v)
                os.writeEnum(int32(Ice.OperationMode.Normal), 2);
            else
                os.writeEnum(int32(v), 2);
            end
        end
        function r = ice_read(is)
            v = is.readEnum(2);
            r = Ice.OperationMode.ice_getValue(v);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.Size)
                Ice.OperationMode.ice_write(os, v);
            end
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.Size)
                r = Ice.OperationMode.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function r = ice_getValue(v)
            switch v
                case 0
                    r = Ice.OperationMode.Normal;
                case 1
                    r = Ice.OperationMode.Nonmutating;
                case 2
                    r = Ice.OperationMode.Idempotent;
                otherwise
                    throw(Ice.MarshalException(sprintf('enumerator value %d is out of range', v)));
            end
        end
    end
end
