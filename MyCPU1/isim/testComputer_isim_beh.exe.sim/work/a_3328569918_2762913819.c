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
static const char *ng0 = "E:/projects/VHDL/MyCPU1_ISE/MyCPU1/source/RegisterField.vhd";
extern char *IEEE_P_3620187407;

int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_3328569918_2762913819_p_0(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    xsi_set_current_line(22, ng0);

LAB3:    t1 = (t0 + 1236U);
    t2 = *((char **)t1);
    t3 = (0 - 0);
    t4 = (t3 * 1);
    t5 = (32U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = (t0 + 2440);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 32U);
    xsi_driver_first_trans_fast_port(t7);

LAB2:    t12 = (t0 + 2380);
    *((int *)t12) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3328569918_2762913819_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    int t13;
    int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(25, ng0);
    t1 = (t0 + 868U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 2388);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(26, ng0);
    t1 = (t0 + 1052U);
    t6 = *((char **)t1);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    if (t8 == 1)
        goto LAB8;

LAB9:    t5 = (unsigned char)0;

LAB10:    if (t5 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(27, ng0);
    t10 = (t0 + 592U);
    t11 = *((char **)t10);
    t10 = (t0 + 1144U);
    t12 = *((char **)t10);
    t10 = (t0 + 4512U);
    t13 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t12, t10);
    t14 = (t13 - 0);
    t15 = (t14 * 1);
    t16 = (32U * t15);
    t17 = (0U + t16);
    t18 = (t0 + 2476);
    t19 = (t18 + 32U);
    t20 = *((char **)t19);
    t21 = (t20 + 40U);
    t22 = *((char **)t21);
    memcpy(t22, t11, 32U);
    xsi_driver_first_trans_delta(t18, t17, 32U, 0LL);
    goto LAB6;

LAB8:    t1 = (t0 + 1028U);
    t9 = xsi_signal_has_event(t1);
    t5 = t9;
    goto LAB10;

}

static void work_a_3328569918_2762913819_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    int t7;
    int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    xsi_set_current_line(34, ng0);
    t1 = (t0 + 960U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(37, ng0);
    t1 = (t0 + 5632);
    t5 = (t0 + 2512);
    t6 = (t5 + 32U);
    t12 = *((char **)t6);
    t13 = (t12 + 40U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 32U);
    xsi_driver_first_trans_fast_port(t5);

LAB3:    t1 = (t0 + 2396);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(35, ng0);
    t1 = (t0 + 1236U);
    t5 = *((char **)t1);
    t1 = (t0 + 1144U);
    t6 = *((char **)t1);
    t1 = (t0 + 4512U);
    t7 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t6, t1);
    t8 = (t7 - 0);
    t9 = (t8 * 1);
    xsi_vhdl_check_range_of_index(0, 31, 1, t7);
    t10 = (32U * t9);
    t11 = (0 + t10);
    t12 = (t5 + t11);
    t13 = (t0 + 2512);
    t14 = (t13 + 32U);
    t15 = *((char **)t14);
    t16 = (t15 + 40U);
    t17 = *((char **)t16);
    memcpy(t17, t12, 32U);
    xsi_driver_first_trans_fast_port(t13);
    goto LAB3;

}


void ieee_p_2592010699_sub_3130575329_503743352();

extern void work_a_3328569918_2762913819_init()
{
	static char *pe[] = {(void *)work_a_3328569918_2762913819_p_0,(void *)work_a_3328569918_2762913819_p_1,(void *)work_a_3328569918_2762913819_p_2};
	xsi_register_didat("work_a_3328569918_2762913819", "isim/testComputer_isim_beh.exe.sim/work/a_3328569918_2762913819.didat");
	xsi_register_executes(pe);
	xsi_register_resolution_function(1, 2, (void *)ieee_p_2592010699_sub_3130575329_503743352, 4);
}
