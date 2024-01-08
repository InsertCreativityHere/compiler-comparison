% RegistryPrx   Summary of RegistryPrx
%
% RegistryPrx Methods:
%   getUserInfo
%   getUserInfoAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from User.ice by slice2matlab version 3.7.10

classdef RegistryPrx < Ice.ObjectPrx
    methods
        function result = getUserInfo(obj, id, varargin)
            % getUserInfo
            %
            % Parameters:
            %   id (char)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (User.UserInfo)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getUserInfo', 0, true, os_, true, User.RegistryPrx.getUserInfo_ex_, varargin{:});
            is_.startEncapsulation();
            result_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) result_h_.set(v), 'User.UserInfo');
            is_.readPendingValues();
            is_.endEncapsulation();
            result = result_h_.value;
        end
        function r_ = getUserInfoAsync(obj, id, varargin)
            % getUserInfoAsync
            %
            % Parameters:
            %   id (char)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = IceInternal.ValueHolder();
                is_.readValue(@(v) result.set(v), 'User.UserInfo');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = result.value;
            end
            r_ = obj.iceInvokeAsync('getUserInfo', 0, true, os_, 1, @unmarshal, User.RegistryPrx.getUserInfo_ex_, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::User::Registry';
        end
        function r = ice_read(is)
            r = is.readProxy('User.RegistryPrx');
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
            % Returns (User.RegistryPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, User.RegistryPrx.ice_staticId(), 'User.RegistryPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (User.RegistryPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'User.RegistryPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = RegistryPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
    properties(Constant,Access=private)
        getUserInfo_ex_ = { 'Core.ArgumentException' }
    end
end
