build:
	sudo docker build -t ktpreader:0.1 .
	sudo docker run ktpreader:0.1

shell:
	sudo docker run -ti --rm --entrypoint /bin/bash\
	         --mount type=bind,source=$(shell pwd),target=/app ktpreader:0.1
