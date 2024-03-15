#! shellcheck shell=bash
######################################################################
#<
#
# Function: p6_kubernetes_deployment_of_image(image)
#
#  Args:
#	image -
#
#  Environment:	 P6_DFZ_SRC_P6M7G8_DOTFILES_DIR
#>
######################################################################
p6_kubernetes_deployment_of_image() {
  local image="$1"

  local str
  str=$(p6_template_process "$P6_DFZ_SRC_P6M7G8_DOTFILES_DIR/p6kubernetes/share/deployment.yaml" "IMAGE=$image")

  local dir=$(p6_transient_create "p6_template")
  local outfile="$dir/outfile"
  p6_file_write "$outfile" "$str"
  p6_run_code "kubectl apply -f $outfile"
  p6_transient_delete "$dir"

  p6_return_void
}
