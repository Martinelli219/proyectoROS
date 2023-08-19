#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/Turtlebot_on_noetic/kobuki_desktop/kobuki_dashboard"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/install/lib/python3/dist-packages:/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/build/kobuki_dashboard/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/build/kobuki_dashboard" \
    "/usr/bin/python3" \
    "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/src/Turtlebot_on_noetic/kobuki_desktop/kobuki_dashboard/setup.py" \
     \
    build --build-base "/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/build/kobuki_dashboard" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/install" --install-scripts="/home/martinelli/WidowX_XM430_Robot_Turret/catkin_ws/install/bin"
