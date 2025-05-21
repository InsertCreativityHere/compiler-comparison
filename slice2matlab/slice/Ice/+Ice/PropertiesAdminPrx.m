% PropertiesAdminPrx   Summary of PropertiesAdminPrx
%
% Provides remote access to the properties of a communicator.
%
% PropertiesAdminPrx Methods:
%   getProperty - Gets a property by key.
%   getPropertyAsync - Gets a property by key.
%   getPropertiesForPrefix - Gets all properties whose keys begin with @p prefix.
%   getPropertiesForPrefixAsync - Gets all properties whose keys begin with @p prefix.
%   setProperties - Updates the communicator's properties with the given property set.
%   setPropertiesAsync - Updates the communicator's properties with the given property set.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc.
% Generated from PropertiesAdmin.ice by slice2matlab version 3.8.0-alpha.0

classdef PropertiesAdminPrx < Ice.ObjectPrx
    methods
        function result = getProperty(obj, key, varargin)
            % getProperty   Gets a property by key.
            %
            % Parameters:
            %   key (char) - The property key.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (char) - The property value. This value is empty if the property is not set.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(key);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getProperty', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = is_.readString();
            is_.endEncapsulation();
        end
        function r_ = getPropertyAsync(obj, key, varargin)
            % getPropertyAsync   Gets a property by key.
            %
            % Parameters:
            %   key (char) - The property key.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(key);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readString();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getProperty', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function result = getPropertiesForPrefix(obj, prefix, varargin)
            % getPropertiesForPrefix   Gets all properties whose keys begin with @p prefix. If @p prefix is the empty string then all properties
            % are returned.
            %
            % Parameters:
            %   prefix (char) - The prefix to search for. May be empty.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (containers.Map) - The matching property set.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(prefix);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('getPropertiesForPrefix', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            result = Ice.PropertyDict.read(is_);
            is_.endEncapsulation();
        end
        function r_ = getPropertiesForPrefixAsync(obj, prefix, varargin)
            % getPropertiesForPrefixAsync   Gets all properties whose keys begin with @p prefix. If @p prefix is the empty string then all properties
            % are returned.
            %
            % Parameters:
            %   prefix (char) - The prefix to search for. May be empty.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(prefix);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = Ice.PropertyDict.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('getPropertiesForPrefix', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
        function setProperties(obj, newProperties, varargin)
            % setProperties   Updates the communicator's properties with the given property set. If an entry in @p newProperties matches
            % the name of an existing property, that property's value is replaced with the new value. If the new value is
            % the empty string, the property is removed. Existing properties that are not modified or removed by the
            % entries in @p newProperties are not affected by this update.
            %
            % Parameters:
            %   newProperties (containers.Map) - Properties to add, change, or remove.
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            Ice.PropertyDict.write(os_, newProperties);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('setProperties', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = setPropertiesAsync(obj, newProperties, varargin)
            % setPropertiesAsync   Updates the communicator's properties with the given property set. If an entry in @p newProperties matches
            % the name of an existing property, that property's value is replaced with the new value. If the new value is
            % the empty string, the property is removed. Existing properties that are not modified or removed by the
            % entries in @p newProperties are not affected by this update.
            %
            % Parameters:
            %   newProperties (containers.Map) - Properties to add, change, or remove.
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Ice.PropertyDict.write(os_, newProperties);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('setProperties', 0, false, os_, 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Ice::PropertiesAdmin';
        end
        function r = ice_read(is)
            r = is.readProxy('Ice.PropertiesAdminPrx');
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
            % Returns (Ice.PropertiesAdminPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Ice.PropertiesAdminPrx.ice_staticId(), 'Ice.PropertiesAdminPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Ice.PropertiesAdminPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Ice.PropertiesAdminPrx', varargin{:});
        end
    end
end
