% forPrx   Summary of forPrx
%
% forPrx Methods:
%   foreach
%   foreachAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef forPrx < Ice.ObjectPrx
    methods
        function result = foreach(obj, if_, global_, include, return_, list, new, static, varargin)
            % foreach
            %
            % Parameters:
            %   if_ (and.breakPrx)
            %   global_ (and.echo)
            %   include (and.functionPrx)
            %   return_ (and.diePrx)
            %   list (and.enddeclarePrx)
            %   new (int32)
            %   static (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (and.array)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(if_);
            os_.writeValue(global_);
            os_.writeProxy(include);
            os_.writeProxy(return_);
            os_.writeProxy(list);
            os_.writeInt(new);
            os_.writeInt(static);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('foreach', 0, true, os_, true, and.forPrx.foreach_ex_, varargin{:});
            is_.startEncapsulation();
            result = and.array.ice_read(is_);
            is_.endEncapsulation();
        end
        function r_ = foreachAsync(obj, if_, global_, include, return_, list, new, static, varargin)
            % foreachAsync
            %
            % Parameters:
            %   if_ (and.breakPrx)
            %   global_ (and.echo)
            %   include (and.functionPrx)
            %   return_ (and.diePrx)
            %   list (and.enddeclarePrx)
            %   new (int32)
            %   static (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(if_);
            os_.writeValue(global_);
            os_.writeProxy(include);
            os_.writeProxy(return_);
            os_.writeProxy(list);
            os_.writeInt(new);
            os_.writeInt(static);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = and.array.ice_read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('foreach', 0, true, os_, 1, @unmarshal, and.forPrx.foreach_ex_, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::and::for';
        end
        function r = ice_read(is)
            r = is.readProxy('and.forPrx');
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
            % Returns (and.forPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, and.forPrx.ice_staticId(), 'and.forPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (and.forPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'and.forPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = forPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
    properties(Constant,Access=private)
        foreach_ex_ = { 'and.endwhile', 'and.endif' }
    end
end
