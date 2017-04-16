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
static const char *ng0 = "E:/projects/VHDL/MyCPU1_ISE/MyCPU1/source/CU.vhd";
extern char *STD_TEXTIO;
extern char *IEEE_P_3564397177;

void ieee_p_3564397177_sub_2889341154_91900896(char *, char *, char *, char *, char *);


static void work_a_1710397419_2762913819_p_0(char *t0)
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

LAB0:    xsi_set_current_line(77, ng0);
    t2 = (t0 + 868U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 5728);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 3892U);
    t10 = *((char **)t2);
    t2 = (t0 + 4420U);
    t11 = (t0 + 14172);
    t14 = (t13 + 0U);
    t15 = (t14 + 0U);
    *((int *)t15) = 1;
    t15 = (t14 + 4U);
    *((int *)t15) = 11;
    t15 = (t14 + 8U);
    *((int *)t15) = 1;
    t16 = (11 - 1);
    t17 = (t16 * 1);
    t17 = (t17 + 1);
    t15 = (t14 + 12U);
    *((unsigned int *)t15) = t17;
    t18 = std_textio_file_open2(t2, t11, t13, (unsigned char)0);
    *((unsigned char *)t10) = t18;
    xsi_set_current_line(79, ng0);
    t2 = (t0 + 14183);
    *((int *)t2) = 0;
    t3 = (t0 + 14187);
    *((int *)t3) = 63;
    t16 = 0;
    t19 = 63;

LAB8:    if (t16 <= t19)
        goto LAB9;

LAB11:    xsi_set_current_line(84, ng0);
    t2 = (t0 + 4420U);
    std_textio_file_close(t2);
    goto LAB3;

LAB5:    t2 = (t0 + 960U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    t9 = (!(t8));
    t1 = t9;
    goto LAB7;

LAB9:    xsi_set_current_line(80, ng0);
    t6 = (t0 + 5000);
    t10 = (t0 + 4420U);
    t11 = (t0 + 4652U);
    std_textio_readline(STD_TEXTIO, t6, t10, t11);
    xsi_set_current_line(81, ng0);
    t2 = (t0 + 5000);
    t3 = (t0 + 4652U);
    t6 = (t0 + 3960U);
    t10 = *((char **)t6);
    t6 = (t0 + 10848U);
    ieee_p_3564397177_sub_2889341154_91900896(IEEE_P_3564397177, t2, t3, t10, t6);
    xsi_set_current_line(82, ng0);
    t2 = (t0 + 3960U);
    t3 = *((char **)t2);
    t2 = (t0 + 14183);
    t20 = *((int *)t2);
    t21 = (t20 - 0);
    t17 = (t21 * 1);
    t22 = (32U * t17);
    t23 = (0U + t22);
    t6 = (t0 + 5796);
    t10 = (t6 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 40U);
    t14 = *((char **)t12);
    memcpy(t14, t3, 32U);
    xsi_driver_first_trans_delta(t6, t23, 32U, 0LL);

LAB10:    t2 = (t0 + 14183);
    t16 = *((int *)t2);
    t3 = (t0 + 14187);
    t19 = *((int *)t3);
    if (t16 == t19)
        goto LAB11;

LAB12:    t20 = (t16 + 1);
    t16 = t20;
    t6 = (t0 + 14183);
    *((int *)t6) = t16;
    goto LAB8;

}

static void work_a_1710397419_2762913819_p_1(char *t0)
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

LAB0:    xsi_set_current_line(87, ng0);

LAB3:    t1 = (t0 + 3444U);
    t2 = *((char **)t1);
    t3 = (1 - 0);
    t4 = (t3 * 1);
    t5 = (32U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = (t0 + 5832);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 32U);
    xsi_driver_first_trans_fast_port(t7);

LAB2:    t12 = (t0 + 5736);
    *((int *)t12) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1710397419_2762913819_p_2(char *t0)
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

LAB0:    xsi_set_current_line(94, ng0);
    t2 = (t0 + 868U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 5744);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(95, ng0);
    t2 = (t0 + 4028U);
    t10 = *((char **)t2);
    t2 = (t0 + 4484U);
    t11 = (t0 + 14191);
    t14 = (t13 + 0U);
    t15 = (t14 + 0U);
    *((int *)t15) = 1;
    t15 = (t14 + 4U);
    *((int *)t15) = 14;
    t15 = (t14 + 8U);
    *((int *)t15) = 1;
    t16 = (14 - 1);
    t17 = (t16 * 1);
    t17 = (t17 + 1);
    t15 = (t14 + 12U);
    *((unsigned int *)t15) = t17;
    t18 = std_textio_file_open2(t2, t11, t13, (unsigned char)0);
    *((unsigned char *)t10) = t18;
    xsi_set_current_line(96, ng0);
    t2 = (t0 + 14205);
    *((int *)t2) = 0;
    t3 = (t0 + 14209);
    *((int *)t3) = 63;
    t16 = 0;
    t19 = 63;

LAB8:    if (t16 <= t19)
        goto LAB9;

LAB11:    xsi_set_current_line(101, ng0);
    t2 = (t0 + 4484U);
    std_textio_file_close(t2);
    goto LAB3;

