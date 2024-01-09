% implicitPrx   Summary of implicitPrx
%
% implicitPrx Methods:
%   in
%   inAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.7.10

classdef implicitPrx < Ice.ObjectPrx
    methods
        function result = in(obj, internal, is, lock, namespace, new, null, override, params, private, varargin)
            % in
            %
            % Parameters:
            %   internal (abstract.break_)
            %   is (abstract.delegate)
            %   lock (abstract.explicitPrx)
            %   namespace (abstract.casePrx)
            %   new (abstract.decimalPrx)
            %   null (abstract.delegate)
            %   override (int32)
            %   params (int32)
            %   private (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (abstract.as)
            
            os_ = obj.iceStartWriteParams([]);
            abstract.break_.ice_write(os_, internal);
            os_.writeValue(is);
            os_.writeProxy(lock);
            os_.writeProxy(namespace);
            os_.writeProxy(new);
            os_.writeValue(null);
            os_.writeInt(override);
            os_.writeInt(params);
            os_.writeInt(private);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('in', 0, true, os_, true, abstract.implicitPrx.in_ex_, varargin{:});
            is_.startEncapsulation();
            result = abstract.as.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = inAsync(obj, internal, is, lock, namespace, new, null, override, params, private, varargin)
            % inAsync
            %
            % Parameters:
            %   internal (abstract.break_)
            %   is (abstract.delegate)
            %   lock (abstract.explicitPrx)
            %   namespace (abstract.casePrx)
            %   new (abstract.decimalPrx)
            %   null (abstract.delegate)
            %   override (int32)
            %   params (int32)
            %   private (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            abstract.break_.ice_write(os_, internal);
            os_.writeValue(is);
            os_.writeProxy(lock);
            os_.writeProxy(namespace);
            os_.writeProxy(new);
            os_.writeValue(null);
            os_.writeInt(override);
            os_.writeInt(params);
            os_.writeInt(private);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = abstract.as.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('in', 0, true, os_, 1, @unmarshal, abstract.implicitPrx.in_ex_, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::abstract::implicit';
        end
        function r = ice_read(is)
            r = is.readProxy('abstract.implicitPrx');
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
            % Returns (abstract.implicitPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, abstract.implicitPrx.ice_staticId(), 'abstract.implicitPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (abstract.implicitPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'abstract.implicitPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = implicitPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
    properties(Constant,Access=private)
        in_ex_ = { 'abstract.foreach', 'abstract.fixed' }
    end
end
