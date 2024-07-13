% functionPrx   Summary of functionPrx
%
% functionPrx Methods:
%   continue_
%   continueAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef functionPrx < Ice.ObjectPrx
    methods
        function continue_(obj, declare, default, varargin)
            % continue_
            %
            % Parameters:
            %   declare (int32)
            %   default (int32)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(declare);
            os_.writeInt(default);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('continue', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = continueAsync(obj, declare, default, varargin)
            % continueAsync
            %
            % Parameters:
            %   declare (int32)
            %   default (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(declare);
            os_.writeInt(default);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('continue', 0, false, os_, 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::and::function';
        end
        function r = ice_read(is)
            r = is.readProxy('and.functionPrx');
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
            % Returns (and.functionPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, and.functionPrx.ice_staticId(), 'and.functionPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (and.functionPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'and.functionPrx', varargin{:});
        end
    end
end
