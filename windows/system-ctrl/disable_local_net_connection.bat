rem 禁用以太网
set net_card_name=本地连接
netsh interface set interface %net_card_name% disabled