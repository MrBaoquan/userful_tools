rem 禁用以太网
set net_card_name="无线网络连接"
:start
netsh interface set interface %net_card_name% enabled
goto start