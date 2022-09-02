if [ $T_HOST ]; then sed -i 's;tfms-host;'$T_HOST';g' /etc/nginx/webapp/assets/ui.config.json; sed -i 's/TFMS_ENV_1/'$T_ENV'/g' /etc/nginx/webapp/assets/ui.config.json; fi; if [ $T_SuggestedPlanBuffer ]; then sed -i 's;BufferTime;'$T_SuggestedPlanBuffer';g' /etc/nginx/webapp/assets/ui.config.json; fi; if [ $T_schedulerSettings ]; then sed -i 's;ConfiguredStartTime;'$T_schedulerSettings';g' /etc/nginx/webapp/assets/ui.config.json; fi; if [ $T_configuredStartTime ]; then sed -i 's/configuredTime/'$T_configuredStartTime'/g' /etc/nginx/webapp/assets/ui.config.json; fi; if [ $T_SchedulerInterval ]; then sed -i 's;IntervalTime;'$T_SchedulerInterval';g' /etc/nginx/webapp/assets/ui.config.json; fi; if [ $T_HealthUrl ]; then sed -i 's;healthUrlValue;'$T_HealthUrl';g' /etc/nginx/webapp/assets/ui.config.json; fi; if [ $T_LogUrl ]; then sed -i 's;logUrlValue;'$T_LogUrl';g' /etc/nginx/webapp/assets/ui.config.json; fi;
if [ $T_BASEHREF ]; then sed -i 's;dummy;'$T_BASEHREF';g' /etc/nginx/conf.d/default.conf; fi;
nginx -g "daemon off;";