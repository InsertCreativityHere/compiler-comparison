% ServerPrx   Summary of ServerPrx
%
% ServerPrx Methods:
%   noCert
%   noCertAsync
%   checkCert
%   checkCertAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef ServerPrx < Ice.ObjectPrx
    methods
        function noCert(obj, varargin)
            % noCert
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('noCert', 0, false, [], false, {}, varargin{:});
        end
        function r_ = noCertAsync(obj, varargin)
            % noCertAsync
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('noCert', 0, false, [], 0, [], {}, varargin{:});
        end
        function checkCert(obj, subjectDN, issuerDN, varargin)
            % checkCert
            %
            % Parameters:
            %   subjectDN (char)
            %   issuerDN (char)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(subjectDN);
            os_.writeString(issuerDN);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('checkCert', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = checkCertAsync(obj, subjectDN, issuerDN, varargin)
            % checkCertAsync
            %
            % Parameters:
            %   subjectDN (char)
            %   issuerDN (char)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(subjectDN);
            os_.writeString(issuerDN);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('checkCert', 0, false, os_, 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::Server';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.ServerPrx');
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
            % Returns (Test.ServerPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.ServerPrx.ice_staticId(), 'Test.ServerPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.ServerPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.ServerPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = ServerPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
end
