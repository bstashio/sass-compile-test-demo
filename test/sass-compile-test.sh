#!/bin/bash


# ==============================================================================
# USAGE AND NOTES - START
# ==============================================================================
#
# - Info:
#		- 2017-09-12
#
# ------------------------------------------------------------------------------
#
# - Command:
# 		bash sass-compile-test.sh
#
# ==============================================================================
# USAGE AND NOTES - END
# ==============================================================================



# ==============================================================================
# FUNCTIONS - START
# ==============================================================================

run_it()
{
	
	local _src="${1-sass/test.sass}"
	local _dest="${2-$(dirname "${BASH_SOURCE[0]}")/output/$(basename ${_src}).css}"
	local _options="${3---sourcemap=none}"

	# ----------------------------------------------------------------------------
	
	local _dest_dir="$(dirname "${_dest}")"
	
	if [ ! -d "${_dest_dir}" ]; then
	
		mkdir -p "${_dest_dir}"
	
	fi

	# ----------------------------------------------------------------------------
	
	sass "${_src}" "${_dest}" ${_options}
	
}
# run_it()

# ==============================================================================
# FUNCTIONS - END
# ==============================================================================



# ==============================================================================
# EXECUTION - START
# ==============================================================================

run_it $@

# ==============================================================================
# EXECUTION - END
# ==============================================================================
