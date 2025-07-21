#!/bin/bash
echo -e "e-setup_prj_api_bad-price-api00-b1b4_f.sh\n"
# Defaults
#
VERBOSE=false
unset API_PRJ_NM API_PRJ_GP API_RT_PRJ API_RT
#
api_prj_nm="${API_PROJECT_NAME:-notset-API_PROJECT_NAME}"
api_prj_gp="${API_PROJECT_GROUP:-notset-API_PROJECT_GROUP}"
api_rt_prj="${API_ROOT_PROJECT:-notset-API_ROOT_PROJECT}"
api_rt="${API_ROOT:-notset-API_ROOT}"
#
#api_prj_nm="${1:-${API_PROJECT_NAME:-notset-API_PROJECT_NAME}}"
#api_prj_gp="${2:-${API_PROJECT_GROUP:-notset-API_PROJECT_GROUP}}"
#api_rt_prj="${3:-${API_ROOT_PROJECT:-notset-API_ROOT_PROJECT}}"
#api_rt="${4:-${API_ROOT:-notset-API_ROOT}}"
#
echo -e "\nfrom Env"
echo "api_prj_nm=${api_prj_nm}"
echo "api_prj_gp=${api_prj_gp}"
echo "api_rt_prj=${api_rt_prj}"
echo "api_rt=${api_rt}"
echo -e "\n"
#---S
while getopts "p:g:r:R:" opt; do
  case $opt in
    v)
      VERBOSE=true
      ;;
    p)
      API_PRJ_NM="$OPTARG"
      ;;
    g)
      API_PRJ_GP="$OPTARG"
      ;;
    r)
      API_RT_PRJ="$OPTARG"
      ;;
    R)
      API_RT="$OPTARG"
      ;;
    \?) #Invalids
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
  esac
done
#
# Shift positional parameters so that $1, $2, etc., refer to non-option arguments
shift "$((OPTIND - 1))"

# Now, access the processed options and any remaining positional arguments
if "$VERBOSE"; then
  echo "Verbose mode enabled."
fi

echo -e "\nfrom flags"
echo "API_PRJ_NM=${API_PRJ_NM}"
echo "API_PRJ_GP=${API_PRJ_GP}"
echo "API_RT_PRJ=${API_RT_PRJ}"
echo "API_RT=${API_RT}"
#

