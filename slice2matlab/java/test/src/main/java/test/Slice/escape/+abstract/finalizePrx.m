
% Copyright (c) ZeroC, Inc.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef finalizePrx < abstract.defaultPrx & abstract.catchPrx
    methods
        function result = notify(obj, notifyAll, null, package, return, super, varargin)
            os_ = obj.iceStartWriteParams([]);
            abstract.break.ice_write(os_, notifyAll);
            os_.writeValue(null);
            os_.writeProxy(package);
            os_.writeProxy(return);
            os_.writeInt(super);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('notify', 0, true, os_, true, abstract.finalizePrx.notify_ex_, varargin{:});
            is_.startEncapsulation();
            result = abstract.assert.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = notifyAsync(obj, notifyAll, null, package, return, super, varargin)
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
                result = abstract.assert.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('notify', 0, true, os_, 1, @unmarshal, abstract.finalizePrx.notify_ex_, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::abstract::finalize';
        end
        function r = ice_read(is)
            r = is.readProxy('abstract.finalizePrx');
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
            % Returns (abstract.finalizePrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, abstract.finalizePrx.ice_staticId(), 'abstract.finalizePrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (abstract.finalizePrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'abstract.finalizePrx', varargin{:});
        end
    end
    properties(Constant,Access=private)
        notify_ex_ = { 'abstract.clone', 'abstract.hashCode' }
    end
end
