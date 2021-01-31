

#include <fcntl.h>          // FILE control
#include <termios.h>        // Terminal IO

#include <ros/ros.h>
#include <geometry_msgs/Twist.h>

#define ESC_ASCII_VALUE             0x1b
#define UP                          0x77
#define DOWN                        0x78
#define LEFT                        0x61
#define RIGHT                       0x64
#define STOPS                       0x73

int getch(void)
{
struct termios oldt, newt;
int ch;

tcgetattr( STDIN_FILENO, &oldt );
newt = oldt;
newt.c_lflag &= ~(ICANON | ECHO);
newt.c_cc[VMIN] = 0;
newt.c_cc[VTIME] = 1;
tcsetattr( STDIN_FILENO, TCSANOW, &newt );
ch = getchar();
tcsetattr( STDIN_FILENO, TCSANOW, &oldt );

return ch;
}

int kbhit(void)
{
struct termios oldt, newt;
int ch;
int oldf;

tcgetattr(STDIN_FILENO, &oldt);
newt = oldt;
newt.c_lflag &= ~(ICANON | ECHO);
tcsetattr(STDIN_FILENO, TCSANOW, &newt);
oldf = fcntl(STDIN_FILENO, F_GETFL, 0);
fcntl(STDIN_FILENO, F_SETFL, oldf | O_NONBLOCK);

ch = getchar();

tcsetattr(STDIN_FILENO, TCSANOW, &oldt);
fcntl(STDIN_FILENO, F_SETFL, oldf);

if (ch != EOF)
{
    ungetc(ch, stdin);
    return 1;
}
return 0;
}

int main(int argc, char **argv)
{
// Init ROS node
ros::init(argc, argv, "hardware_test_operator");
ros::NodeHandle node_handle("");

double ang_vel_step = 10;

ros::Publisher cmd_vel_pub = node_handle.advertise<geometry_msgs::Twist>("cmd_vel", 10);
geometry_msgs::Twist twist_msg;

std::string msg =
"\n\
Hardware Test \n\
--------------------------- \n\
Moving around:\n\
        w\n\
    a    s    d\n\
        x\n\
\n\
w/x : up/down\n\
a/d : left/right\n\
\n\
s : force stop\n\
\n\
CTRL-C to quit\n\
";

ROS_INFO("%s", msg.c_str());

ros::Rate loop_rate(100);

while(ros::ok())
{
    if (kbhit())
    {
    char c = getch();

    if (c == UP)
    {
        twist_msg.angular.y -= ang_vel_step;
    }
    else if (c == DOWN)
    {
        twist_msg.angular.y += ang_vel_step;
    }
    else if (c == LEFT)
    {
        twist_msg.angular.z += ang_vel_step;
    }
    else if (c == RIGHT)
    {
        twist_msg.angular.z -= ang_vel_step;
    }
    else if (c == STOPS)
    {
        twist_msg.angular.y  = 0.0f;
        twist_msg.angular.z = 0.0f;
    }
    else
    {
        twist_msg.angular.y  = twist_msg.angular.y;
        twist_msg.angular.z = twist_msg.angular.z;
    }
    }

    cmd_vel_pub.publish(twist_msg);

    ros::spinOnce();
    loop_rate.sleep();
}

return 0;
}
