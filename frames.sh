ffmpeg -copyts -i "/usr/src/app/file/hello.mp4" -r 1000 -vf "mpdecimate=hi=64*12*15:lo=64*5*15:frac=1" -frame_pts true -vsync vfr -q:v 5 "/usr/src/app/frames/%04d.jpg"
