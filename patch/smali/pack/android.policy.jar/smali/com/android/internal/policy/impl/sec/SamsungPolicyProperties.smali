.class public Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;
.super Ljava/lang/Object;
.source "SamsungPolicyProperties.java"


# static fields
.field private static mEasyOneHandEnabled:Z

.field private static mEasyOneHandRunning:Z

.field private static mHasNumericKeyboard:Z

.field private static mHasNumericKeyboardChecked:Z

.field private static mHasQwertyKeyboard:Z

.field private static mHasQwertyKeyboardChecked:Z

.field private static mHasSPenFeature:Z

.field private static mHasSPenFeatureChecked:Z

.field private static mIsChinaFeature:Z

.field private static mIsChinaFeatureChecked:Z

.field private static mPendingThresholdTime:I

.field private static mPendingThresholdTimeChecked:Z

.field private static mScreenShotChordEnableChecked:Z

.field private static mScreenShotChordEnabled:Z

.field private static mVoiceTalkDefaultLaunch:Z

.field private static mVoiceTalkDefaultLaunchChecked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mVoiceTalkDefaultLaunch:Z

    .line 42
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mVoiceTalkDefaultLaunchChecked:Z

    .line 44
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasSPenFeature:Z

    .line 45
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasSPenFeatureChecked:Z

    .line 47
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasQwertyKeyboard:Z

    .line 48
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasQwertyKeyboardChecked:Z

    .line 50
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasNumericKeyboard:Z

    .line 51
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasNumericKeyboardChecked:Z

    .line 56
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mScreenShotChordEnabled:Z

    .line 57
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mScreenShotChordEnableChecked:Z

    .line 59
    sput v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mPendingThresholdTime:I

    .line 60
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mPendingThresholdTimeChecked:Z

    .line 62
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mEasyOneHandEnabled:Z

    .line 63
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mEasyOneHandRunning:Z

    .line 65
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mIsChinaFeature:Z

    .line 66
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mIsChinaFeatureChecked:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 265
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "isVoiceTalkDefaultLaunch="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isVoiceTalkDefaultLaunch(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 266
    const-string v0, " isCameraSpecialized="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 267
    const-string v0, " isUseVibetonz="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isUseVibetonz()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 268
    const-string v0, " hasSPenFeature="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 269
    const-string v0, " hasQwertyKeyboard="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasQwertyKeyboard(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 270
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "hasNumericKeyboard="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasNumericKeyboard(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 271
    const-string v0, " isScreenShotChordEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isScreenShotChordEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 272
    const-string v0, " isScreenRecordChordEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isScreenRecordChordEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 273
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "isOneTouchReportChordEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isOneTouchReportChordEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 274
    const-string v0, " isSupportSPC="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportSPC()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 275
    const-string v0, " isSupportDMBAntennaDetach="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportDMBAntennaDetach()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 276
    const-string v0, " isSupportDTVAntennaDetach="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportDTVAntennaDetach()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 277
    const-string v0, " isBlockHomeKey="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isBlockHomeKey(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 278
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "needInitializationWhenSystemReady="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->needInitializationWhenSystemReady()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 279
    const-string v0, " getKeyPendingThresholdTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->getKeyPendingThresholdTime()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 280
    const-string v0, " isMultiSIMDevice="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isMultiSIMDevice()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 281
    const-string v0, " isStatusBarHoverOpenEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isStatusBarHoverOpenEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 282
    const-string v0, " hasHardMenuBackKey="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasHardMenuBackKey()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 283
    return-void
.end method

.method public static getKeyPendingThresholdTime()I
    .locals 2

    .prologue
    .line 186
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mPendingThresholdTimeChecked:Z

    if-nez v1, :cond_0

    .line 188
    :try_start_0
    const-string v1, "0"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mPendingThresholdTime:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mPendingThresholdTimeChecked:Z

    .line 195
    :cond_0
    sget v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mPendingThresholdTime:I

    return v1

    .line 190
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 191
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    sput v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mPendingThresholdTime:I

    goto :goto_0
.end method

.method public static hasHardMenuBackKey()Z
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method public static hasNumericKeyboard(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 120
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasNumericKeyboardChecked:Z

    if-nez v0, :cond_0

    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasNumericKeyboard:Z

    .line 123
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasNumericKeyboardChecked:Z

    .line 125
    :cond_0
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasNumericKeyboard:Z

    return v0

    .line 121
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasQwertyKeyboard(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 111
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasQwertyKeyboardChecked:Z

    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasQwertyKeyboard:Z

    .line 114
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasQwertyKeyboardChecked:Z

    .line 116
    :cond_0
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasQwertyKeyboard:Z

    return v0

    .line 112
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasSPenFeature(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasSPenFeatureChecked:Z

    if-nez v0, :cond_0

    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.spen_usp"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasSPenFeature:Z

    .line 101
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasSPenFeatureChecked:Z

    .line 103
    :cond_0
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasSPenFeature:Z

    return v0
.end method

.method public static isBlockHomeKey(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 166
    const-string v1, "LGT"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 167
    const-string v1, "true"

    const-string v2, "ril.domesticOtaStart"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "18"

    const-string v2, "ril.simtype"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v0

    .line 172
    :cond_1
    const-string v1, "lock"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "missing_phone_lock"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 178
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCameraKeyWakeKey(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 242
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isMirrorLessCameraSpecialized()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasNumericKeyboard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    :cond_0
    const/4 v0, 0x1

    .line 245
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCameraSpecialized()Z
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public static isChinaFeature()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 290
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mIsChinaFeatureChecked:Z

    if-nez v1, :cond_2

    .line 291
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "SalesCode":Ljava/lang/String;
    const-string v1, "CTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "BRI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 295
    :cond_0
    sput-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mIsChinaFeature:Z

    .line 298
    :cond_1
    sput-boolean v2, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mIsChinaFeatureChecked:Z

    .line 301
    :cond_2
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mIsChinaFeature:Z

    return v1
.end method

.method public static isDisablePopupUI()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public static isEasyOneHandEnabled()Z
    .locals 1

    .prologue
    .line 225
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mEasyOneHandEnabled:Z

    return v0
.end method

.method public static isEasyOneHandRunning()Z
    .locals 1

    .prologue
    .line 237
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mEasyOneHandRunning:Z

    return v0
.end method

.method public static isMirrorLessCameraSpecialized()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public static isMultiSIMDevice()Z
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public static isOneTouchReportChordEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 148
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_EnableOneTouchReport"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isScreenRecordChordEnabled()Z
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public static isScreenShotChordEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mScreenShotChordEnableChecked:Z

    if-nez v1, :cond_0

    .line 131
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mScreenShotChordEnabled:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mScreenShotChordEnableChecked:Z

    .line 139
    :cond_0
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mScreenShotChordEnabled:Z

    return v1

    .line 133
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mScreenShotChordEnabled:Z

    goto :goto_0
.end method

.method public static isStarKeyToVibrationMode()Z
    .locals 2

    .prologue
    .line 253
    const-string v0, "KOR"

    const-string v1, "SIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isStatusBarHoverOpenEnabled()Z
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportCameraQuickShot()Z
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportDMBAntennaDetach()Z
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportDTVAntennaDetach()Z
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportEasyOneHand()Z
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportFingerPrint()Z
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportGestureWithIRSensor()Z
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportSPC()Z
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public static isUseVibetonz()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public static isVoiceTalkDefaultLaunch(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 69
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mVoiceTalkDefaultLaunchChecked:Z

    if-nez v1, :cond_0

    .line 71
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mVoiceTalkDefaultLaunch:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    sput-boolean v3, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mVoiceTalkDefaultLaunchChecked:Z

    .line 79
    :cond_0
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mVoiceTalkDefaultLaunch:Z

    return v1

    .line 73
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    sput-boolean v3, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mVoiceTalkDefaultLaunch:Z

    goto :goto_0
.end method

.method public static isWatchSpecialized()Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public static isWearableHMTSupported()Z
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x0

    return v0
.end method

.method public static needInitializationWhenSystemReady()Z
    .locals 2

    .prologue
    .line 182
    const-string v0, "LGT"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static setEasyOneHandEnabled(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .prologue
    .line 229
    sput-boolean p0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mEasyOneHandEnabled:Z

    .line 230
    return-void
.end method

.method public static setEasyOneHandRunning(Z)V
    .locals 0
    .param p0, "running"    # Z

    .prologue
    .line 233
    sput-boolean p0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mEasyOneHandRunning:Z

    .line 234
    return-void
.end method
