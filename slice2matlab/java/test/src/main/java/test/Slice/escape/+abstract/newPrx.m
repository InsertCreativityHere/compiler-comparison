% newPrx   Summary of newPrx
%
% newPrx Methods:
%   notify_
%   notifyAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.7.10

classdef newPrx < Ice.ObjectPrx
    methods
        function result = notify_(obj, notifyAll, null, package, public, return_, static, strictfp, super, varargin)
            % notify_
            %
            % Parameters:
            %   notifyAll (abstract.break_)
            %   null (abstract.else_)
            %   package (abstract.finalizePrx)
            %   public (abstract.catchPrx)
            %   return_ (abstract.defaultPrx)
            %   static (int32)
            %   strictfp (int32)
            %   super (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (abstract.assert)
            
            os_ = obj.iceStartWriteParams([]);
            abstract.break_.ice_write(os_, notifyAll);
            os_.writeValue(null);
            os_.writeProxy(package);
            os_.writeProxy(public);
            os_.writeProxy(return_);
            os_.writeInt(static);
            os_.writeInt(strictfp);
            os_.writeInt(super);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('notify', 0, true, os_, true, abstract.newPrx.notify_ex_, varargin{:});
            is_.startEncapsulation();
            result = abstract.assert.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = notifyAsync(obj, notifyAll, null, package, public, return_, static, strictfp, super, varargin)
            % notifyAsync
            %
            % Parameters:
            %   notifyAll (abstract.break_)
            %   null (abstract.else_)
            %   package (abstract.finalizePrx)
            %   public (abstract.catchPrx)
            %   return_ (abstract.defaultPrx)
            %   static (int32)
            %   strictfp (int32)
            %   super (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            abstract.break_.ice_write(os_, notifyAll);
            os_.writeValue(null);
            os_.writeProxy(package);
            os_.writeProxy(public);
            os_.writeProxy(return_);
            os_.writeInt(static);
            os_.writeInt(strictfp);
            os_.writeInt(super);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = abstract.assert.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('notify', 0, true, os_, 1, @unmarshal, abstract.newPrx.notify_ex_, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::abstract::new';
        end
        function r = ice_read(is)
            r = is.readProxy('abstract.newPrx');
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
            % Returns (abstract.newPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, abstract.newPrx.ice_staticId(), 'abstract.newPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (abstract.newPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'abstract.newPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = newPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
    properties(Constant,Access=private)
        notify_ex_ = { 'abstract.import', 'abstract.hashCode' }
    end
end