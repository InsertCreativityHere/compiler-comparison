classdef PropertiesAdminPrx < Ice.ObjectPrx
    %PROPERTIESADMINPRX Provides remote access to the properties of a communicator.
    %
    %   Creation
    %     Syntax
    %       prx = Ice.PropertiesAdminPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   PropertiesAdminPrx Methods:
    %     getPropertiesForPrefix - Gets all properties whose keys begin with |prefix|.
    %     getPropertiesForPrefixAsync - An asynchronous getPropertiesForPrefix.
    %     getProperty - Gets a property by key.
    %     getPropertyAsync - An asynchronous getProperty.
    %     setProperties - Updates the communicator's properties with the given property set.
    %     setPropertiesAsync - An asynchronous setProperties.
    %
    %   PropertiesAdminPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Ice::PropertiesAdmin.
    %     uncheckedCast - Creates a PropertiesAdminPrx from another proxy without any validation.
    %
    %   Generated from PropertiesAdmin.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function returnValue = getProperty(obj, key, context)
            %GETPROPERTY Gets a property by key.
            %
            %   Input Arguments
            %     key - The property key.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - The property value. This value is empty if the property is not set.
            %       character vector
            
            arguments
                obj (1, 1) Ice.PropertiesAdminPrx
                key (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(key);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getProperty', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readString();
            is_.endEncapsulation();
        end

        function future = getPropertyAsync(obj, key, context)
            %GETPROPERTYASYNC Gets a property by key.
            %
            %   Input Arguments
            %     key - The property key.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getProperty, Ice.Future.
            
            arguments
                obj (1, 1) Ice.PropertiesAdminPrx
                key (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(key);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readString();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getProperty', 0, true, os_, 1, @unmarshal, {}, context);
        end

        function returnValue = getPropertiesForPrefix(obj, prefix, context)
            %GETPROPERTIESFORPREFIX Gets all properties whose keys begin with |prefix|. If |prefix| is the empty string then all properties
            %   are returned.
            %
            %   Input Arguments
            %     prefix - The prefix to search for. May be empty.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue - The matching property set.
            %       string, string) scalar
            
            arguments
                obj (1, 1) Ice.PropertiesAdminPrx
                prefix (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(prefix);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getPropertiesForPrefix', 0, true, os_, true, {}, context);
            is_.startEncapsulation();
            returnValue = Ice.PropertyDict.read(is_);
            is_.endEncapsulation();
        end

        function future = getPropertiesForPrefixAsync(obj, prefix, context)
            %GETPROPERTIESFORPREFIXASYNC Gets all properties whose keys begin with |prefix|. If |prefix| is the empty string then all properties
            %   are returned.
            %
            %   Input Arguments
            %     prefix - The prefix to search for. May be empty.
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getPropertiesForPrefix, Ice.Future.
            
            arguments
                obj (1, 1) Ice.PropertiesAdminPrx
                prefix (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(prefix);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = Ice.PropertyDict.read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getPropertiesForPrefix', 0, true, os_, 1, @unmarshal, {}, context);
        end

        function setProperties(obj, newProperties, context)
            %SETPROPERTIES Updates the communicator's properties with the given property set. If an entry in |newProperties| matches
            %   the name of an existing property, that property's value is replaced with the new value. If the new value is
            %   the empty string, the property is removed. Existing properties that are not modified or removed by the
            %   entries in |newProperties| are not affected by this update.
            %
            %   Input Arguments
            %     newProperties - Properties to add, change, or remove.
            %       string, string) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Ice.PropertiesAdminPrx
                newProperties (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Ice.PropertyDict.write(os_, newProperties);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('setProperties', 0, false, os_, false, {}, context);
        end

        function future = setPropertiesAsync(obj, newProperties, context)
            %SETPROPERTIESASYNC Updates the communicator's properties with the given property set. If an entry in |newProperties| matches
            %   the name of an existing property, that property's value is replaced with the new value. If the new value is
            %   the empty string, the property is removed. Existing properties that are not modified or removed by the
            %   entries in |newProperties| are not affected by this update.
            %
            %   Input Arguments
            %     newProperties - Properties to add, change, or remove.
            %       string, string) scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also setProperties, Ice.Future.
            
            arguments
                obj (1, 1) Ice.PropertiesAdminPrx
                newProperties (1, 1) dictionary
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            Ice.PropertyDict.write(os_, newProperties);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('setProperties', 0, false, os_, 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Ice::PropertiesAdmin';
        end

        function r = ice_read(is)
            r = is.readProxy('Ice.PropertiesAdminPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Ice::PropertiesAdmin.
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
            %     r - A Ice.PropertiesAdminPrx scalar if the target object implements Slice interface 
            %       ::Ice::PropertiesAdmin; otherwise, an empty array of Ice.PropertiesAdminPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Ice.PropertiesAdminPrx.ice_staticId(), 'Ice.PropertiesAdminPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Ice.PropertiesAdminPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Ice.PropertiesAdminPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Ice.PropertiesAdminPrx', varargin{:});
        end
    end
end
