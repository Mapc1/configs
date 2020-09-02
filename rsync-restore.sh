sudo rsync -av --delete \
  "${PWD}" \
  --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","run/*","/mnt/*","/media/*","/lost+found","/root/*","/home/*","/RECOVERY","/windows/*"} \
  "/"