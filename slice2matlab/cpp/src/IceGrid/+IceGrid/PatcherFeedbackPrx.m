% PatcherFeedbackPrx   Summary of PatcherFeedbackPrx
%
% PatcherFeedbackPrx Methods:
%   finished - The patch completed successfully.
%   finishedAsync - The patch completed successfully.
%   failed - The patch on the given node failed for the given reason.
%   failedAsync - The patch on the given node failed for the given reason.
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Internal.ice by slice2matlab version 3.7.9

classdef PatcherFeedbackPrx < Ice.ObjectPrx
    methods
        function finished(obj, varargin)
            % finished   The patch completed successfully.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            
            obj.iceInvoke('finished', 0, false, [], false, {}, varargin{:});
        end
        function r_ = finishedAsync(obj, varargin)
            % finishedAsync   The patch completed successfully.
            %
            % Parameters:
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            r_ = obj.iceInvokeAsync('finished', 0, false, [], 0, [], {}, varargin{:});
        end
        function failed(obj, reason, varargin)
            % failed   The patch on the given node failed for the given reason.
            %
            % Parameters:
            %   reason (char)
            %   context (containers.Map) - Optional request context.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(reason);
            obj.iceEndWriteParams(os_);
            obj.iceInvoke('failed', 0, false, os_, false, {}, varargin{:});
        end
        function r_ = failedAsync(obj, reason, varargin)
            % failedAsync   The patch on the given node failed for the given reason.
            %
            % Parameters:
            %   reason (char)
            %   context (containers.Map) - Optional request context.
            %
            % Returns (Ice.Future) - A future that will be completed with the results of the invocation.
            
            os_ = obj.iceStartWriteParams([]);
            os_.writeString(reason);
            obj.iceEndWriteParams(os_);
            r_ = obj.iceInvokeAsync('failed', 0, false, os_, 0, [], {}, varargin{:});
        end
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceGrid::PatcherFeedback';
        end
        function r = ice_read(is)
            r = is.readProxy('IceGrid.PatcherFeedbackPrx');
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
            % Returns (IceGrid.PatcherFeedbackPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, IceGrid.PatcherFeedbackPrx.ice_staticId(), 'IceGrid.PatcherFeedbackPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (IceGrid.PatcherFeedbackPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceGrid.PatcherFeedbackPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = PatcherFeedbackPrx(communicator, encoding, impl, bytes)
            obj = obj@Ice.ObjectPrx(communicator, encoding, impl, bytes);
        end
    end
end
