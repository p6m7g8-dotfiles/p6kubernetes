# shellcheck shell=bash

######################################################################
#<
#
# Function: p6_kubernetes_prompt_info()
#
#  Returns:
#	str - str
#
#  Environment:	 KUBECONFIG P6_KUBE_CFG P6_KUBE_NS
#>
######################################################################
p6_kubernetes_prompt_info() {

  local str

  if ! p6_string_blank "$KUBECONFIG"; then
    str="kube:\t\t  "
  fi
  if ! p6_string_blank "$P6_KUBE_CFG"; then
    str="${str}ctx:$P6_KUBE_CFG"
  fi
  if ! p6_string_blank "$P6_KUBE_NS"; then
    str="${str} ns:$P6_KUBE_NS"
  fi

  if p6_string_blank "$str"; then
    p6_return_void
  else
    p6_return_str "$str"
  fi
}
