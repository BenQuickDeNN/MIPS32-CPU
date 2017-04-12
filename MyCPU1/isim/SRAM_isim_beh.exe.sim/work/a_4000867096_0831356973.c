/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "E:/projects/VHDL/MyCPU1_ISE/MyCPU1/source/SRAM.vhd";
extern char *IEEE_P_3620187407;

int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_4000867096_0831356973_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    int t16;
    int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    xsi_set_current_line(23, ng0);
    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(30, ng0);
    t1 = (t0 + 868U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB14;

LAB16:    xsi_set_current_line(37, ng0);
    t1 = (t0 + 12404);
    t5 = (t0 + 2264);
    t9 = (t5 + 32U);
    t13 = *((char **)t9);
    t14 = (t13 + 40U);
    t15 = *((char **)t14);
    memcpy(t15, t1, 32U);
    xsi_driver_first_trans_fast_port(t5);

LAB15:
LAB3:    xsi_set_current_line(40, ng0);
    t1 = (t0 + 2300);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t9 = (t5 + 40U);
    t13 = *((char **)t9);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 2184);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(24, ng0);
    t1 = (t0 + 960U);
    t5 = *((char **)t1);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    if (t7 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(25, ng0);
    t1 = (t0 + 1052U);
    t9 = *((char **)t1);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)3);
    if (t11 == 1)
        goto LAB11;

LAB12:    t8 = (unsigned char)0;

LAB13:    if (t8 != 0)
        goto LAB8;

LAB10:
LAB9:    goto LAB6;

LAB8:    xsi_set_current_line(26, ng0);
    t13 = (t0 + 684U);
    t14 = *((char **)t13);
    t13 = (t0 + 592U);
    t15 = *((char **)t13);
    t13 = (t0 + 4072U);
    t16 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t15, t13);
    t17 = (t16 - 0);
    t18 = (t17 * 1);
    t19 = (32U * t18);
    t20 = (0U + t19);
    t21 = (t0 + 2228);
    t22 = (t21 + 32U);
    t23 = *((char **)t22);
    t24 = (t23 + 40U);
    t25 = *((char **)t24);
    memcpy(t25, t14, 32U);
    xsi_driver_first_trans_delta(t21, t20, 32U, 0LL);
    goto LAB9;

LAB11:    t1 = (t0 + 1028U);
    t12 = xsi_signal_has_event(t1);
    t8 = t12;
    goto LAB13;

LAB14:    xsi_set_current_line(31, ng0);
    t1 = (t0 + 960U);
    t5 = *((char **)t1);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    if (t7 != 0)
        goto LAB17;

LAB19:
LAB18:    goto LAB15;

LAB17:    xsi_set_current_line(32, ng0);
    t1 = (t0 + 1052U);
    t9 = *((char **)t1);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)3);
    if (t11 == 1)
        goto LAB23;

LAB24:    t8 = (unsigned char)0;

LAB25:    if (t8 != 0)
        goto LAB20;

LAB22:
LAB21:    goto LAB18;

LAB20:    xsi_set_current_line(33, ng0);
    t13 = (t0 + 1328U);
    t14 = *((char **)t13);
    t13 = (t0 + 592U);
    t15 = *((char **)t13);
    t13 = (t0 + 4072U);
    t16 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t15, t13);
    t17 = (t16 - 0);
    t18 = (t17 * 1);
    xsi_vhdl_check_range_of_index(0, 255, 1, t16);
    t19 = (32U * t18);
    t20 = (0 + t19);
    t21 = (t14 + t20);
    t22 = (t0 + 2264);
    t23 = (t22 + 32U);
    t24 = *((char **)t23);
    t25 = (t24 + 40U);
    t26 = *((char **)t25);
    memcpy(t26, t21, 32U);
    xsi_driver_first_trans_fast_port(t22);
    goto LAB21;

LAB23:    t1 = (t0 + 1028U);
    t12 = xsi_signal_has_event(t1);
    t8 = t12;
    goto LAB25;

}


void ieee_p_2592010699_sub_3130575329_503743352();

extern void work_a_4000867096_0831356973_init()
{
	static char *pe[] = {(void *)work_a_4000867096_0831356973_p_0};
	xsi_register_didat("work_a_4000867096_0831356973", "isim/SRAM_isim_beh.exe.sim/work/a_4000867096_0831356973.didat");
	xsi_register_executes(pe);
	xsi_register_resolution_function(1, 2, (void *)ieee_p_2592010699_sub_3130575329_503743352, 4);
}
