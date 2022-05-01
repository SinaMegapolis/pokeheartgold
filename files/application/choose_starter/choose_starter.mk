CHOOSE_STARTER_DIR := files/application/choose_starter
CHOOSE_STARTER_MAIN_DIR := $(CHOOSE_STARTER_DIR)/choose_starter_main_res
CHOOSE_STARTER_MAIN_NARC := $(CHOOSE_STARTER_MAIN_DIR).narc
CHOOSE_STARTER_SUB_DIR := $(CHOOSE_STARTER_DIR)/choose_starter_sub_res
CHOOSE_STARTER_SUB_NARC := $(CHOOSE_STARTER_SUB_DIR).narc

$(CHOOSE_STARTER_MAIN_NARC): \
	$(CHOOSE_STARTER_MAIN_DIR)/00_tt_tabletop.NSBMD \
	$(CHOOSE_STARTER_MAIN_DIR)/01_tt_turntable.NSBMD \
	$(CHOOSE_STARTER_MAIN_DIR)/02_tt_ball.NSBMD \
	$(CHOOSE_STARTER_MAIN_DIR)/03_tt_ball_ef.NSBMD \
	$(CHOOSE_STARTER_MAIN_DIR)/04_tt_ball_ef.NSBCA \
	$(CHOOSE_STARTER_MAIN_DIR)/05_tt_ball.NSBCA \
	$(CHOOSE_STARTER_MAIN_DIR)/06_ball_rock.NSBCA \
	$(CHOOSE_STARTER_MAIN_DIR)/07_tt_turntable.NSBTA \
	$(CHOOSE_STARTER_MAIN_DIR)/08_window.NCLR \
	$(CHOOSE_STARTER_MAIN_DIR)/09_bgl5.NCLR \
	$(CHOOSE_STARTER_MAIN_DIR)/10_bgl5.NCGR \
	$(CHOOSE_STARTER_MAIN_DIR)/11_bgl5.NSCR \
	$(CHOOSE_STARTER_MAIN_DIR)/12_bgl2.NCLR \
	$(CHOOSE_STARTER_MAIN_DIR)/13_bgl2.NCGR \
	$(CHOOSE_STARTER_MAIN_DIR)/14_bgl2.NSCR \
	$(CHOOSE_STARTER_MAIN_DIR)/15_bgl6.NCLR \
	$(CHOOSE_STARTER_MAIN_DIR)/16_bgl6.NCGR \
	$(CHOOSE_STARTER_MAIN_DIR)/17_bgl6.NSCR

$(CHOOSE_STARTER_SUB_NARC): \
	$(CHOOSE_STARTER_SUB_DIR)/choose_starter_sub_res_00000000.NCGR \
	$(CHOOSE_STARTER_SUB_DIR)/choose_starter_sub_res_00000001.NSCR \
	$(CHOOSE_STARTER_SUB_DIR)/choose_starter_sub_res_00000002.NCLR \
	$(CHOOSE_STARTER_SUB_DIR)/choose_starter_sub_res_00000003.NCGR \
	$(CHOOSE_STARTER_SUB_DIR)/choose_starter_sub_res_00000004.NSCR \
	$(CHOOSE_STARTER_SUB_DIR)/choose_starter_sub_res_00000005.NCLR \
	$(CHOOSE_STARTER_SUB_DIR)/choose_starter_sub_res_00000006.NCLR \
	$(CHOOSE_STARTER_SUB_DIR)/choose_starter_sub_res_00000007.NCLR \
	$(CHOOSE_STARTER_SUB_DIR)/choose_starter_sub_res_00000008.NCLR \
	$(CHOOSE_STARTER_SUB_DIR)/choose_starter_sub_res_00000009.NCGR \
	$(CHOOSE_STARTER_SUB_DIR)/choose_starter_sub_res_00000010.NCER \
	$(CHOOSE_STARTER_SUB_DIR)/choose_starter_sub_res_00000011.NCGR \
	$(CHOOSE_STARTER_SUB_DIR)/choose_starter_sub_res_00000012.NCER \
	$(CHOOSE_STARTER_SUB_DIR)/choose_starter_sub_res_00000013.NANR \
	$(CHOOSE_STARTER_SUB_DIR)/choose_starter_sub_res_00000014.NCGR \
	$(CHOOSE_STARTER_SUB_DIR)/choose_starter_sub_res_00000015.NCER \
	$(CHOOSE_STARTER_SUB_DIR)/choose_starter_sub_res_00000016.NANR \
	$(CHOOSE_STARTER_SUB_DIR)/choose_starter_sub_res_00000017.NCGR \
	$(CHOOSE_STARTER_SUB_DIR)/choose_starter_sub_res_00000018.NCER \
	$(CHOOSE_STARTER_SUB_DIR)/choose_starter_sub_res_00000019.NANR \
	$(CHOOSE_STARTER_SUB_DIR)/choose_starter_sub_res_00000020.NCGR \
	$(CHOOSE_STARTER_SUB_DIR)/choose_starter_sub_res_00000021.NCER \
	$(CHOOSE_STARTER_SUB_DIR)/choose_starter_sub_res_00000022.NANR \
	$(CHOOSE_STARTER_SUB_DIR)/choose_starter_sub_res_00000023.NCGR \
	$(CHOOSE_STARTER_SUB_DIR)/choose_starter_sub_res_00000024.NCER \
	$(CHOOSE_STARTER_SUB_DIR)/choose_starter_sub_res_00000025.NANR

FS_CLEAN_TARGETS += $(CHOOSE_STARTER_MAIN_NARC) $(CHOOSE_STARTER_SUB_NARC)
