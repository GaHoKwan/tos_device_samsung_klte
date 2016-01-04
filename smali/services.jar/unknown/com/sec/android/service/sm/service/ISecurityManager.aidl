package com.sec.android.service.sm.service;


interface ISecurityManager{

    boolean isCCMode();
    int enableMDFPPMode(in boolean enable);
    boolean isFIPSMode();
    String getCCModeStatus();
    int initCCMode();
    int verifyVPN();

}