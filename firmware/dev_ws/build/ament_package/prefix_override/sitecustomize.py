import sys
if sys.prefix == '/usr':
    sys.real_prefix = sys.prefix
    sys.prefix = sys.exec_prefix = '/home/sitong/micro_ros_ws/firmware/dev_ws/install/ament_package'
