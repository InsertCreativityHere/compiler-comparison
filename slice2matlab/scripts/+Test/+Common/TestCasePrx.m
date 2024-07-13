% TestCasePrx   Summary of TestCasePrx
%
% TestCasePrx Methods:
%   startServerSide
%   startServerSideAsync
%   stopServerSide
%   stopServerSideAsync
%   runClientSide
%   runClientSideAsync
%   destroy
%   destroyAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Controller.ice by slice2matlab version 3.8.0-alpha.0

classdef TestCasePrx < Ice.ObjectPrx
    methods
        function result = startServerSide(obj, config, varargin)
            % startServerSide
            %
            % Parameters:
            %   config (Test.Common.Config)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (char)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(config);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('startServerSide', 0, true, os_, true, Test.Common.TestCasePrx.startServerSide_ex_, varargin{:});
            is_.startEncapsulation();
            result = is_.readString();
            is_.endEncapsulation();
        end
        function r_ = startServerSideAsync(obj, config, varargin)
            % startServerSideAsync
            %
            % Parameters:
            %   config (Test.Common.Config)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeValue(config);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readString();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('startServerSide', 0, true, os_, 1, @unmarshal, Test.Common.TestCasePrx.startServerSide_ex_, varargin{:});
        end
        function result = stopServerSide(obj, success, varargin)
            % stopServerSide
            %
            % Parameters:
            %   success (logical)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (char)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(success);
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('stopServerSide', 0, true, os_, true, Test.Common.TestCasePrx.stopServerSide_ex_, varargin{:});
            is_.startEncapsulation();
            result = is_.readString();
            is_.endEncapsulation();
        end
        function r_ = stopServerSideAsync(obj, success, varargin)
            % stopServerSideAsync
            %
            % Parameters:
            %   success (logical)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeBool(success);
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readString();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('stopServerSide', 0, true, os_, 1, @unmarshal, Test.Common.TestCasePrx.stopServerSide_ex_, varargin{:});
        end
        function result = runClientSide(obj, host, config, varargin)
            % runClientSide
            %
            % Parameters:
            %   host (char)
            %   config (Test.Common.Config)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (char)
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(host);
            os_.writeValue(config);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            is_ = obj.iceInvoke('runClientSide', 0, true, os_, true, Test.Common.TestCasePrx.runClientSide_ex_, varargin{:});
            is_.startEncapsulation();
            result = is_.readString();
            is_.endEncapsulation();
        end
        function r_ = runClientSideAsync(obj, host, config, varargin)
            % runClientSideAsync
            %
            % Parameters:
            %   host (char)
            %   config (Test.Common.Config)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(host);
            os_.writeValue(config);
            os_.writePendingValues();
            obj.iceEndWriteParams(os_);
            function varargout = unmarshal(is_)
                is_.startEncapsulation();
                result = is_.readString();
                is_.endEncapsulation();
                varargout{1} = result;
            end
            r_ = obj.iceInvokeAsync('runClientSide', 0, true, os_, 1, @unmarshal, Test.Common.TestCasePrx.runClientSide_ex_, varargin{:});
        end
        function destroy(obj, varargin)
            % destroy
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('destroy', 0, false, [], false, {}, varargin{:});
        end
        function r_ = destroyAsync(obj, varargin)
            % destroyAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('destroy', 0, false, [], 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Common::TestCase';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.Common.TestCasePrx');
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
            % Returns (Test.Common.TestCasePrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.Common.TestCasePrx.ice_staticId(), 'Test.Common.TestCasePrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.Common.TestCasePrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.Common.TestCasePrx', varargin{:});
        end
    end
    properties(Constant,Access=private)
        startServerSide_ex_ = { 'Test.Common.TestCaseFailedException' }
        stopServerSide_ex_ = { 'Test.Common.TestCaseFailedException' }
        runClientSide_ex_ = { 'Test.Common.TestCaseFailedException' }
    end
end
