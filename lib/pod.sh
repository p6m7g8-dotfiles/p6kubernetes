#! shellcheck shell=bash
######################################################################
#<
#
# Function: str name = p6_kubernetes_pod_find(glob)
#
#  Args:
#	glob -
#
#  Returns:
#	str - name
#
#>
######################################################################
p6_kubernetes_pod_find() {
  local glob="$1"

  local name=$(kubectl get pods | grep "$glob" | awk '{print $1}' | head -1)

  p6_return_str "$name"
}

######################################################################
#<
#
# Function: p6_kubernetes_pod_delete(pod_name)
#
#  Args:
#	pod_name -
#
#>
######################################################################
p6_kubernetes_pod_delete() {
  local pod_name="$1"

  p6_run_code kubectl delete pod "$pod_name"

  p6_return_void
}
