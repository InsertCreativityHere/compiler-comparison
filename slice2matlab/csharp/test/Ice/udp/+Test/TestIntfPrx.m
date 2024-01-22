% TestIntfPrx   Summary of TestIntfPrx
%
% TestIntfPrx Methods:
%   ping
%   pingAsync
%   sendByteSeq
%   sendByteSeqAsync
%   pingBiDir
%   pingBiDirAsync
%   shutdown
%   shutdownAsync
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Test.ice by slice2matlab version 3.8.0-alpha.0

classdef TestIntfPrx < Ice.ObjectPrx
    methods
        function ping(obj, reply, varargin)
            % ping
            %
            % Parameters:
            %   reply (Test.PingReplyPrx)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(reply);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('ping', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = pingAsync(obj, reply, varargin)
            % pingAsync
            %
            % Parameters:
            %   reply (Test.PingReplyPrx)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeProxy(reply);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('ping', 0, false, os_, 0, [], {}, varargin{:});
        end
        function sendByteSeq(obj, seq, reply, varargin)
            % sendByteSeq
            %
            % Parameters:
            %   seq (Test.ByteSeq)
            %   reply (Test.PingReplyPrx)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(seq);
            os_.writeProxy(reply);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('sendByteSeq', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = sendByteSeqAsync(obj, seq, reply, varargin)
            % sendByteSeqAsync
            %
            % Parameters:
            %   seq (Test.ByteSeq)
            %   reply (Test.PingReplyPrx)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeByteSeq(seq);
            os_.writeProxy(reply);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('sendByteSeq', 0, false, os_, 0, [], {}, varargin{:});
        end
        function pingBiDir(obj, id, varargin)
            % pingBiDir
            %
            % Parameters:
            %   id (Ice.Identity)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            Ice.Identity.ice_write(os_, id);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('pingBiDir', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = pingBiDirAsync(obj, id, varargin)
            % pingBiDirAsync
            %
            % Parameters:
            %   id (Ice.Identity)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            Ice.Identity.ice_write(os_, id);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('pingBiDir', 0, false, os_, 0, [], {}, varargin{:});
        end
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
    end
    methods(Static)
        function id = ice_staticId()
            id = '::Test::TestIntf';
        end
        function r = ice_read(is)
            r = is.readProxy('Test.TestIntfPrx');
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
            % Returns (Test.TestIntfPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, Test.TestIntfPrx.ice_staticId(), 'Test.TestIntfPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (Test.TestIntfPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'Test.TestIntfPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = TestIntfPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
end
