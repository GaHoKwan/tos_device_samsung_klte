.class public Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;
.super Ljava/lang/Object;
.source "SensoryUDTSIDEngine.java"


# static fields
.field private static final MODELS_WA38:Ljava/lang/String; = "/system/wakeupdata/samsung/models_wa38.bin"

.field private static final SUBTAG:Ljava/lang/String; = "secMM: "

.field private static final TAG:Ljava/lang/String; = "SensoryUDTSIDEngine"

.field private static final UDTSID_ENROLL_CNT:S = 0x4s

.field private static final UDTSID_NUM_USERS:S = 0x5s

.field private static final UDTSIDnetfile:Ljava/lang/String; = "/system/wakeupdata/sensory/nn_en_us_mfcc_16k_15_250_v5.1.1.raw"

.field private static final UDTSIDsearchfile:Ljava/lang/String; = "/system/wakeupdata/sensory/phonemeSearch_1_3.raw"

.field private static final udtsvsidfile:Ljava/lang/String; = "/system/wakeupdata/sensory/svsid_1_1.raw"


# instance fields
.field private m_lSessionValue:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    return-void
.end method

.method public static init()I
    .locals 4

    .prologue
    .line 61
    const/4 v1, 0x0

    .line 66
    .local v1, "nResult":I
    :try_start_0
    const-string v2, "SensoryUDTSIDEngine"

    const-string v3, "Trying to load libSensoryUDTSIDEngine.so"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string v2, "SensoryUDTSIDEngine"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 68
    const-string v2, "SensoryUDTSIDEngine"

    const-string v3, "Loading libSensoryUDTSIDEngine.so"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 81
    :goto_0
    return v1

    .line 70
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "SensoryUDTSIDEngine"

    const-string v3, "WARNING: libSensoryUDTSIDEngine Could not load libSensoryUDTSIDEngine.so"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v1, -0x1

    .line 79
    goto :goto_0

    .line 75
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    const/4 v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method public native checkNewRecordings(JS)I
.end method

.method public checkResultEnroll(SS)I
    .locals 3
    .param p1, "enrollIdx"    # S
    .param p2, "userID"    # S

    .prologue
    .line 156
    iget-wide v1, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->getResultEnroll(JSS)I

    move-result v0

    .line 157
    .local v0, "recResult":I
    return v0
.end method

.method public closeModels()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 262
    const-string v0, "SensoryUDTSIDEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: closeModels, trig : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 265
    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {p0, v0, v1}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->closeRecog(J)V

    .line 266
    iput-wide v4, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    .line 268
    :cond_0
    return-void
.end method

.method public native closeRecog(J)V
.end method

.method public native closeSession(J)V
.end method

