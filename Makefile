#n64decomp/ido
default: all


#Nice Colors
GREEN   := \033[0;32m
NO_COL  := \033[0m


#AVOID_UB ?= 1

#WARNING: x86 target is very buggy consider it!

#IRIX
ARCH ?= x86


#We don't have to rebuild libmld
ifeq ($(ARCH),mips)
SRC_DIRS := . src src/usplit
else
SRC_DIRS := . src src/usplit src/libmld
endif

# Build uopt with ncurses debugging
#DEBUG ?= 1

ifeq ($(ARCH),x86)
CC := gcc

#ENDIANNESS := -DUOPT_LITTLE_ENDIAN

ARCH_FLAGS := -m32 -mfpmath=sse -msse2 -g0 -fPIC -DNONE_COMPLETELY_MATCH
    ifeq ($(DEBUG),1)
        ARCH_FLAGS += -lelf -DUOPT_DEBUG -lm
        OPTIMIZATION := -Og -flto=auto -ggdb3
        #OPTIMIZATION := -O0 -ggdb3
    else
        OPTIMIZATION := -fPIC -O2 -march=native -mtune=native -flto=auto
    endif
else ifeq ($(ARCH),mips)

CC := /usr/bin/qemu-irix -silent -L tools/irix/ tools/irix/usr/bin/cc #Recompiling with ido7.1, anyway it still being a match
ARCH_FLAGS := -KPIC -mips1 -Xcpluscomm -signed -I tools/irix/usr/include -lmld
OPTIMIZATION := -O2 -g0

else
$(error unsupported arch "$(ARCH)")
endif

CFLAGS := -I include -I src $(ARCH_FLAGS) $(OPTIMIZATION)
LDFLAGS := $(ARCH_FLAGS) $(OPTIMIZATION) 

ifeq ($(AVOID_UB),1)
    CFLAGS += -DAVOID_UB
endif

ifeq ($(ARCH),mips)
BUILD_DIR := build_mips
else
BUILD_DIR := build
endif

ALL_DIRS := $(addprefix $(BUILD_DIR)/,$(SRC_DIRS))

C_FILES := $(foreach dir,$(SRC_DIRS),$(wildcard $(dir)/*.c))
O_FILES := $(addprefix $(BUILD_DIR)/,$(C_FILES:.c=.o))
DEP_FILES := $(O_FILES:.o=.d)

# Ensure build directories exist before compiling anything
DUMMY != mkdir -p $(ALL_DIRS)

TARGET := $(BUILD_DIR)/makerom

all: $(TARGET)

#Figure out this
$(TARGET): $(O_FILES)
	@$(CC)  $^  $(LDFLAGS) -o $@
	@printf "[$(GREEN) INFO: Linking Objects -> $@ $< $(NO_COL)]\n"
$(BUILD_DIR)/%.o: %.c
	@$(CC) -c  $(CFLAGS) -o $@ $<
	@printf "[$(GREEN) INFO: Compiling Objects -> $@ $< $(NO_COL)]\n"

clean:
	$(RM) -r $(BUILD_DIR)

.PHONY: all clean default

-include $(DEP_FILES)
