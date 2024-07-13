% TestIntfPrx   Summary of TestIntfPrx
%
% TestIntfPrx Methods:
%   op
%   opAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef TestIntfPrx < Ice.ObjectPrx
    methods
        function [result, j] = op(obj, i, varargin)
            % op
            %
            % Parameters:
            %   i (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (int32)
            %   j (int32)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('op', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            j = is_.readInt();
            result = is_.readInt();
            is_.endEncapsulation();
        end
        function r_ = opAsync(obj, i, varargin)
            % opAsync
            %
            % Parameters:
            %   i (int32)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeInt(i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                j = is_.readInt();
                result = is_.readInt();
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = j;
            end
            r_ = obj.iceInvokeAsync('op', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Outer::Inner::TestIntf';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.Outer.Inner.TestIntfPrx');
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
            % Returns (Test.Outer.Inner.TestIntfPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.Outer.Inner.TestIntfPrx.ice_staticId(), 'Test.Outer.Inner.TestIntfPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.Outer.Inner.TestIntfPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.Outer.Inner.TestIntfPrx', varargin{:});
        end
    end
end
