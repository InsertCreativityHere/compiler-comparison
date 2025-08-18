classdef CallbackPrx < Ice.ObjectPrx
    %CALLBACKPRX
    %
    %   Creation
    %     Syntax
    %       prx = Test.CallbackPrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   CallbackPrx Methods:
    %     datagram
    %     datagramAsync - An asynchronous datagram.
    %     getCount
    %     getCountAsync - An asynchronous getCount.
    %     getDatagramCount
    %     getDatagramCountAsync - An asynchronous getDatagramCount.
    %     ping
    %     pingAsync - An asynchronous ping.
    %
    %   CallbackPrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::Test::Callback.
    %     uncheckedCast - Creates a CallbackPrx from another proxy without any validation.
    %
    %   Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function ping(obj, context)
            %PING
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.CallbackPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('ping', 0, false, [], false, {}, context);
        end

        function future = pingAsync(obj, context)
            %PINGASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also ping, Ice.Future.
            
            arguments
                obj (1, 1) Test.CallbackPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('ping', 0, false, [], 0, [], {}, context);
        end

        function returnValue = getCount(obj, context)
            %GETCOUNT
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int32 scalar
            
            arguments
                obj (1, 1) Test.CallbackPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getCount', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readInt();
            is_.endEncapsulation();
        end

        function future = getCountAsync(obj, context)
            %GETCOUNTASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getCount, Ice.Future.
            
            arguments
                obj (1, 1) Test.CallbackPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getCount', 0, true, [], 1, @unmarshal, {}, context);
        end

        function datagram(obj, context)
            %DATAGRAM
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            
            arguments
                obj (1, 1) Test.CallbackPrx
                context (1, 1) dictionary = dictionary
            end
            obj.iceInvoke('datagram', 0, false, [], false, {}, context);
        end

        function future = datagramAsync(obj, context)
            %DATAGRAMASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also datagram, Ice.Future.
            
            arguments
                obj (1, 1) Test.CallbackPrx
                context (1, 1) dictionary = dictionary
            end
            future = obj.iceInvokeAsync('datagram', 0, false, [], 0, [], {}, context);
        end

        function returnValue = getDatagramCount(obj, context)
            %GETDATAGRAMCOUNT
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       int32 scalar
            
            arguments
                obj (1, 1) Test.CallbackPrx
                context (1, 1) dictionary = dictionary
            end
            is_ = obj.iceInvoke('getDatagramCount', 0, true, [], true, {}, context);
            is_.startEncapsulation();
            returnValue = is_.readInt();
            is_.endEncapsulation();
        end

        function future = getDatagramCountAsync(obj, context)
            %GETDATAGRAMCOUNTASYNC
            %
            %   Input Arguments
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also getDatagramCount, Ice.Future.
            
            arguments
                obj (1, 1) Test.CallbackPrx
                context (1, 1) dictionary = dictionary
            end
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('getDatagramCount', 0, true, [], 1, @unmarshal, {}, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::Test::Callback';
        end

        function r = ice_read(is)
            r = is.readProxy('Test.CallbackPrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::Test::Callback.
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
            %     r - A Test.CallbackPrx scalar if the target object implements Slice interface 
            %       ::Test::Callback; otherwise, an empty array of Test.CallbackPrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.CallbackPrx.ice_staticId(), 'Test.CallbackPrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a Test.CallbackPrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new Test.CallbackPrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.CallbackPrx', varargin{:});
        end
    end
end
