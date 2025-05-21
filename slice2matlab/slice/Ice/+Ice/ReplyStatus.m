% ReplyStatus   Summary of ReplyStatus
%
% Represents the status of a reply.
% A reply status can have any value in the range 0..255. Do not use this enum to marshal or unmarshal a reply
% status unless you know its value corresponds to one of the enumerators defined below.
%
% ReplyStatus Properties:
%   Ok - The dispatch completed successfully.
%   UserException - The dispatch completed with a Slice user exception.
%   ObjectNotExist - The dispatch could not find an implementation for the target object.
%   FacetNotExist - The dispatch found an implementation for the target object but could not find the requested facet.
%   OperationNotExist - The dispatch found an implementation for the target object but could not find the requested operation.
%   UnknownLocalException - The dispatch failed with an Ice local exception.
%   UnknownUserException - The dispatch failed with a Slice user exception that does not conform to the exception specification of the operation.
%   UnknownException - The dispatch failed with some other exception (neither an Ice local exception nor a Slice user exception).
%   InvalidData - The dispatch failed because the request payload could not be unmarshaled.
%   Unauthorized - The caller is not authorized to access the requested resource.

% Copyright (c) ZeroC, Inc.
% Generated from ReplyStatus.ice by slice2matlab version 3.8.0-alpha.0

classdef ReplyStatus < uint8
    enumeration
        % Ok   Summary of Ok
        %
        % The dispatch completed successfully.
        Ok (0)
        
        % UserException   Summary of UserException
        %
        % The dispatch completed with a Slice user exception.
        UserException (1)
        
        % ObjectNotExist   Summary of ObjectNotExist
        %
        % The dispatch could not find an implementation for the target object.
        ObjectNotExist (2)
        
        % FacetNotExist   Summary of FacetNotExist
        %
        % The dispatch found an implementation for the target object but could not find the requested facet.
        FacetNotExist (3)
        
        % OperationNotExist   Summary of OperationNotExist
        %
        % The dispatch found an implementation for the target object but could not find the requested operation.
        OperationNotExist (4)
        
        % UnknownLocalException   Summary of UnknownLocalException
        %
        % The dispatch failed with an Ice local exception.
        UnknownLocalException (5)
        
        % UnknownUserException   Summary of UnknownUserException
        %
        % The dispatch failed with a Slice user exception that does not conform to the exception specification of
        % the operation.
        UnknownUserException (6)
        
        % UnknownException   Summary of UnknownException
        %
        % The dispatch failed with some other exception (neither an Ice local exception nor a Slice user exception).
        UnknownException (7)
        
        % InvalidData   Summary of InvalidData
        %
        % The dispatch failed because the request payload could not be unmarshaled. It is typically due to a mismatch
        % in the Slice definitions used by the client and the server.
        InvalidData (8)
        
        % Unauthorized   Summary of Unauthorized
        %
        % The caller is not authorized to access the requested resource.
        Unauthorized (9)
    end
    methods(Static)
        function ice_write(os, v)
            if isempty(v)
                os.writeEnum(int32(Ice.ReplyStatus.Ok), 9);
            else
                os.writeEnum(int32(v), 9);
            end
        end
        function r = ice_read(is)
            v = is.readEnum(9);
            r = Ice.ReplyStatus.ice_getValue(v);
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.Size)
                Ice.ReplyStatus.ice_write(os, v);
            end
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.Size)
                r = Ice.ReplyStatus.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function r = ice_getValue(v)
            switch v
                case 0
                    r = Ice.ReplyStatus.Ok;
                case 1
                    r = Ice.ReplyStatus.UserException;
                case 2
                    r = Ice.ReplyStatus.ObjectNotExist;
                case 3
                    r = Ice.ReplyStatus.FacetNotExist;
                case 4
                    r = Ice.ReplyStatus.OperationNotExist;
                case 5
                    r = Ice.ReplyStatus.UnknownLocalException;
                case 6
                    r = Ice.ReplyStatus.UnknownUserException;
                case 7
                    r = Ice.ReplyStatus.UnknownException;
                case 8
                    r = Ice.ReplyStatus.InvalidData;
                case 9
                    r = Ice.ReplyStatus.Unauthorized;
                otherwise
                    throw(Ice.MarshalException(sprintf('enumerator value %d is out of range', v)));
            end
        end
    end
end
