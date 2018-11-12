docker stop el_withlab
docker rm el_withlab
nvidia-docker run --name el_withlab -it \
  -v /home:/home \
  -p 14130:14130 el:withlab /bin/bash -c \
  "cd / &&  \
   ln -sfn /home/xuan/work/EL/jingke_vi jk \
   jupyter lab --port 14130 --ip 0.0.0.0 --allow-root"
