classdef finalizePrx < abstract.defaultPrx & abstract.catchPrx
    %FINALIZEPRX
    %
    %   Creation
    %     Syntax
    %       prx = abstract.finalizePrx(communicator, proxyString)
    %
    %     Input Arguments
    %       communicator - The associated communicator.
    %         Ice.Communicator scalar
    %       proxyString - A stringified proxy, such as 'name:tcp -p localhost -p 4061'.
    %         character vector
    %
    %   finalizePrx Methods:
    %     notify
    %     notifyAsync - An asynchronous notify.
    %
    %   finalizePrx Static Methods:
    %     checkedCast - Contacts the remote server to check if the target object implements Slice interface ::abstract::finalize.
    %     uncheckedCast - Creates a finalizePrx from another proxy without any validation.
    %
    %   Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

    methods
        function returnValue = notify(obj, notifyAll, null, package, return, super, context)
            %NOTIFY
            %
            %   Input Arguments
            %     notifyAll
            %       abstract.break scalar
            %     null
            %       abstract.notify scalar | empty array of abstract.notify
            %     package
            %       abstract.finalizePrx scalar | empty array of abstract.finalizePrx
            %     return
            %       abstract.defaultPrx scalar | empty array of abstract.defaultPrx
            %     super
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     returnValue
            %       abstract.assert scalar
            %
            %   Exceptions
            %     abstract.hashCode
            %     abstract.clone
            
            arguments
                obj (1, 1) abstract.finalizePrx
                notifyAll (1, 1) abstract.break
                null abstract.notify {mustBeScalarOrEmpty}
                package abstract.finalizePrx {mustBeScalarOrEmpty}
                return abstract.defaultPrx {mustBeScalarOrEmpty}
                super (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            abstract.break.ice_write(os_, notifyAll);
            os_.writeValue(null);
            os_.writeProxy(package);
            os_.writeProxy(return);
            os_.writeInt(super);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('notify', 0, true, os_, true, abstract.finalizePrx.notify_ex_, context);
            is_.startEncapsulation();
            returnValue = abstract.assert.ice_read(is_);
            is_.endEncapsulation();
        end

        function future = notifyAsync(obj, notifyAll, null, package, return, super, context)
            %NOTIFYASYNC
            %
            %   Input Arguments
            %     notifyAll
            %       abstract.break scalar
            %     null
            %       abstract.notify scalar | empty array of abstract.notify
            %     package
            %       abstract.finalizePrx scalar | empty array of abstract.finalizePrx
            %     return
            %       abstract.defaultPrx scalar | empty array of abstract.defaultPrx
            %     super
            %       int32 scalar
            %     context - The request context.
            %       unconfigured dictionary (default) | dictionary(string, string) scalar
            %
            %   Output Arguments
            %     future - A future that will be completed with the result of the invocation.
            %       Ice.Future scalar
            %
            %   See also notify, Ice.Future.
            
            arguments
                obj (1, 1) abstract.finalizePrx
                notifyAll (1, 1) abstract.break
                null abstract.notify {mustBeScalarOrEmpty}
                package abstract.finalizePrx {mustBeScalarOrEmpty}
                return abstract.defaultPrx {mustBeScalarOrEmpty}
                super (1, 1) int32
                context (1, 1) dictionary = dictionary
            end
            os_ = obj.iceStartWriteParams([]);
            abstract.break.ice_write(os_, notifyAll);
            os_.writeValue(null);
            os_.writeProxy(package);
            os_.writeProxy(return);
            os_.writeInt(super);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                returnValue = abstract.assert.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = returnValue;
            end
            future = obj.iceInvokeAsync('notify', 0, true, os_, 1, @unmarshal, abstract.finalizePrx.notify_ex_, context);
        end
    end

    methods (Static)
        function id = ice_staticId()
            id = '::abstract::finalize';
        end

        function r = ice_read(is)
            r = is.readProxy('abstract.finalizePrx');
        end

        function r = checkedCast(p, varargin)
            %CHECKEDCAST Contacts the remote server to check if the target object implements Slice interface ::abstract::finalize.
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
            %     r - A abstract.finalizePrx scalar if the target object implements Slice interface 
            %       ::abstract::finalize; otherwise, an empty array of abstract.finalizePrx.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin % facet or context, or both, or neither
            end
            r = Ice.ObjectPrx.iceCheckedCast(p, abstract.finalizePrx.ice_staticId(), 'abstract.finalizePrx', varargin{:});
        end

        function r = uncheckedCast(p, varargin)
            %UNCHECKEDCAST Creates a abstract.finalizePrx from another proxy without any validation.
            %
            %   Input Arguments
            %     p - The source proxy.
            %       Ice.ObjectPrx scalar | empty array of Ice.ObjectPrx
            %     facet - The desired facet (optional).
            %       character vector
            %
            %   Output Arguments
            %     r - A new abstract.finalizePrx scalar, or an empty array when p is an empty array.
            %
            arguments
                p Ice.ObjectPrx {mustBeScalarOrEmpty}
            end
            arguments (Repeating)
                varargin (1, :) char
            end
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'abstract.finalizePrx', varargin{:});
        end
    end

    properties (Constant, Access = private)
        notify_ex_ = { 'abstract.clone', 'abstract.hashCode' }
    end
end