LAB5:    t2 = (t0 + 960U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    t9 = (!(t8));
    t1 = t9;
    goto LAB7;

LAB9:    xsi_set_current_line(97, ng0);
    t6 = (t0 + 5288);
    t10 = (t0 + 4484U);
    t11 = (t0 + 4692U);
    std_textio_readline(STD_TEXTIO, t6, t10, t11);
    xsi_set_current_line(98, ng0);
    t2 = (t0 + 5288);
    t3 = (t0 + 4692U);
    t6 = (t0 + 4096U);
    t10 = *((char **)t6);
    t6 = (t0 + 10864U);
    ieee_p_3564397177_sub_2889341154_91900896(IEEE_P_3564397177, t2, t3, t10, t6);
    xsi_set_current_line(99, ng0);
    t2 = (t0 + 4096U);
    t3 = *((char **)t2);
    t2 = (t0 + 14205);
    t20 = *((int *)t2);
    t21 = (t20 - 0);
    t17 = (t21 * 1);
    t22 = (8U * t17);
    t23 = (0U + t22);
    t6 = (t0 + 5868);
    t10 = (t6 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 40U);
    t14 = *((char **)t12);
    memcpy(t14, t3, 8U);
    xsi_driver_first_trans_delta(t6, t23, 8U, 0LL);

LAB10:    t2 = (t0 + 14205);
    t16 = *((int *)t2);
    t3 = (t0 + 14209);
    t19 = *((int *)t3);
    if (t16 == t19)
        goto LAB11;

LAB12:    t20 = (t16 + 1);
    t16 = t20;
    t6 = (t0 + 14205);
    *((int *)t6) = t16;
    goto LAB8;

}

static void work_a_1710397419_2762913819_p_3(char *t0)
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

LAB0:    xsi_set_current_line(111, ng0);
    t2 = (t0 + 868U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 5752);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(112, ng0);
    t2 = (t0 + 4164U);
    t10 = *((char **)t2);
    t2 = (t0 + 4548U);
    t11 = (t0 + 14213);
    t14 = (t13 + 0U);
    t15 = (t14 + 0U);
    *((int *)t15) = 1;
    t15 = (t14 + 4U);
    *((int *)t15) = 14;
    t15 = (t14 + 8U);
    *((int *)t15) = 1;
    t16 = (14 - 1);
    t17 = (t16 * 1);
    t17 = (t17 + 1);
    t15 = (t14 + 12U);
    *((unsigned int *)t15) = t17;
    t18 = std_textio_file_open2(t2, t11, t13, (unsigned char)0);
    *((unsigned char *)t10) = t18;
    xsi_set_current_line(113, ng0);
    t2 = (t0 + 14227);
    *((int *)t2) = 0;
    t3 = (t0 + 14231);
    *((int *)t3) = 63;
    t16 = 0;
    t19 = 63;

LAB8:    if (t16 <= t19)
        goto LAB9;

LAB11:    xsi_set_current_line(118, ng0);
    t2 = (t0 + 4548U);
    std_textio_file_close(t2);
    goto LAB3;

LAB5:    t2 = (t0 + 960U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    t9 = (!(t8));
    t1 = t9;
    goto LAB7;

LAB9:    xsi_set_current_line(114, ng0);
    t6 = (t0 + 5432);
    t10 = (t0 + 4548U);
    t11 = (t0 + 4732U);
    std_textio_readline(STD_TEXTIO, t6, t10, t11);
    xsi_set_current_line(115, ng0);
    t2 = (t0 + 5432);
    t3 = (t0 + 4732U);
    t6 = (t0 + 4232U);
    t10 = *((char **)t6);
    t6 = (t0 + 10880U);
    ieee_p_3564397177_sub_2889341154_91900896(IEEE_P_3564397177, t2, t3, t10, t6);
    xsi_set_current_line(116, ng0);
    t2 = (t0 + 4232U);
    t3 = *((char **)t2);
    t2 = (t0 + 14227);
    t20 = *((int *)t2);
    t21 = (t20 - 0);
    t17 = (t21 * 1);
    t22 = (8U * t17);
    t23 = (0U + t22);
    t6 = (t0 + 5904);
    t10 = (t6 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 40U);
    t14 = *((char **)t12);
    memcpy(t14, t3, 8U);
    xsi_driver_first_trans_delta(t6, t23, 8U, 0LL);

LAB10:    t2 = (t0 + 14227);
    t16 = *((int *)t2);
    t3 = (t0 + 14231);
    t19 = *((int *)t3);
    if (t16 == t19)
        goto LAB11;

LAB12:    t20 = (t16 + 1);
    t16 = t20;
    t6 = (t0 + 14227);
    *((int *)t6) = t16;
    goto LAB8;

}


void ieee_p_2592010699_sub_3130575329_503743352();

void ieee_p_2592010699_sub_3130575329_503743352();

extern void work_a_1710397419_2762913819_init()
{
	static char *pe[] = {(void *)work_a_1710397419_2762913819_p_0,(void *)work_a_1710397419_2762913819_p_1,(void *)work_a_1710397419_2762913819_p_2,(void *)work_a_1710397419_2762913819_p_3};
	xsi_register_didat("work_a_1710397419_2762913819", "isim/testComputer_isim_beh.exe.sim/work/a_1710397419_2762913819.didat");
	xsi_register_executes(pe);
	xsi_register_resolution_function(1, 2, (void *)ieee_p_2592010699_sub_3130575329_503743352, 4);
	xsi_register_resolution_function(4, 2, (void *)ieee_p_2592010699_sub_3130575329_503743352, 4);
}
