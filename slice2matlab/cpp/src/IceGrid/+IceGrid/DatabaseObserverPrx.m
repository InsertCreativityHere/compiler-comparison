% DatabaseObserverPrx   Summary of DatabaseObserverPrx
%
% DatabaseObserverPrx Methods:
%   checkedCast - Contacts the remote server to verify that the object implements this type.
%   uncheckedCast - Downcasts the given proxy to this type without contacting the remote server.

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Internal.ice by slice2matlab version 3.7.10

classdef DatabaseObserverPrx < IceGrid.ApplicationObserverPrx & IceGrid.ObjectObserverPrx & IceGrid.AdapterObserverPrx
    methods
    end
    methods(Static)
        function id = ice_staticId()
            id = '::IceGrid::DatabaseObserver';
        end
        function r = ice_read(is)
            r = is.readProxy('IceGrid.DatabaseObserverPrx');
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
            % Returns (IceGrid.DatabaseObserverPrx) - A proxy for this type, or an empty array if the object does not support this type.
            r = Ice.ObjectPrx.iceCheckedCast(p, IceGrid.DatabaseObserverPrx.ice_staticId(), 'IceGrid.DatabaseObserverPrx', varargin{:});
        end
        function r = uncheckedCast(p, varargin)
            % uncheckedCast   Downcasts the given proxy to this type without contacting the remote server.
            %   You can optionally specify a facet name.
            %
            % Parameters:
            %   p - The proxy to be cast.
            %   facet - The optional name of the desired facet.
            %
            % Returns (IceGrid.DatabaseObserverPrx) - A proxy for this type.
            r = Ice.ObjectPrx.iceUncheckedCast(p, 'IceGrid.DatabaseObserverPrx', varargin{:});
        end
    end
    methods(Hidden=true)
        function obj = DatabaseObserverPrx(communicator, encoding, impl, bytes)
            obj = obj@IceGrid.ApplicationObserverPrx(communicator, encoding, impl, bytes);
            obj = obj@IceGrid.ObjectObserverPrx(communicator, encoding, impl, bytes);
            obj = obj@IceGrid.AdapterObserverPrx(communicator, encoding, impl, bytes);
        end
    end
end
