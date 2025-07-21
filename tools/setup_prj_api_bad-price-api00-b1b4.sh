#!/bin/bash
echo -e "e-mkdir_prjdirs_api.sh\n"

#api_prj_nm="${API_PROJECT_NAME:-notset-API_PROJECT_NAME}"
api_prj_nm="${1:-${API_PROJECT_NAME:-notset-API_PROJECT_NAME}}"
api_prj_gp="${2:-${API_PROJECT_GROUP:-notset-API_PROJECT_GROUP}}"
api_rt_prj="${3:-${API_ROOT_PROJECT:-notset-API_ROOT_PROJECT}}"
api_rt="${4:-${API_ROOT:-notset-API_ROOT}}"
#
echo "api_prj_nm=${api_prj_nm}"
echo "api_prj_gp=${api_prj_gp}"
echo "api_rt_prj=${api_rt_prj}"
echo "api_rt=${api_rt}"



echo -e "\nx-mkdir_prjdirs_api.sh\n"
