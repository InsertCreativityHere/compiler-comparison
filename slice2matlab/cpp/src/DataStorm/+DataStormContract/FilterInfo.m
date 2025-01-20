% FilterInfo   Summary of FilterInfo
%
% Represents a sample filter that specifies which samples should be sent to a data reader.
%
% FilterInfo Properties:
%   name - The unique name of the filter, used for identification.
%   criteria - The encoded criteria for instantiating the filter.

% Copyright (c) ZeroC, Inc.
% Generated from Contract.ice by slice2matlab version 3.8.0-alpha.0

classdef FilterInfo
    properties
        % name - The unique name of the filter, used for identification.
        name char
        % criteria - The encoded criteria for instantiating the filter.
        criteria
    end
    methods
        function obj = FilterInfo(name, criteria)
            if nargin == 0
                obj.name = '';
                obj.criteria = [];
            elseif ne(name, IceInternal.NoInit.Instance)
                obj.name = name;
                obj.criteria = criteria;
            end
        end
        function r = eq(obj, other)
            r = isequal(obj, other);
        end
        function r = ne(obj, other)
            r = ~isequal(obj, other);
        end
    end
    methods(Static)
        function r = ice_read(is)
            r = DataStormContract.FilterInfo(IceInternal.NoInit.Instance);
            r.name = is.readString();
            r.criteria = is.readByteSeq();
        end
        function ice_write(os, v)
            if isempty(v)
                v = DataStormContract.FilterInfo();
            end
            os.writeString(v.name);
            os.writeByteSeq(v.criteria);
        end
        function r = ice_readOpt(is, tag)
            if is.readOptional(tag, Ice.OptionalFormat.FSize)
                is.skip(4);
                r = DataStormContract.FilterInfo.ice_read(is);
            else
                r = Ice.Unset;
            end
        end
        function ice_writeOpt(os, tag, v)
            if v ~= Ice.Unset && os.writeOptional(tag, Ice.OptionalFormat.FSize)
                pos = os.startSize();
                DataStormContract.FilterInfo.ice_write(os, v);
                os.endSize(pos);
            end
        end
    end
end
