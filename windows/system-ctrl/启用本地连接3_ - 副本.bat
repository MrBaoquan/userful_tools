rem ������̫��
set net_card_name="������������"
:start
netsh interface set interface %net_card_name% enabled
goto start