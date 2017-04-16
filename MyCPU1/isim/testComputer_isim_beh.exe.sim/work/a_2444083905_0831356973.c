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
extern char *STD_TEXTIO;
extern char *IEEE_P_3564397177;
extern char *IEEE_P_3620187407;

void ieee_p_3564397177_sub_2889341154_91900896(char *, char *, char *, char *, char *);
int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_2444083905_0831356973_p_0(char *t0)
{
    char t13[16];
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t14;
    char *t15;
    int t16;
    unsigned int t17;
    unsigned char t18;
    int t19;
    int t20;
    int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned char t24;
    unsigned char t25;
    unsigned char t26;
    unsigned char t27;
    char *t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;

LAB0:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 1236U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    t2 = (t0 + 776U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB15;

LAB16:    t1 = (unsigned char)0;

LAB17:    if (t1 != 0)
        goto LAB13;

LAB14:
LAB3:    t2 = (t0 + 2988);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 1776U);
    t10 = *((char **)t2);
    t2 = (t0 + 2032U);
    t11 = (t0 + 14056);
    t14 = (t13 + 0U);
    t15 = (t14 + 0U);
    *((int *)t15) = 1;
    t15 = (t14 + 4U);
    *((int *)t15) = 25;
    t15 = (t14 + 8U);
    *((int *)t15) = 1;
    t16 = (25 - 1);
    t17 = (t16 * 1);
    t17 = (t17 + 1);
    t15 = (t14 + 12U);
    *((unsigned int *)t15) = t17;
    t18 = std_textio_file_open2(t2, t11, t13, (unsigned char)0);
    *((unsigned char *)t10) = t18;
    xsi_set_current_line(35, ng0);
    t2 = (t0 + 14081);
    *((int *)t2) = 0;
    t3 = (t0 + 14085);
    *((int *)t3) = 127;
    t16 = 0;
    t19 = 127;

LAB8:    if (t16 <= t19)
        goto LAB9;

LAB11:    goto LAB3;

LAB5:    t2 = (t0 + 776U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    t9 = (!(t8));
    t1 = t9;
    goto LAB7;

LAB9:    xsi_set_current_line(36, ng0);
    t6 = (t0 + 2404);
    t10 = (t0 + 2032U);
    t11 = (t0 + 2136U);
    std_textio_readline(STD_TEXTIO, t6, t10, t11);
    xsi_set_current_line(37, ng0);
    t2 = (t0 + 2404);
    t3 = (t0 + 2136U);
    t6 = (t0 + 1844U);
    t10 = *((char **)t6);
    t6 = (t0 + 5696U);
    ieee_p_3564397177_sub_2889341154_91900896(IEEE_P_3564397177, t2, t3, t10, t6);
    xsi_set_current_line(38, ng0);
    t2 = (t0 + 1844U);
    t3 = *((char **)t2);
    t2 = (t0 + 14081);
    t20 = *((int *)t2);
    t21 = (t20 - 0);
    t17 = (t21 * 1);
    t22 = (32U * t17);
    t23 = (0U + t22);
    t6 = (t0 + 3048);
    t10 = (t6 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 40U);
    t14 = *((char **)t12);
    memcpy(t14, t3, 32U);
    xsi_driver_first_trans_delta(t6, t23, 32U, 0LL);

LAB10:    t2 = (t0 + 14081);
    t16 = *((int *)t2);
    t3 = (t0 + 14085);
    t19 = *((int *)t3);
    if (t16 == t19)
        goto LAB11;

LAB12:    t20 = (t16 + 1);
    t16 = t20;
    t6 = (t0 + 14081);
    *((int *)t6) = t16;
    goto LAB8;

LAB13:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 1052U);
    t10 = *((char **)t2);
    t9 = *((unsigned char *)t10);
    t18 = (t9 == (unsigned char)3);
    if (t18 != 0)
        goto LAB18;

LAB20:
LAB19:    goto LAB3;

LAB15:    t2 = (t0 + 1236U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)2);
    t1 = t8;
    goto LAB17;

LAB18:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1144U);
    t11 = *((char **)t2);
    t25 = *((unsigned char *)t11);
    t26 = (t25 == (unsigned char)3);
    if (t26 == 1)
        goto LAB24;

LAB25:    t24 = (unsigned char)0;

LAB26:    if (t24 != 0)
        goto LAB21;

LAB23:
LAB22:    goto LAB19;

