set -e 

echo; echo "Running test installation..."
source .venv/bin/activate

# Run ansible playbook
ansible-playbook -i inventories/inventory playbooks/main.yml --extra-vars "@./global_vars/test.yml"