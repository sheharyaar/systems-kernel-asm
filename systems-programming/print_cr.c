#include <linux/module.h>

extern uint64_t print_cr0(void);
extern uint64_t print_cr2(void);
extern uint64_t print_cr3(void);

static int __init print_cr_init(void) {
	pr_info("Printing control registers:\n");
	pr_info("cr0: 0x%llx\n", print_cr0());
	pr_info("cr2: 0x%llx\n", print_cr2());
	pr_info("cr3: 0x%llx\n", print_cr3());
	return 0;
}

static void __exit print_cr_exit(void) {
	pr_info("Exiting program\n");
}

module_init(print_cr_init);
module_exit(print_cr_exit);
MODULE_LICENSE("Dual MIT/GPL");
MODULE_AUTHOR("Mohammad Shehar Yaar Tausif <sheharyaar48@gmail.com>");
