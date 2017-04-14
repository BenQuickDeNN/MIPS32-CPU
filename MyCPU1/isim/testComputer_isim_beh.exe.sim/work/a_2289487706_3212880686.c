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
static const char *ng0 = "E:/projects/VHDL/MyCPU1_ISE/MyCPU1/source/Computer.vhd";
extern char *STD_TEXTIO;
extern char *IEEE_P_3564397177;
extern char *IEEE_P_3620187407;

void ieee_p_3564397177_sub_2889341154_91900896(char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_2289487706_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(477, ng0);

LAB3:    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5656);
    t4 = (t1 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);

LAB2:    t8 = (t0 + 5604);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2289487706_3212880686_p_1(char *t0)
{
    char t10[16];
    char t15[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    int t11;
    unsigned int t12;
    unsigned char t13;
    int t14;
    int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(734, ng0);
    t1 = (t0 + 15392);
    t3 = (t0 + 5692);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 32U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(735, ng0);
    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t8 = *((unsigned char *)t2);
    t9 = (t8 == (unsigned char)3);
    if (t9 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5612);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(736, ng0);
    t1 = (t0 + 4536U);
    t3 = *((char **)t1);
    t1 = (t0 + 4792U);
    t4 = (t0 + 15424);
    t6 = (t10 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 1;
    t7 = (t6 + 4U);
    *((int *)t7) = 25;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t11 = (25 - 1);
    t12 = (t11 * 1);
    t12 = (t12 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t12;
    t13 = std_textio_file_open2(t1, t4, t10, (unsigned char)0);
    *((unsigned char *)t3) = t13;
    xsi_set_current_line(737, ng0);
    t1 = (t0 + 15449);
    *((int *)t1) = 0;
    t2 = (t0 + 15453);
    *((int *)t2) = 125;
    t11 = 0;
    t14 = 125;

LAB5:    if (t11 <= t14)
        goto LAB6;

LAB8:    xsi_set_current_line(749, ng0);
    t1 = (t0 + 4792U);
    std_textio_file_close(t1);
    xsi_set_current_line(751, ng0);
    t1 = (t0 + 15521);
    t3 = (t0 + 5908);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 32U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(752, ng0);
    t1 = (t0 + 5728);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 40U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(753, ng0);
    t1 = (t0 + 15553);
    t3 = (t0 + 5800);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 32U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(754, ng0);
    t1 = (t0 + 2616U);
    t2 = *((char **)t1);
    t1 = (t0 + 5944);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 32U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(755, ng0);
    t1 = (t0 + 5728);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 40U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(756, ng0);
    t1 = (t0 + 15585);
    t3 = (t0 + 5692);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 32U);
    xsi_driver_first_trans_fast(t3);
    goto LAB3;

LAB6:    xsi_set_current_line(738, ng0);
    t3 = (t0 + 5728);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(739, ng0);
    t1 = (t0 + 5308);
    t2 = (t0 + 4792U);
    t3 = (t0 + 4896U);
    std_textio_readline(STD_TEXTIO, t1, t2, t3);
    xsi_set_current_line(740, ng0);
    t1 = (t0 + 5308);
    t2 = (t0 + 4896U);
    t3 = (t0 + 4604U);
    t4 = *((char **)t3);
    t3 = (t0 + 14592U);
    ieee_p_3564397177_sub_2889341154_91900896(IEEE_P_3564397177, t1, t2, t4, t3);
    xsi_set_current_line(742, ng0);
    t1 = (t0 + 4604U);
    t2 = *((char **)t1);
    t1 = (t0 + 5764);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 32U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(743, ng0);
    t1 = (t0 + 15457);
    t3 = (t0 + 5800);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 32U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(744, ng0);
    t1 = (t0 + 2340U);
    t2 = *((char **)t1);
    t1 = (t0 + 5836);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 32U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(745, ng0);
    t1 = (t0 + 4604U);
    t2 = *((char **)t1);
    t1 = (t0 + 5872);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 32U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(746, ng0);
    t1 = (t0 + 5728);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 40U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(747, ng0);
    t1 = (t0 + 2340U);
    t2 = *((char **)t1);
    t1 = (t0 + 14240U);
    t3 = (t0 + 15489);
    t5 = (t15 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 0;
    t6 = (t5 + 4U);
    *((int *)t6) = 31;
    t6 = (t5 + 8U);
    *((int *)t6) = 1;
    t16 = (31 - 0);
    t12 = (t16 * 1);
    t12 = (t12 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t12;
    t6 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t10, t2, t1, t3, t15);
    t7 = (t10 + 12U);
    t12 = *((unsigned int *)t7);
    t17 = (1U * t12);
    t8 = (32U != t17);
    if (t8 == 1)
        goto LAB9;

LAB10:    t18 = (t0 + 5692);
    t19 = (t18 + 32U);
    t20 = *((char **)t19);
    t21 = (t20 + 40U);
    t22 = *((char **)t21);
    memcpy(t22, t6, 32U);
    xsi_driver_first_trans_fast(t18);

LAB7:    t1 = (t0 + 15449);
    t11 = *((int *)t1);
    t2 = (t0 + 15453);
    t14 = *((int *)t2);
    if (t11 == t14)
        goto LAB8;

LAB11:    t16 = (t11 + 1);
    t11 = t16;
    t3 = (t0 + 15449);
    *((int *)t3) = t11;
    goto LAB5;

LAB9:    xsi_size_not_matching(32U, t17, 0);
    goto LAB10;

}


extern void work_a_2289487706_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2289487706_3212880686_p_0,(void *)work_a_2289487706_3212880686_p_1};
	xsi_register_didat("work_a_2289487706_3212880686", "isim/testComputer_isim_beh.exe.sim/work/a_2289487706_3212880686.didat");
	xsi_register_executes(pe);
}
