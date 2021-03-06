classdef mav_imu < robotics.ros.Message
    %mav_imu MATLAB implementation of asctec_hl_comm/mav_imu
    %   This class was automatically generated by
    %   robotics.ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2014-2018 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'asctec_hl_comm/mav_imu' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = 'fc0b109c033a4f5dccf47e9654e6b6c3' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Constant, Access = protected)
        GeometryMsgsQuaternionClass = robotics.ros.msg.internal.MessageFactory.getClassForType('geometry_msgs/Quaternion') % Dispatch to MATLAB class for message type geometry_msgs/Quaternion
        GeometryMsgsVector3Class = robotics.ros.msg.internal.MessageFactory.getClassForType('geometry_msgs/Vector3') % Dispatch to MATLAB class for message type geometry_msgs/Vector3
        StdMsgsHeaderClass = robotics.ros.msg.internal.MessageFactory.getClassForType('std_msgs/Header') % Dispatch to MATLAB class for message type std_msgs/Header
    end
    
    properties (Dependent)
        Header
        Orientation
        AngularVelocity
        Acceleration
        Height
        DifferentialHeight
    end
    
    properties (Access = protected)
        Cache = struct('Header', [], 'Orientation', [], 'AngularVelocity', [], 'Acceleration', []) % The cache for fast data access
    end
    
    properties (Constant, Hidden)
        PropertyList = {'Acceleration', 'AngularVelocity', 'DifferentialHeight', 'Header', 'Height', 'Orientation'} % List of non-constant message properties
        ROSPropertyList = {'acceleration', 'angular_velocity', 'differential_height', 'header', 'height', 'orientation'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = mav_imu(msg)
            %mav_imu Construct the message object mav_imu
            import com.mathworks.toolbox.robotics.ros.message.MessageInfo;
            
            % Support default constructor
            if nargin == 0
                obj.JavaMessage = obj.createNewJavaMessage;
                return;
            end
            
            % Construct appropriate empty array
            if isempty(msg)
                obj = obj.empty(0,1);
                return;
            end
            
            % Make scalar construction fast
            if isscalar(msg)
                % Check for correct input class
                if ~MessageInfo.compareTypes(msg(1), obj.MessageType)
                    error(message('robotics:ros:message:NoTypeMatch', obj.MessageType, ...
                        char(MessageInfo.getType(msg(1))) ));
                end
                obj.JavaMessage = msg(1);
                return;
            end
            
            % Check that this is a vector of scalar messages. Since this
            % is an object array, use arrayfun to verify.
            if ~all(arrayfun(@isscalar, msg))
                error(message('robotics:ros:message:MessageArraySizeError'));
            end
            
            % Check that all messages in the array have the correct type
            if ~all(arrayfun(@(x) MessageInfo.compareTypes(x, obj.MessageType), msg))
                error(message('robotics:ros:message:NoTypeMatchArray', obj.MessageType));
            end
            
            % Construct array of objects if necessary
            objType = class(obj);
            for i = 1:length(msg)
                obj(i,1) = feval(objType, msg(i)); %#ok<AGROW>
            end
        end
        
        function header = get.Header(obj)
            %get.Header Get the value for property Header
            if isempty(obj.Cache.Header)
                obj.Cache.Header = feval(obj.StdMsgsHeaderClass, obj.JavaMessage.getHeader);
            end
            header = obj.Cache.Header;
        end
        
        function set.Header(obj, header)
            %set.Header Set the value for property Header
            validateattributes(header, {obj.StdMsgsHeaderClass}, {'nonempty', 'scalar'}, 'mav_imu', 'Header');
            
            obj.JavaMessage.setHeader(header.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.Header)
                obj.Cache.Header.setJavaObject(header.getJavaObject);
            end
        end
        
        function orientation = get.Orientation(obj)
            %get.Orientation Get the value for property Orientation
            if isempty(obj.Cache.Orientation)
                obj.Cache.Orientation = feval(obj.GeometryMsgsQuaternionClass, obj.JavaMessage.getOrientation);
            end
            orientation = obj.Cache.Orientation;
        end
        
        function set.Orientation(obj, orientation)
            %set.Orientation Set the value for property Orientation
            validateattributes(orientation, {obj.GeometryMsgsQuaternionClass}, {'nonempty', 'scalar'}, 'mav_imu', 'Orientation');
            
            obj.JavaMessage.setOrientation(orientation.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.Orientation)
                obj.Cache.Orientation.setJavaObject(orientation.getJavaObject);
            end
        end
        
        function angularvelocity = get.AngularVelocity(obj)
            %get.AngularVelocity Get the value for property AngularVelocity
            if isempty(obj.Cache.AngularVelocity)
                obj.Cache.AngularVelocity = feval(obj.GeometryMsgsVector3Class, obj.JavaMessage.getAngularVelocity);
            end
            angularvelocity = obj.Cache.AngularVelocity;
        end
        
        function set.AngularVelocity(obj, angularvelocity)
            %set.AngularVelocity Set the value for property AngularVelocity
            validateattributes(angularvelocity, {obj.GeometryMsgsVector3Class}, {'nonempty', 'scalar'}, 'mav_imu', 'AngularVelocity');
            
            obj.JavaMessage.setAngularVelocity(angularvelocity.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.AngularVelocity)
                obj.Cache.AngularVelocity.setJavaObject(angularvelocity.getJavaObject);
            end
        end
        
        function acceleration = get.Acceleration(obj)
            %get.Acceleration Get the value for property Acceleration
            if isempty(obj.Cache.Acceleration)
                obj.Cache.Acceleration = feval(obj.GeometryMsgsVector3Class, obj.JavaMessage.getAcceleration);
            end
            acceleration = obj.Cache.Acceleration;
        end
        
        function set.Acceleration(obj, acceleration)
            %set.Acceleration Set the value for property Acceleration
            validateattributes(acceleration, {obj.GeometryMsgsVector3Class}, {'nonempty', 'scalar'}, 'mav_imu', 'Acceleration');
            
            obj.JavaMessage.setAcceleration(acceleration.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.Acceleration)
                obj.Cache.Acceleration.setJavaObject(acceleration.getJavaObject);
            end
        end
        
        function height = get.Height(obj)
            %get.Height Get the value for property Height
            height = double(obj.JavaMessage.getHeight);
        end
        
        function set.Height(obj, height)
            %set.Height Set the value for property Height
            validateattributes(height, {'numeric'}, {'nonempty', 'scalar'}, 'mav_imu', 'Height');
            
            obj.JavaMessage.setHeight(height);
        end
        
        function differentialheight = get.DifferentialHeight(obj)
            %get.DifferentialHeight Get the value for property DifferentialHeight
            differentialheight = double(obj.JavaMessage.getDifferentialHeight);
        end
        
        function set.DifferentialHeight(obj, differentialheight)
            %set.DifferentialHeight Set the value for property DifferentialHeight
            validateattributes(differentialheight, {'numeric'}, {'nonempty', 'scalar'}, 'mav_imu', 'DifferentialHeight');
            
            obj.JavaMessage.setDifferentialHeight(differentialheight);
        end
    end
    
    methods (Access = protected)
        function resetCache(obj)
            %resetCache Resets any cached properties
            obj.Cache.Header = [];
            obj.Cache.Orientation = [];
            obj.Cache.AngularVelocity = [];
            obj.Cache.Acceleration = [];
        end
        
        function cpObj = copyElement(obj)
            %copyElement Implements deep copy behavior for message
            
            % Call default copy method for shallow copy
            cpObj = copyElement@robotics.ros.Message(obj);
            
            % Clear any existing cached properties
            cpObj.resetCache;
            
            % Create a new Java message object
            cpObj.JavaMessage = obj.createNewJavaMessage;
            
            % Iterate over all primitive properties
            cpObj.Height = obj.Height;
            cpObj.DifferentialHeight = obj.DifferentialHeight;
            
            % Recursively copy compound properties
            cpObj.Header = copy(obj.Header);
            cpObj.Orientation = copy(obj.Orientation);
            cpObj.AngularVelocity = copy(obj.AngularVelocity);
            cpObj.Acceleration = copy(obj.Acceleration);
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
            obj.Height = strObj.Height;
            obj.DifferentialHeight = strObj.DifferentialHeight;
            obj.Header = feval([obj.StdMsgsHeaderClass '.loadobj'], strObj.Header);
            obj.Orientation = feval([obj.GeometryMsgsQuaternionClass '.loadobj'], strObj.Orientation);
            obj.AngularVelocity = feval([obj.GeometryMsgsVector3Class '.loadobj'], strObj.AngularVelocity);
            obj.Acceleration = feval([obj.GeometryMsgsVector3Class '.loadobj'], strObj.Acceleration);
        end
    end
    
    methods (Access = ?robotics.ros.Message)
        function strObj = saveobj(obj)
            %saveobj Implements saving of message to MAT file
            
            % Return an empty element if object array is empty
            if isempty(obj)
                strObj = struct.empty;
                return
            end
            
            strObj.Height = obj.Height;
            strObj.DifferentialHeight = obj.DifferentialHeight;
            strObj.Header = saveobj(obj.Header);
            strObj.Orientation = saveobj(obj.Orientation);
            strObj.AngularVelocity = saveobj(obj.AngularVelocity);
            strObj.Acceleration = saveobj(obj.Acceleration);
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?robotics.ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = robotics.ros.custom.msggen.asctec_hl_comm.mav_imu.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = robotics.ros.custom.msggen.asctec_hl_comm.mav_imu;
            obj.reload(strObj);
        end
    end
end
