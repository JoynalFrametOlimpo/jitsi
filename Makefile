new:
	docker-compose stop && docker-compose rm -f && rm -rf jitsi-meet-cfg/ && docker-compose up -d \
	&& cp customize/interface_config.js jitsi-meet-cfg/web/ \
	&& cp customize/config.js jitsi-meet-cfg/web/ \
	&& docker-compose restart \
        && cp -rfl /etc/letsencrypt/live/ jitsi-meet-cfg/web/letsencrypt/ \
	&& docker logs -f jitsi_jvb_1 --tail 20
