curdir=$pwd;
cd $(locate -l 1 gitolite-admin/conf);
./newrepo.sh $1
cd $curdir
