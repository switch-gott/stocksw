ifeq ($(filter y,$(CONFIG_SEC_GTS3LLTE_PROJECT)),y)
dtb-y = 		 msm8996-sec-gts3llte-eur-kor-r00.dtb \
			 msm8996-sec-gts3llte-eur-kor-r02.dtb \
			 msm8996-sec-gts3llte-eur-kor-r04.dtb \
			 msm8996-sec-gts3llte-eur-kor-r05.dtb
endif

ifeq ($(CONFIG_ARM64),y)
always          := $(dtb-y)
subdir-y        := $(dts-dirs)
else
targets += dtbs
targets += $(addprefix ../, $(dtb-y))

$(obj)/../%.dtb: $(src)/%.dts FORCE
        $(call if_changed_dep,dtc)

dtbs: $(addprefix $(obj)/,$(dtb-y))
endif
clean-files := *.dtb *.reverse.dts
