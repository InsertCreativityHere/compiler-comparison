% casePrx   Summary of casePrx
%
% casePrx Methods:
%   catch_
%   catchAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef casePrx < Ice.ObjectPrx
    methods
        function continue_ = catch_(obj, checked, varargin)
            % catch_
            %
            % Parameters:
            %   checked (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (int32)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(checked);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('catch', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            continue_ = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = catchAsync(obj, checked, varargin)
            % catchAsync
            %
            % Parameters:
            %   checked (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(checked);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                continue_ = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = continue_;
            end
            r_ = obj.iceInvokeAsync('catch', 0, true, os_, 1, @unmarshal, {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::await::case';
        end
        function r = ice_read(is)
            r = is.readProxy('await.casePrx');
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
            % Returns (await.casePrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, await.casePrx.ice_staticId(), 'await.casePrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (await.casePrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'await.casePrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = casePrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
end
