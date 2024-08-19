
ORIGIN = $(shell pwd)
sync:
	cd $(ORIGIN)/scripts && go run main.go && cd $(ORIGIN)

build:
	hugo

serve:
	hugo server

deploy-preview: build
	firebase hosting:channel:deploy v2_preview

deploy: build
	firebase deploy --only hosting
