# shellcheck shell=bash

######################################################################
#<
#
# Function: p6_kubernetes_debug_cmd(source, ...)
#
#  Args:
#	source -
#	... - 
#
#  Environment:	 USER
#>
######################################################################
p6_kubernetes_debug_cmd() {
  local source="$1"
  shift 1

  local now=$(p6_date_point_now_epoch_seconds)
  local name="${USER}-${env}-debug-${now}"

  local code="kubectl debug $source -it -c app --copy-to=$name -- $@"
  p6_run_code "$code"

  p6_kubernetes_pod_delete "$name"

  p6_return_void
}

#    bundle exec dotenv \
#    -f /secrets/redis.env,/secrets/postgres.env,/secrets/secrets.env \
#    /bin/bash
