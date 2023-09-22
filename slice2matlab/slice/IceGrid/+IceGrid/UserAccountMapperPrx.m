% UserAccountMapperPrx   Summary of UserAccountMapperPrx
%
% A user account mapper object is used by IceGrid nodes to map
% session identifiers to user accounts.
%
% UserAccountMapperPrx Methods:
%   getUserAccount - Get the name of the user account for the given user.
%   getUserAccountAsync - Get the name of the user account for the given user.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from UserAccountMapper.ice by slice2matlab version 3.7.10

classdef UserAccountMapperPrx < Ice.ObjectPrx
    methods
        function result = getUserAccount(obj, user, varargin)
            % getUserAccount   Get the name of the user account for the given user. This is
            % used by IceGrid nodes to figure out the user account to use
            % to run servers.
            %
            % Parameters:
            %   user (char) - The value of the server descriptor's user
            %     attribute. If this attribute is not defined, and the server's
            %     activation mode is session, the default value of
            %     user is the session identifier.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (char) - The user account name.
            %
            % Exceptions:
            %   IceGrid.UserAccountNotFoundException - Raised if no user account
            %     is found for the given user.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(user);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getUserAccount', 0, true, os_, true, IceGrid.UserAccountMapperPrx.getUserAccount_ex_, varargin{:});
            is_.startEncapsulation();
            result = is_.readString();
            is_.endEncapsulation();
        end
        function r_ = getUserAccountAsync(obj, user, varargin)
            % getUserAccountAsync   Get the name of the user account for the given user. This is
            % used by IceGrid nodes to figure out the user account to use
            % to run servers.
            %
            % Parameters:
            %   user (char) - The value of the server descriptor's user
            %     attribute. If this attribute is not defined, and the server's
            %     activation mode is session, the default value of
            %     user is the session identifier.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            %
            % Exceptions:
            %   IceGrid.UserAccountNotFoundException - Raised if no user account
            %     is found for the given user.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(user);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readString();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getUserAccount', 0, true, os_, 1, @unmarshal, IceGrid.UserAccountMapperPrx.getUserAccount_ex_, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceGrid::UserAccountMapper';
        end
        function r = ice_read(is)
            r = is.readProxy('IceGrid.UserAccountMapperPrx');
        end
        function r = checkedCast(p, varargin)
            % checkedCast   Contacts the remote server to verify that the object implements this type.
            %   Raises a local exception if a communication error occurs. You can optionally supply a
            %   facet name and a context map.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %   context - The optional context map to send with the invocation.
            %
            % Returns (IceGrid.UserAccountMapperPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, IceGrid.UserAccountMapperPrx.ice_staticId(), 'IceGrid.UserAccountMapperPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (IceGrid.UserAccountMapperPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceGrid.UserAccountMapperPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = UserAccountMapperPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
    properties(Constant,Access=private)
        getUserAccount_ex_ = { 'IceGrid.UserAccountNotFoundException' }
    end
end
