rem ˫��������Ĭ��·�ɹ���
@echo off

rem ����1 ���ڷ�������
set NIC01_IP=192.168.1.77
set NIC01_GATEWAY=192.168.1.1
set NIC01_IF=12

rem ����2 ���ڷ�������
set NIC02_IP=192.168.42.141
set NIC02_GATEWAY=192.168.42.129
set NIC02_IF=18

route delete 0.0.0.0
route add -p 192.0.0.0 mask 255.0.0.0 %NIC01_GATEWAY% metric 10 if %NIC01_IF%
route add -p 0.0.0.0 mask 0.0.0.0 %NIC02_GATEWAY% metric 5 if %NIC02_IF%

echo "Route configure completed, press any key to exit..."