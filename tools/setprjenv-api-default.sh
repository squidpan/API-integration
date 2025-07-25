#!/bin/bash
echo -e "e-setprjenv-api-default.sh\n"

# Set the prompt
# 
##export PS1="\u@\h:\w\$ "
#export PS1="\w\$ "
#
export ROOT_DIR=/c/pjs
export API_ROOT=APIs
export API_ROOT_DIR=${ROOT_DIR}/${API_ROOT}
export API_ROOT_TOOLS_DIR=${API_ROOT_DIR}
#export API_ROOT_PROJECT=API-Integration
#export API_PROJECT_NAME=API-Integration
#export API_ROOT_STUDIO_DIR=${API_ROOT_DIR}/${API_ROOT_STUDIO}
#
# set up default env vars
#
echo -e "calling ${API_ROOT_TOOLS_DIR}/setup_prj_api-default.sh"
. /c/pjs/APIs/tools/setup_prj_api-default.sh

echo -e "\n x-dotbashrc"
echo -e "\n x-setprjenv-api-default.sh\n"