# Process any remaining positional arguments
if [[ $# -gt 0 ]]; then
  echo "Remaining arguments:"
  for arg in "$@"; do
    echo "- $arg"
  done
fi
#
# set the final input payload to mkdir -p
echo -e "\n prep input payload to mkdir-p \n"
api_prj_nm=${API_PRJ_NM:-${api_prj_nm:-notset-API_PROJECT_NAME-again}}
api_prj_gp=${API_PRJ_GP:-${api_prj_gp:-notset-API_PROJECT_GROUP-again}}
api_rt_prj=${API_RT_PRJ:-${api_rt_prj:-notset-API_PROJECT_GROUP-again}}
api_rt=${API_RTJ:-${api_rt:-notset-API_PROJECT_GROUP-again}}
#
# and show
echo "api_prj_nm=${api_prj_nm}"
echo "api_prj_gp=${api_prj_gp}"
echo "api_rt_prj=${api_rt_prj}"
echo "api_rt=${api_rt}"
#
# setup additional env vars and subdirs
#
api_img=img
api_tools=tools
api_drawings=drawings
api_specs=specs
api_downs_com=downs-com
api_downs_prj=downs-prj
api_wsps_studio=wsps-studio
api_wsps_vscode=wsps-studio
api_wsps_postman=wsps-studio
#
api_rt_dir="/c/pjs/${api_rt}"
api_rt_prj_dir=${api_rt_dir}/${api_rt_prj}
api_prj_gp_dir=${api_rt_prj_dir}/${api_prj_gp}
api_prj_nm_dir=${api_prj_gp_dir}/${api_prj_nm}
#
# rt_prj level
# 
echo -e "\n\rt_prj level\n"
api_rt_prj_img_dir=${api_rt_prj_dir}/${api_img}
api_rt_prj_tools_dir=${api_rt_prj_dir}/${api_tools}
api_rt_prj_drawings_dir=${api_rt_prj_dir}/${api_drawings}
api_rt_prj_specs_dir=${api_rt_prj_dir}/${api_specs}
api_rt_prj_downs_com_dir=${api_rt_prj_dir}/${api_downs_com}
api_rt_prj_downs_prj_dir=${api_rt_prj_dir}/${api_downs_prj}
api_rt_wsps_studio_dir=${api_rt_prj_dir}/${api_wsps_studio}
api_rt_wsps_vscode_dir=${api_rt_prj_dir}/${api_wsps_vscode}
api_rt_wsps_postman_dir=${api_rt_prj_dir}/${api_wsps_postman}

echo api_rt_prj_img_dir=${api_rt_prj_img_dir}
echo api_rt_prj_tools_dir=${api_rt_prj_tools_dir}
echo api_rt_prj_drawings_dir=${api_rt_prj_drawings_dir}
echo api_rt_prj_specs_dir=${api_rt_prj_specs_dir}
echo api_rt_prj_downs_com_dir=${api_rt_prj_downs_com_dir}
echo api_rt_prj_downs_prj_dir=${api_rt_prj_downs_prj_dir}
echo api_rt_wsps_studio_dir=${api_rt_wsps_studio_dir}
echo api_rt_wsps_vscode_dir=${api_rt_wsps_vscode_dir}
echo api_rt_wsps_postman_dir=${api_rt_wsps_postman_dir}

#
# prj_gp level - deeper
#
echo -e "\nprj_gp level - deeper\n"
api_prj_gp_img_dir=${api_prj_gp_dir}/${api_img}
api_prj_gp_tools_dir=${api_prj_gp_dir}/${api_tools}
api_prj_gp_drawings_dir=${api_prj_gp_dir}/${api_drawings}
api_prj_gp_specs_dir=${api_prj_gp_dir}/${api_specs}
api_prj_gp_downs_com_dir=${api_prj_gp_dir}/${api_downs_com}
api_prj_gp_downs_prj_dir=${api_prj_gp_dir}/${api_downs_prj}
#
api_prj
api_rt_wsps_studio_dir=${api_prj_gp_dir}/${api_wsps_studio}
api_rt_wsps_vscode_dir=${api_prj_gp_dir}/${api_wsps_vscode}
api_rt_wsps_postman_dir=${api_prj_gp_dir}/${api_wsps_postman}

echo api_prj_gp_img_dir=${api_prj_gp_img_dir}
echo api_prj_gp_tools_dir=${api_prj_gp_tools_dir}
echo api_prj_gp_drawings_dir=${api_prj_gp_drawings_dir}
echo api_prj_gp_specs_dir=${api_prj_gp_specs_dir}
echo api_prj_gp_downs_com_dir=${api_prj_gp_downs_com_dir}
echo api_prj_gp_downs_prj_dir=${api_prj_gp_downs_prj_dir}
echo api_rt_wsps_studio_dir=${api_rt_wsps_studio_dir}
echo api_rt_wsps_vscode_dir=${api_rt_wsps_vscode_dir}
echo api_rt_wsps_postman_dir=${api_rt_wsps_postman_dir}
#
# mkdir -p
#
echo -e "\n start mkdir -p\n"
mkdir -p ${api_rt_prj_img_dir}
mkdir -p ${api_rt_prj_tools_dir}
mkdir -p ${api_rt_prj_drawings_dir}
mkdir -p ${api_rt_prj_specs_dir}
mkdir -p ${api_rt_prj_downs_com_dir}
mkdir -p ${api_rt_prj_downs_prj_dir}
mkdir -p ${api_rt_wsps_studio_dir}
mkdir -p ${api_rt_wsps_vscode_dir}
mkdir -p ${api_rt_wsps_postman_dir}
mkdir -p ${api_prj_gp_img_dir}
mkdir -p ${api_prj_gp_tools_dir}
mkdir -p ${api_prj_gp_drawings_dir}
mkdir -p ${api_prj_gp_specs_dir}
mkdir -p ${api_prj_gp_downs_com_dir}
mkdir -p ${api_prj_gp_downs_prj_dir}
mkdir -p ${api_rt_wsps_studio_dir}
mkdir -p ${api_rt_wsps_vscode_dir}
mkdir -p ${api_rt_wsps_postman_dir}
#
# finaly api project dir 
#
mkdir -p ${api_prj_nm_dir}


#---E

echo -e "\nx-setup_prj_api_bad-price-api00-b1b4_f.sh\n"
