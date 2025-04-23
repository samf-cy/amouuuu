#!/bin/bash
echo "AfterInstall hook executed at $(date)" > /tmp/test-deployment/hook_executed.log
chmod +x /tmp/test-deployment/test-script.sh

# Create a marker file to verify the hook ran
touch /tmp/test-deployment/hook_completed.marker

# Log to a standard location for verification
echo "CodeDeploy AfterInstall hook completed at $(date)" >> /var/log/codedeploy-test.log
