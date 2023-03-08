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
% Generated from Key.ice by slice2matlab version 3.7.9

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
        function obj = BaseMethods(ice_exid, ice_exmsg, Data, HelpLink, InnerException, Message, Source, StackTrace, TargetSite, HResult, Equals, GetBaseException, GetHashCode, GetObjectData, GetType, ReferenceEquals, ToString)
            if nargin <= 2
                Data = 0;
                HelpLink = 0;
                InnerException = 0;
                Message = 0;
                Source = 0;
                StackTrace = 0;
                TargetSite = 0;
                HResult = 0;
                Equals = 0;
                GetBaseException = 0;
                GetHashCode = 0;
                GetObjectData = 0;
                GetType = 0;
                ReferenceEquals = 0;
                ToString = 0;
            end
            if nargin == 0 || isempty(ice_exid)
                ice_exid = 'abstract:BaseMethods';
            end
            if nargin < 2 || isempty(ice_exmsg)
                ice_exmsg = 'abstract.BaseMethods';
            end
            obj = obj@Ice.UserException(ice_exid, ice_exmsg);
            obj.Data = Data;
            obj.HelpLink = HelpLink;
            obj.InnerException = InnerException;
            obj.Message = Message;
            obj.Source = Source;
            obj.StackTrace = StackTrace;
            obj.TargetSite = TargetSite;
            obj.HResult = HResult;
            obj.Equals = Equals;
            obj.GetBaseException = GetBaseException;
            obj.GetHashCode = GetHashCode;
            obj.GetObjectData = GetObjectData;
            obj.GetType = GetType;
            obj.ReferenceEquals = ReferenceEquals;
            obj.ToString = ToString;
        end
        function id = ice_id(~)
            id = '::abstract::BaseMethods';
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
