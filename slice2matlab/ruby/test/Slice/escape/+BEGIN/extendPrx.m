% extendPrx   Summary of extendPrx
%
% extendPrx Methods:
%   for_
%   forAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.7.10

classdef extendPrx < Ice.ObjectPrx
    methods
        function result = for_(obj, freeze, hash, if_, inspect, method, methods_, varargin)
            % for_
            %
            % Parameters:
            %   freeze (BEGIN.display)
            %   hash (BEGIN.elsifPrx)
            %   if_ (BEGIN.breakPrx)
            %   inspect (BEGIN.display)
            %   method (BEGIN.elsifPrx)
            %   methods_ (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (BEGIN.END)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(freeze);
            os_.writeProxy(hash);
            os_.writeProxy(if_);
            os_.writeValue(inspect);
            os_.writeProxy(method);
            os_.writeInt(methods_);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('for', 0, true, os_, true, BEGIN.extendPrx.for_ex_, varargin{:});
            is_.startEncapsulation();
            result = BEGIN.END.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = forAsync(obj, freeze, hash, if_, inspect, method, methods_, varargin)
            % forAsync
            %
            % Parameters:
            %   freeze (BEGIN.display)
            %   hash (BEGIN.elsifPrx)
            %   if_ (BEGIN.breakPrx)
            %   inspect (BEGIN.display)
            %   method (BEGIN.elsifPrx)
            %   methods_ (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(freeze);
            os_.writeProxy(hash);
            os_.writeProxy(if_);
            os_.writeValue(inspect);
            os_.writeProxy(method);
            os_.writeInt(methods_);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = BEGIN.END.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('for', 0, true, os_, 1, @unmarshal, BEGIN.extendPrx.for_ex_, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::BEGIN::extend';
        end
        function r = ice_read(is)
            r = is.readProxy('BEGIN.extendPrx');
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
            % Returns (BEGIN.extendPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, BEGIN.extendPrx.ice_staticId(), 'BEGIN.extendPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (BEGIN.extendPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'BEGIN.extendPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = extendPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
    properties(Constant,Access=private)
        for_ex_ = { 'BEGIN.nil' }
    end
end
