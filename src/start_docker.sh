docker stop el_withlab
docker rm el_withlab
nvidia-docker run --name detectron_tutorial -it \
  -v /home:/home \
  -p 14130:14130 el:withlab /bin/bash -c "cd / && jupyter lab --port 14130 --ip 0.0.0.0 --allow-root"
