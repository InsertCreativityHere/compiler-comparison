% MyClassPrx   Summary of MyClassPrx
%
% MyClassPrx Methods:
%   shutdown
%   shutdownAsync
%   opNV
%   opNVAsync
%   opNR
%   opNRAsync
%   opNDV
%   opNDVAsync
%   opNDR
%   opNDRAsync
%   opNDAIS
%   opNDAISAsync
%   opNDGIS
%   opNDGISAsync
%   opNDASS
%   opNDASSAsync
%   opNDGSS
%   opNDGSSAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef MyClassPrx < Ice.ObjectPrx
    methods
        function shutdown(obj, varargin)
            % shutdown
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('shutdown', 0, false, [], false, {}, varargin{:});
        end
        function r_ = shutdownAsync(obj, varargin)
            % shutdownAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('shutdown', 0, false, [], 0, [], {}, varargin{:});
        end
        function [result, o] = opNV(obj, i, varargin)
            % opNV
            %
            % Parameters:
            %   i (containers.Map)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (containers.Map)
            %   o (containers.Map)
            
            os_ = obj.iceStartWriteParams([]);
            Test.NV.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opNV', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.NV.read(is_);
            result = Test.NV.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opNVAsync(obj, i, varargin)
            % opNVAsync
            %
            % Parameters:
            %   i (containers.Map)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.NV.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.NV.read(is_);
                result = Test.NV.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opNV', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opNR(obj, i, varargin)
            % opNR
            %
            % Parameters:
            %   i (containers.Map)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (containers.Map)
            %   o (containers.Map)
            
            os_ = obj.iceStartWriteParams([]);
            Test.NR.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opNR', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.NR.read(is_);
            result = Test.NR.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opNRAsync(obj, i, varargin)
            % opNRAsync
            %
            % Parameters:
            %   i (containers.Map)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.NR.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.NR.read(is_);
                result = Test.NR.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opNR', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opNDV(obj, i, varargin)
            % opNDV
            %
            % Parameters:
            %   i (containers.Map)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (containers.Map)
            %   o (containers.Map)
            
            os_ = obj.iceStartWriteParams([]);
            Test.NDV.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opNDV', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.NDV.read(is_);
            result = Test.NDV.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opNDVAsync(obj, i, varargin)
            % opNDVAsync
            %
            % Parameters:
            %   i (containers.Map)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.NDV.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.NDV.read(is_);
                result = Test.NDV.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opNDV', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opNDR(obj, i, varargin)
            % opNDR
            %
            % Parameters:
            %   i (containers.Map)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (containers.Map)
            %   o (containers.Map)
            
            os_ = obj.iceStartWriteParams([]);
            Test.NDR.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opNDR', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.NDR.read(is_);
            result = Test.NDR.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opNDRAsync(obj, i, varargin)
            % opNDRAsync
            %
            % Parameters:
            %   i (containers.Map)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.NDR.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.NDR.read(is_);
                result = Test.NDR.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opNDR', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opNDAIS(obj, i, varargin)
            % opNDAIS
            %
            % Parameters:
            %   i (containers.Map)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (containers.Map)
            %   o (containers.Map)
            
            os_ = obj.iceStartWriteParams([]);
            Test.NDAIS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opNDAIS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.NDAIS.read(is_);
            result = Test.NDAIS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opNDAISAsync(obj, i, varargin)
            % opNDAISAsync
            %
            % Parameters:
            %   i (containers.Map)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.NDAIS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.NDAIS.read(is_);
                result = Test.NDAIS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opNDAIS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opNDGIS(obj, i, varargin)
            % opNDGIS
            %
            % Parameters:
            %   i (containers.Map)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (containers.Map)
            %   o (containers.Map)
            
            os_ = obj.iceStartWriteParams([]);
            Test.NDGIS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opNDGIS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.NDGIS.read(is_);
            result = Test.NDGIS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opNDGISAsync(obj, i, varargin)
            % opNDGISAsync
            %
            % Parameters:
            %   i (containers.Map)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.NDGIS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.NDGIS.read(is_);
                result = Test.NDGIS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opNDGIS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opNDASS(obj, i, varargin)
            % opNDASS
            %
            % Parameters:
            %   i (containers.Map)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (containers.Map)
            %   o (containers.Map)
            
            os_ = obj.iceStartWriteParams([]);
            Test.NDASS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opNDASS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.NDASS.read(is_);
            result = Test.NDASS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opNDASSAsync(obj, i, varargin)
            % opNDASSAsync
            %
            % Parameters:
            %   i (containers.Map)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.NDASS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.NDASS.read(is_);
                result = Test.NDASS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opNDASS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
        function [result, o] = opNDGSS(obj, i, varargin)
            % opNDGSS
            %
            % Parameters:
            %   i (containers.Map)
            %   context (containers.Map) - Optional request context.
            %
            % Returns:
            %   result (containers.Map)
            %   o (containers.Map)
            
            os_ = obj.iceStartWriteParams([]);
            Test.NDGSS.write(os_, i);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('opNDGSS', 0, true, os_, true, {}, varargin{:});
            is_.startEncapsulation();
            o = Test.NDGSS.read(is_);
            result = Test.NDGSS.read(is_);
            is_.endEncapsulation();
        end
        function r_ = opNDGSSAsync(obj, i, varargin)
            % opNDGSSAsync
            %
            % Parameters:
            %   i (containers.Map)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Test.NDGSS.write(os_, i);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                o = Test.NDGSS.read(is_);
                result = Test.NDGSS.read(is_);
                is_.endEncapsulation();
                varargout{1} = result;
                varargout{2} = o;
            end
            r_ = obj.iceInvokeAsync('opNDGSS', 0, true, os_, 2, @unmarshal, {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::MyClass';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.MyClassPrx');
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
            % Returns (Test.MyClassPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.MyClassPrx.ice_staticId(), 'Test.MyClassPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.MyClassPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.MyClassPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = MyClassPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
end
