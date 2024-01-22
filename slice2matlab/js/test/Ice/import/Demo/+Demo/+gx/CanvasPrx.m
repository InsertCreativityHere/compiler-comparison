% CanvasPrx   Summary of CanvasPrx
%
% CanvasPrx Methods:
%   paintSquare
%   paintSquareAsync
%   paintCircle
%   paintCircleAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Canvas.ice by slice2matlab version 3.8.0-alpha.0

classdef CanvasPrx < Ice.ObjectPrx
    methods
        function paintSquare(obj, square, varargin)
            % paintSquare
            %
            % Parameters:
            %   square (Demo.gx.Square)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            Demo.gx.Square.ice_write(os_, square);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('paintSquare', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = paintSquareAsync(obj, square, varargin)
            % paintSquareAsync
            %
            % Parameters:
            %   square (Demo.gx.Square)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Demo.gx.Square.ice_write(os_, square);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('paintSquare', 0, false, os_, 0, [], {}, varargin{:});
        end
        function paintCircle(obj, circle, varargin)
            % paintCircle
            %
            % Parameters:
            %   circle (Demo.gx.Circle)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            Demo.gx.Circle.ice_write(os_, circle);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('paintCircle', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = paintCircleAsync(obj, circle, varargin)
            % paintCircleAsync
            %
            % Parameters:
            %   circle (Demo.gx.Circle)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Demo.gx.Circle.ice_write(os_, circle);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('paintCircle', 0, false, os_, 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Demo::gx::Canvas';
        end
        function r = ice_read(is)
            r = is.readProxy('Demo.gx.CanvasPrx');
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
            % Returns (Demo.gx.CanvasPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Demo.gx.CanvasPrx.ice_staticId(), 'Demo.gx.CanvasPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Demo.gx.CanvasPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Demo.gx.CanvasPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = CanvasPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
end
