% OperationMode   Summary of OperationMode
%
% Determines the retry behavior an invocation in case of a (potentially) recoverable error.
%
% OperationMode Properties:
%   Normal - Ordinary operations have Normal mode.
%   Nonmutating - Operations that are nonmutating must not modify object state.
%   Idempotent - Operations that use the Slice idempotent keyword can modify object state, but invoking an operation twice in a row must result in the same object state as invoking it once.

% Copyright (c) ZeroC, Inc.
% Generated from OperationMode.ice by slice2matlab version 3.8.0-alpha.0

classdef OperationMode < uint8
    enumeration% Normal   Summary of Normal
        %
        % Ordinary operations have Normal mode. These operations modify object state; invoking such an
        % operation twice in a row has different semantics than invoking it once. The Ice run time guarantees that it
        % will not violate at-most-once semantics for Normal operations.
        
        Normal (0)% Nonmutating   Summary of Nonmutating
        %
        % Operations that are nonmutating must not modify object state.
        % The Ice run-time no longer makes a distinction between nonmutating operations and idempotent operations.
        % Use the idempotent keyword instead.
        
        Nonmutating (1)% Idempotent   Summary of Idempotent
        %
        % Operations that use the Slice idempotent keyword can modify object state, but invoking an
        % operation twice in a row must result in the same object state as invoking it once. For example,
        % x = 1 is an idempotent statement, whereas x += 1 is not. In addition, the Ice
        % run time will attempt to transparently recover from certain run-time errors by re-issuing a failed request
        % and propagate the failure to the application only if the second attempt fails.
        
        Idempotent (2)
    end
    methods(Static)
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
