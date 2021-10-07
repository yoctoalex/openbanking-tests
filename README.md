# openbanking-tests

How to:

1. Deploy openbanking server to vk8s
```
    kubectl --kubeconfig <<path to vk8s kubeconfig>> apply -f vk8s-openbanking.yaml
```
2. Create Volterra HTTP load balancer and expose it to public

3. Configure app_type for API Discovery and assign in to your HTTP LB

4. Modify docker-compose.yaml. Replace BASE_URL environment with your fqdn from step 2

5. Start traffic by executing command
```
    docker-compose up
```
6. Check API Discovery
