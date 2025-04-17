load 'bats-detik/lib/detik.bash'
DETIK_CLIENT_NAME="kubectl"

teardown() {
  kubectl delete -f /Users/DELL/open-source/meshery/mesheryctl/tests/e2e/005-bats-demo/fixtures/demo.yaml
}

@test "verify the deployment" {
	
	run kubectl apply -f /Users/DELL/open-source/meshery/mesheryctl/tests/e2e/005-bats-demo/fixtures/demo.yaml --validate=false
	[ "$status" -eq 0 ]
	
	sleep 20
	
	run verify "there is 1 service named 'nginx-demo-service'"
	[ "$status" -eq 0 ]
}

