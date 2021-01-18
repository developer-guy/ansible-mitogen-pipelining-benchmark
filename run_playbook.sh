
export COLUMNS=80

ANSIBLE_CONFIG=./ansible_default.cfg ansible-playbook playbook.yaml --limit ubuntu_nginx > ./logs/default.log &

ANSIBLE_CONFIG=./ansible_pipelining.cfg ansible-playbook playbook.yaml --limit ubuntu_nginx2 > ./logs/pipelining.log &

ANSIBLE_CONFIG=./ansible_mitogen.cfg ansible-playbook playbook.yaml --limit ubuntu_nginx3 > ./logs/mitogen.log &
