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
static const char *ng0 = "E:/projects/VHDL/MyCPU1_ISE/MyCPU1/source/Register32.vhd";



static void work_a_0465554350_2762913819_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    unsigned char t12;
    unsigned char t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(19, ng0);
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
LAB3:    xsi_set_current_line(22, ng0);
    t2 = (t0 + 1052U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB11;

LAB12:    t1 = (unsigned char)0;

LAB13:    if (t1 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 868U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t4 = (t1 == (unsigned char)3);
    if (t4 != 0)
        goto LAB17;

LAB19:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 2196);
    t3 = (t2 + 32U);
    t7 = *((char **)t3);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);

LAB18:
LAB9:    t2 = (t0 + 2144);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(20, ng0);
    t7 = (t0 + 2196);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t7);
    goto LAB3;

LAB5:    t2 = (t0 + 844U);
    t6 = xsi_signal_has_event(t2);
    t1 = t6;
    goto LAB7;

LAB8:    xsi_set_current_line(23, ng0);
    t7 = (t0 + 868U);
    t8 = *((char **)t7);
    t12 = *((unsigned char *)t8);
    t13 = (t12 == (unsigned char)3);
    if (t13 != 0)
        goto LAB14;

LAB16:
LAB15:    goto LAB9;

LAB11:    t2 = (t0 + 1028U);
    t6 = xsi_signal_has_event(t2);
    t1 = t6;
    goto LAB13;

LAB14:    xsi_set_current_line(24, ng0);
    t7 = (t0 + 592U);
    t9 = *((char **)t7);
    t7 = (t0 + 2232);
    t10 = (t7 + 32U);
    t11 = *((char **)t10);
    t14 = (t11 + 40U);
    t15 = *((char **)t14);
    memcpy(t15, t9, 32U);
    xsi_driver_first_trans_fast(t7);
    goto LAB15;

LAB17:    xsi_set_current_line(28, ng0);
    t2 = (t0 + 2196);
    t7 = (t2 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB18;

}

static void work_a_0465554350_2762913819_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    xsi_set_current_line(36, ng0);
    t1 = (t0 + 960U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(39, ng0);
    t1 = (t0 + 3947);
    t5 = (t0 + 2268);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 32U);
    xsi_driver_first_trans_fast_port(t5);

LAB3:    t1 = (t0 + 2152);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(37, ng0);
    t1 = (t0 + 1144U);
    t5 = *((char **)t1);
    t1 = (t0 + 2268);
    t6 = (t1 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 32U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

}


extern void work_a_0465554350_2762913819_init()
{
	static char *pe[] = {(void *)work_a_0465554350_2762913819_p_0,(void *)work_a_0465554350_2762913819_p_1};
	xsi_register_didat("work_a_0465554350_2762913819", "isim/Computer_isim_beh.exe.sim/work/a_0465554350_2762913819.didat");
	xsi_register_executes(pe);
}