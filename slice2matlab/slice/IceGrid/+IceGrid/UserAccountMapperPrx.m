classdef UserAccountMapperPrx < Ice.ObjectPrx
    %USERACCOUNTMAPPERPRX Maps user strings in server descriptors to actual user account names. You can configure the user account mapper
    %   of an IceGrid node with the property |IceGrid.Node.UserAccountMapper|.
    %
    %   Creation
    %     Syntax
    %       prx = IceGrid.UserAccountMapperPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   UserAccountMapperPrx Methods:
    %     getUserAccount - Gets the name of the user account for the given user.
    %     getUserAccountAsync - An asynchronous getUserAccount.
    %
    %   UserAccountMapperPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::IceGrid::UserAccountMapper.
    %     uncheckedCast - Creates a UserAccountMapperPrx from another proxy without any validation.
    %
    %   Generated from UserAccountMapper.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function returnValue = getUserAccount(obj, user, context)
            %GETUSERACCOUNT Gets the name of the user account for the given user. This is used by IceGrid nodes to figure out the user
            %   account to use to run servers.
            %
            %   Input Arguments
            %     user - The value of the server descriptor's |user| attribute. When this attribute is not defined, and
            %       the server's activation mode is |session|, the default value for |user| is the session identifier.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - The user account name.
            %       character vector
            %
            %   Exceptions
            %     IceGrid.UserAccountNotFoundException - Thrown when no user account is found for the given user.
            
            arguments
                obj (1, 1) IceGrid.UserAccountMapperPrx
                user (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(user);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getUserAccount', 0, true, os_, true, IceGrid.UserAccountMapperPrx.getUserAccount_ex_, context);
            is_.startEncapsulation();
            returnValue = is_.readString();
            is_.endEncapsulation();
        end

        function future = getUserAccountAsync(obj, user, context)
            %GETUSERACCOUNTASYNC Gets the name of the user account for the given user. This is used by IceGrid nodes to figure out the user
            %   account to use to run servers.
            %
            %   Input Arguments
            %     user - The value of the server descriptor's |user| attribute. When this attribute is not defined, and
            %       the server's activation mode is |session|, the default value for |user| is the session identifier.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getUserAccount, Ice.Future.
            
            arguments
                obj (1, 1) IceGrid.UserAccountMapperPrx
                user (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(user);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readString();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getUserAccount', 0, true, os_, 1, @unmarshal, IceGrid.UserAccountMapperPrx.getUserAccount_ex_, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::IceGrid::UserAccountMapper';
        end

        function r = ice_read(is)
            r = is.readProxy('IceGrid.UserAccountMapperPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::IceGrid::UserAccountMapper.
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
            %     r - A IceGrid.UserAccountMapperPrx scalar if the target object implements Slice interface 
            %       ::IceGrid::UserAccountMapper; otherwise, an empty array of IceGrid.UserAccountMapperPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, IceGrid.UserAccountMapperPrx.ice_staticId(), 'IceGrid.UserAccountMapperPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a IceGrid.UserAccountMapperPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new IceGrid.UserAccountMapperPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceGrid.UserAccountMapperPrx', varargin{:});
        end
    end

    properties (Constant, Access = private)
        getUserAccount_ex_ = { 'IceGrid.UserAccountNotFoundException' }
    end
end
