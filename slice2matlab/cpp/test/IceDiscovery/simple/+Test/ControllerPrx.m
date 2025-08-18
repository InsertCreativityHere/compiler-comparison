classdef ControllerPrx < Ice.ObjectPrx
    %CONTROLLERPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.ControllerPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   ControllerPrx Methods:
    %     activateObjectAdapter
    %     activateObjectAdapterAsync - An asynchronous activateObjectAdapter.
    %     addObject
    %     addObjectAsync - An asynchronous addObject.
    %     deactivateObjectAdapter
    %     deactivateObjectAdapterAsync - An asynchronous deactivateObjectAdapter.
    %     removeObject
    %     removeObjectAsync - An asynchronous removeObject.
    %     shutdown
    %     shutdownAsync - An asynchronous shutdown.
    %
    %   ControllerPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::Controller.
    %     uncheckedCast - Creates a ControllerPrx from another proxy without any validation.
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function activateObjectAdapter(obj, name, adapterId, replicaGroupId, context)
            %ACTIVATEOBJECTADAPTER
            %
            %   Input Arguments
            %     name
            %       character vector
            %     adapterId
            %       character vector
            %     replicaGroupId
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.ControllerPrx
                name (1, :) char
                adapterId (1, :) char
                replicaGroupId (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            os_.writeString(adapterId);
            os_.writeString(replicaGroupId);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('activateObjectAdapter', 0, false, os_, false, {}, context);
        end

        function future = activateObjectAdapterAsync(obj, name, adapterId, replicaGroupId, context)
            %ACTIVATEOBJECTADAPTERASYNC
            %
            %   Input Arguments
            %     name
            %       character vector
            %     adapterId
            %       character vector
            %     replicaGroupId
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also activateObjectAdapter, Ice.Future.
            
            arguments
                obj (1, 1) Test.ControllerPrx
                name (1, :) char
                adapterId (1, :) char
                replicaGroupId (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            os_.writeString(adapterId);
            os_.writeString(replicaGroupId);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('activateObjectAdapter', 0, false, os_, 0, [], {}, context);
        end

        function deactivateObjectAdapter(obj, name, context)
            %DEACTIVATEOBJECTADAPTER
            %
            %   Input Arguments
            %     name
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.ControllerPrx
                name (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('deactivateObjectAdapter', 0, false, os_, false, {}, context);
        end

        function future = deactivateObjectAdapterAsync(obj, name, context)
            %DEACTIVATEOBJECTADAPTERASYNC
            %
            %   Input Arguments
            %     name
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also deactivateObjectAdapter, Ice.Future.
            
            arguments
                obj (1, 1) Test.ControllerPrx
                name (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(name);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('deactivateObjectAdapter', 0, false, os_, 0, [], {}, context);
        end

        function addObject(obj, oaName, id, context)
            %ADDOBJECT
            %
            %   Input Arguments
            %     oaName
            %       character vector
            %     id
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.ControllerPrx
                oaName (1, :) char
                id (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(oaName);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('addObject', 0, false, os_, false, {}, context);
        end

        function future = addObjectAsync(obj, oaName, id, context)
            %ADDOBJECTASYNC
            %
            %   Input Arguments
            %     oaName
            %       character vector
            %     id
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also addObject, Ice.Future.
            
            arguments
                obj (1, 1) Test.ControllerPrx
                oaName (1, :) char
                id (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(oaName);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('addObject', 0, false, os_, 0, [], {}, context);
        end

        function removeObject(obj, oaName, id, context)
            %REMOVEOBJECT
            %
            %   Input Arguments
            %     oaName
            %       character vector
            %     id
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.ControllerPrx
                oaName (1, :) char
                id (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(oaName);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('removeObject', 0, false, os_, false, {}, context);
        end

        function future = removeObjectAsync(obj, oaName, id, context)
            %REMOVEOBJECTASYNC
            %
            %   Input Arguments
            %     oaName
            %       character vector
            %     id
            %       character vector
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also removeObject, Ice.Future.
            
            arguments
                obj (1, 1) Test.ControllerPrx
                oaName (1, :) char
                id (1, :) char
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(oaName);
            os_.writeString(id);
            obj.iceEndWriteParams(os_);
            future = obj.iceInvokeAsync('removeObject', 0, false, os_, 0, [], {}, context);
        end

        function shutdown(obj, context)
            %SHUTDOWN
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.ControllerPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('shutdown', 0, false, [], false, {}, context);
        end

        function future = shutdownAsync(obj, context)
            %SHUTDOWNASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also shutdown, Ice.Future.
            
            arguments
                obj (1, 1) Test.ControllerPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('shutdown', 0, false, [], 0, [], {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::Controller';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.ControllerPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::Controller.
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
            %     r - A Test.ControllerPrx scalar if the target object implements Slice interface 
            %       ::Test::Controller; otherwise, an empty array of Test.ControllerPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.ControllerPrx.ice_staticId(), 'Test.ControllerPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.ControllerPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.ControllerPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.ControllerPrx', varargin{:});
        end
    end
end