LAB21:    xsi_set_current_line(43, ng0);
    t12 = (t0 + 3084);
    t14 = (t12 + 32U);
    t15 = *((char **)t14);
    t28 = (t15 + 40U);
    t29 = *((char **)t28);
    *((unsigned char *)t29) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t12);
    xsi_set_current_line(44, ng0);
    t2 = (t0 + 684U);
    t3 = *((char **)t2);
    t2 = (t0 + 592U);
    t6 = *((char **)t2);
    t17 = (31 - 7);
    t22 = (t17 * 1U);
    t23 = (0 + t22);
    t2 = (t6 + t23);
    t10 = (t13 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 7;
    t11 = (t10 + 4U);
    *((int *)t11) = 0;
    t11 = (t10 + 8U);
    *((int *)t11) = -1;
    t16 = (0 - 7);
    t30 = (t16 * -1);
    t30 = (t30 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t30;
    t19 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t2, t13);
    t20 = (t19 - 0);
    t30 = (t20 * 1);
    t31 = (32U * t30);
    t32 = (0U + t31);
    t11 = (t0 + 3048);
    t12 = (t11 + 32U);
    t14 = *((char **)t12);
    t15 = (t14 + 40U);
    t28 = *((char **)t15);
    memcpy(t28, t3, 32U);
    xsi_driver_first_trans_delta(t11, t32, 32U, 0LL);
    xsi_set_current_line(45, ng0);
    t2 = (t0 + 3084);
    t3 = (t2 + 32U);
    t6 = *((char **)t3);
    t10 = (t6 + 40U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB22;

LAB24:    t2 = (t0 + 1120U);
    t27 = xsi_signal_has_event(t2);
    t24 = t27;
    goto LAB26;

}

static void work_a_2444083905_0831356973_p_1(char *t0)
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

LAB0:    xsi_set_current_line(52, ng0);

LAB3:    t1 = (t0 + 1604U);
    t2 = *((char **)t1);
    t3 = (0 - 0);
    t4 = (t3 * 1);
    t5 = (32U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = (t0 + 3120);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 32U);
    xsi_driver_first_trans_fast_port(t7);

LAB2:    t12 = (t0 + 2996);
    *((int *)t12) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2444083905_0831356973_p_2(char *t0)
{
    char t18[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    int t19;
    unsigned int t20;
    int t21;
    int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    char *t26;

LAB0:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 868U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 14153);
    t5 = (t0 + 3192);
    t8 = (t5 + 32U);
    t11 = *((char **)t8);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 32U);
    xsi_driver_first_trans_fast_port(t5);

LAB3:    t1 = (t0 + 3004);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 960U);
    t5 = *((char **)t1);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    if (t7 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 14121);
    t5 = (t0 + 3192);
    t8 = (t5 + 32U);
    t11 = *((char **)t8);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 32U);
    xsi_driver_first_trans_fast_port(t5);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1052U);
    t8 = *((char **)t1);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 14089);
    t5 = (t0 + 3192);
    t8 = (t5 + 32U);
    t11 = *((char **)t8);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 32U);
    xsi_driver_first_trans_fast_port(t5);

LAB9:    goto LAB6;

LAB8:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 3156);
    t11 = (t1 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 40U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(62, ng0);
    t1 = (t0 + 1604U);
    t2 = *((char **)t1);
    t1 = (t0 + 592U);
    t5 = *((char **)t1);
    t15 = (31 - 7);
    t16 = (t15 * 1U);
    t17 = (0 + t16);
    t1 = (t5 + t17);
    t8 = (t18 + 0U);
    t11 = (t8 + 0U);
    *((int *)t11) = 7;
    t11 = (t8 + 4U);
    *((int *)t11) = 0;
    t11 = (t8 + 8U);
    *((int *)t11) = -1;
    t19 = (0 - 7);
    t20 = (t19 * -1);
    t20 = (t20 + 1);
    t11 = (t8 + 12U);
    *((unsigned int *)t11) = t20;
    t21 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t1, t18);
    t22 = (t21 - 0);
    t20 = (t22 * 1);
    xsi_vhdl_check_range_of_index(0, 255, 1, t21);
    t23 = (32U * t20);
    t24 = (0 + t23);
    t11 = (t2 + t24);
    t12 = (t0 + 3192);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    t25 = (t14 + 40U);
    t26 = *((char **)t25);
    memcpy(t26, t11, 32U);
    xsi_driver_first_trans_fast_port(t12);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 3156);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t8 = (t5 + 40U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB9;

}


void ieee_p_2592010699_sub_3130575329_503743352();

extern void work_a_2444083905_0831356973_init()
{
	static char *pe[] = {(void *)work_a_2444083905_0831356973_p_0,(void *)work_a_2444083905_0831356973_p_1,(void *)work_a_2444083905_0831356973_p_2};
	xsi_register_didat("work_a_2444083905_0831356973", "isim/testComputer_isim_beh.exe.sim/work/a_2444083905_0831356973.didat");
	xsi_register_executes(pe);
	xsi_register_resolution_function(1, 2, (void *)ieee_p_2592010699_sub_3130575329_503743352, 4);
}
