% BaseMethods   Summary of BaseMethods
%
% BaseMethods Properties:
%   Data
%   HelpLink
%   InnerException
%   Message
%   Source
%   StackTrace
%   TargetSite
%   HResult
%   Equals
%   GetBaseException
%   GetHashCode
%   GetObjectData
%   GetType
%   ReferenceEquals
%   ToString

% Copyright (c) ZeroC, Inc. All rights reserved.
% Generated from Key.ice by slice2matlab version 3.8.0-alpha.0

classdef BaseMethods < Ice.UserException
    properties
        Data int32
        HelpLink int32
        InnerException int32
        Message int32
        Source int32
        StackTrace int32
        TargetSite int32
        HResult int32
        Equals int32
        GetBaseException int32
        GetHashCode int32
        GetObjectData int32
        GetType int32
        ReferenceEquals int32
        ToString int32
    end
    methods
        function obj = BaseMethods(errID, msg)
            if nargin == 0
                errID = 'await:BaseMethods';
                msg = 'await.BaseMethods';
            else
                assert(nargin == 2, 'Invalid number of arguments');
            end
            obj = obj@Ice.UserException(errID, msg);
        end
        function id = ice_id(~)
            id = '::await::BaseMethods';
        end
    end
    methods(Access=protected)
        function obj = iceReadImpl(obj, is)
            is.startSlice();
            obj.Data = is.readInt();
            obj.HelpLink = is.readInt();
            obj.InnerException = is.readInt();
            obj.Message = is.readInt();
            obj.Source = is.readInt();
            obj.StackTrace = is.readInt();
            obj.TargetSite = is.readInt();
            obj.HResult = is.readInt();
            obj.Equals = is.readInt();
            obj.GetBaseException = is.readInt();
            obj.GetHashCode = is.readInt();
            obj.GetObjectData = is.readInt();
            obj.GetType = is.readInt();
            obj.ReferenceEquals = is.readInt();
            obj.ToString = is.readInt();
            is.endSlice();
        end
    end
end
