# use instructional server
* enable search path to lab4 specific riscv-toolchain and spike: `source ~cs152/sp23/cs152.lab4.bashrc`
* go to your lab4 root: `cd /scratch/$USER`
* clone the lab4: `git clone ~cs152/sp23/lab4.git`
* `cd lab4`
* `cd benchmarks`
* `make clean`
* `make csaxpy.riscv.out`
* NOTE: you might need to install dtc for spike to run, I have one in `$HOME/bin` copied from a centos 7 machine (rpm -ql dtc)

# use non-instructional machine
* create a CentOS 7 box, minimal install works fine. (CentOS 7 has the runtime support to the lab4-install tools)
* clone this repo as folder `lab4`
* untar `/Dropbox/shared/courses/ucb/CS152/cs152_sp23_lab4/lab4-install.tgz`, add `lab4-install/bin` into `$PATH`
* `yum install dtc -y`, this is needed by the spike tool
* `yum install libmpc -y`, this is needed by the riscv toolchain
* `cd lab4/benchmarks`
* `make clean`
* `make csaxpy.riscv.out`

# vm ready to use
* `/Dropbox/shared/courses/ucb/CS152/cs152_sp23_lab4/cs152_sp23_lab4_vm`