.method public consistencyCheckEnroll(S[S)I
    .locals 7
    .param p1, "shUserID"    # S
    .param p2, "shProIndex"    # [S

    .prologue
    .line 163
    iget-wide v3, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {p0, v3, v4, p1}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->checkNewRecordings(JS)I

    move-result v1

    .line 166
    .local v1, "nResult":I
    const-string v3, "SensoryUDTSIDEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "secMM: consistencyCheckEnroll.result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", CommandNumber : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v3, 0x5

    if-ne v1, v3, :cond_1

    .line 170
    iget-wide v3, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {p0, v3, v4, p1}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->getFeedbackDetails(JS)[J

    move-result-object v0

    .line 172
    .local v0, "details":[J
    const/4 v2, 0x0

    .local v2, "x":I
    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    .line 174
    aget-wide v3, v0, v2

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 176
    const/4 v3, 0x0

    int-to-short v4, v2

    aput-short v4, p2, v3

    .line 179
    :cond_0
    const-string v3, "SensoryUDTSIDEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "secMM: consistencyCheckEnroll, Feedback details: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-wide v5, v0, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 183
    .end local v0    # "details":[J
    .end local v2    # "x":I
    :cond_1
    return v1
.end method

.method public deleteModel(Ljava/lang/String;S)I
    .locals 5
    .param p1, "ROOT"    # Ljava/lang/String;
    .param p2, "CommandNumber"    # S

    .prologue
    .line 204
    const-string v1, "SensoryUDTSIDEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: deleteModel, CommandNumber : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/4 v0, 0x0

    .line 207
    .local v0, "nResult":I
    iget-wide v1, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 209
    const-string v1, "SensoryUDTSIDEngine"

    const-string v2, "deleteModel, trig is ZERO!. need to load model"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/4 v1, -0x1

    .line 220
    :goto_0
    return v1

    .line 213
    :cond_0
    iget-wide v1, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {p0, v1, v2, p2}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->deleteUser(JS)I

    move-result v0

    .line 214
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 216
    const-string v1, "SensoryUDTSIDEngine"

    const-string v2, "secMM: deleteModel, re-doEnroll"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {p0, p1, p2}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->doEnrollModel(Ljava/lang/String;S)I

    .line 220
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public native deleteUser(JS)I
.end method

.method public native doEnroll(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method public doEnrollModel(Ljava/lang/String;S)I
    .locals 4
    .param p1, "appDir"    # Ljava/lang/String;
    .param p2, "userIdx"    # S

    .prologue
    .line 189
    const-string v1, "SensoryUDTSIDEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: doEnrollModel, CommandNumber : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const-string v0, ""

    .line 193
    .local v0, "strTarget":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 195
    const-string v1, "/system/wakeupdata/samsung/models_wa38.bin"

    invoke-static {v1}, Lcom/samsung/voiceshell/WakeUpUtils;->IsFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "wa38"

    .line 198
    :cond_0
    :goto_0
    iget-wide v1, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->doEnroll(JLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 195
    :cond_1
    const-string v0, "pc36"

    goto :goto_0
.end method

.method public native getFeedbackDetails(JS)[J
.end method

.method public native getPhraseQuality(JS)F
.end method

.method public native getResultEnroll(JSS)I
.end method

.method public native getResultTest(JILjava/lang/String;)I
.end method

.method public getSessionValue()J
    .locals 4

    .prologue
    .line 106
    const-string v0, "SensoryUDTSIDEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: getSessionValue, trig : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    return-wide v0
.end method

.method public native initRecog(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;SSS)J
.end method

.method public native initSession()J
.end method

.method public loadModels(Ljava/lang/String;S)I
    .locals 13
    .param p1, "ROOT"    # Ljava/lang/String;
    .param p2, "CommandNumber"    # S

    .prologue
    .line 226
    const-wide/16 v10, 0x0

    .line 227
    .local v10, "UDTSIDinitRecogReturn":J
    const/4 v12, 0x0

    .line 229
    .local v12, "nResult":I
    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 231
    const-string v0, "SensoryUDTSIDEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: loadModels, Call initRecog, trig : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-wide v1, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    const-string v3, "/system/wakeupdata/sensory/nn_en_us_mfcc_16k_15_250_v5.1.1.raw"

    const-string v4, "/system/wakeupdata/sensory/svsid_1_1.raw"

    const-string v5, "/system/wakeupdata/sensory/phonemeSearch_1_3.raw"

    const/4 v7, 0x5

    const/4 v8, 0x4

    move-object v0, p0

    move-object v6, p1

    move v9, p2

    invoke-virtual/range {v0 .. v9}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->initRecog(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;SSS)J

    move-result-wide v10

    .line 239
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-eqz v0, :cond_0

    .line 241
    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {p0, v0, v1, p2}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->loadUsers(JS)I

    move-result v12

    .line 257
    :goto_0
    return v12

    .line 245
    :cond_0
    const-string v0, "SensoryUDTSIDEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadModels, failed to initRecog, result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", CommandNumber : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", trig : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v12, 0x0

    goto :goto_0

    .line 253
    :cond_1
    const-string v0, "SensoryUDTSIDEngine"

    const-string v1, "LoadModels, trig is ZERO"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/4 v12, 0x0

    goto :goto_0
.end method

.method public native loadUsers(JS)I
.end method

.method public native pipeRecogEnroll(J[SJ)I
.end method

.method public native pipeRecogTest(J[SJ)I
.end method

.method public processEnroll([SI)I
    .locals 6
    .param p1, "recordBuffer"    # [S
    .param p2, "readLength"    # I

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 116
    const-string v0, "SensoryUDTSIDEngine"

    const-string v1, "secMM: processEnroll , trig is ZERO, terminate to enroll"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v0, 0x0

    .line 120
    :goto_0
    return v0

    :cond_0
    iget-wide v1, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    int-to-long v4, p2

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->pipeRecogEnroll(J[SJ)I

    move-result v0

    goto :goto_0
.end method

.method public processVerify([SILjava/lang/String;[S)I
    .locals 8
    .param p1, "recordBuffer"    # [S
    .param p2, "readLength"    # I
    .param p3, "ROOT"    # Ljava/lang/String;
    .param p4, "CommandType"    # [S

    .prologue
    const/4 v7, 0x0

    .line 126
    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 128
    const-string v0, "SensoryUDTSIDEngine"

    const-string v1, "secMM: processVerify , trig is ZERO, terminate to verify"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 150
    :cond_0
    :goto_0
    return v6

    .line 132
    :cond_1
    iget-wide v1, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    int-to-long v4, p2

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->pipeRecogTest(J[SJ)I

    move-result v6

    .line 133
    .local v6, "iResult":I
    const-string v0, "SensoryUDTSIDEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: processVerify, trig : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pipeRecogTest, iResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v0, 0x2

    if-ne v6, v0, :cond_2

    .line 137
    const/4 v6, 0x0

    .line 139
    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2, p3}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->getResultTest(JILjava/lang/String;)I

    move-result v0

    int-to-short v0, v0

    aput-short v0, p4, v7

    .line 140
    aget-short v0, p4, v7

    if-ltz v0, :cond_0

    .line 142
    const/4 v6, 0x1

    goto :goto_0

    .line 147
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public native resetRecog(J)V
.end method

.method public setSessionValue(J)V
    .locals 5
    .param p1, "lSessionValue"    # J

    .prologue
    const-wide/16 v3, 0x0

    .line 87
    const-string v0, "SensoryUDTSIDEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: setSessionValue, trig : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    cmp-long v0, p1, v3

    if-nez v0, :cond_0

    .line 91
    const-string v0, "SensoryUDTSIDEngine"

    const-string v1, "secMM: setSessionValue, Session value(trig) is ZERO"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_1

    .line 96
    const-string v0, "SensoryUDTSIDEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: setSessionValue, trig is not ZERO : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_1
    iput-wide p1, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    .line 101
    return-void
.end method
