classdef RegistryPrx < Ice.ObjectPrx
    %REGISTRYPRX
    %
    %   Creation
    %     Syntax
    %       prx = User.RegistryPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   RegistryPrx Methods:
    %     getUserInfo
    %     getUserInfoAsync - An asynchronous getUserInfo.
    %
    %   RegistryPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::User::Registry.
    %     uncheckedCast - Creates a RegistryPrx from another proxy without any validation.
    %
    %   Generated from User.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function returnValue = getUserInfo(obj, id, context)
            %GETUSERINFO
            %
            %   Input Arguments
            %     id
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       User.UserInfo scalar | empty array of User.UserInfo
            %
            %   Exceptions
            %     Core.ArgumentException
            
            arguments
                obj (1, 1) User.RegistryPrx
                id (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getUserInfo', 0, true, os_, true, User.RegistryPrx.getUserInfo_ex_, context);
            is_.startEncapsulation();
            returnValue_h_ = IceInternal.ValueHolder();
            is_.readValue(@(v) returnValue_h_.set(v), 'User.UserInfo');
            is_.readPendingValues();
            is_.endEncapsulation();
            returnValue = returnValue_h_.value;
        end

        function future = getUserInfoAsync(obj, id, context)
            %GETUSERINFOASYNC
            %
            %   Input Arguments
            %     id
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getUserInfo, Ice.Future.
            
            arguments
                obj (1, 1) User.RegistryPrx
                id (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = IceInternal.ValueHolder();
                is_.readValue(@(v) returnValue.set(v), 'User.UserInfo');
                is_.readPendingValues();
                is_.endEncapsulation();
                varargout{1} = returnValue.value;
            end
            future = obj.iceInvokeAsync('getUserInfo', 0, true, os_, 1, @unmarshal, User.RegistryPrx.getUserInfo_ex_, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::User::Registry';
        end

        function r = ice_read(is)
            r = is.readProxy('User.RegistryPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::User::Registry.
            %
            %   Input Arguments
            %     p - The proxy to check.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %     context - The request context (optional).
            %       dictionary(string, string) scalar
            %
            %   Output Arguments
            %     r - A User.RegistryPrx scalar if the target object implements Slice interface 
            %       ::User::Registry; otherwise, an empty array of User.RegistryPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, User.RegistryPrx.ice_staticId(), 'User.RegistryPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a User.RegistryPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new User.RegistryPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'User.RegistryPrx', varargin{:});
        end
    end

    properties (Constant, Access = private)
        getUserInfo_ex_ = { 'Core.ArgumentException' }
    end
end
