obj-m := imp1_k.o

KERNELBUILD := /lib/modules/`uname -r`/build

default:
	@echo "BUILE Kmod"
	@make -C $(KERNELBUILD) M=$(shell pwd) modules
	gcc -o imp1_u imp1_u.c

clean:
	@echo " CLEAN kmod"
	@rm -rf *.o
	@rm -rf .depend .*.cmd *.ko *.mod.c .tmp_versions *.symvers .*.d *.order \
			*.unsigned imp1_u
