.class final Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;
.super Ljava/lang/Object;
.source "PalmMotionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/palmMotion/PalmMotionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GestureSurfaceTouch"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "baseContext"    # Landroid/content/Context;

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;->mContext:Landroid/content/Context;

    .line 122
    return-void
.end method

.method public static insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "feature"    # Ljava/lang/String;

    .prologue
    .line 163
    const-string v2, "TRUE"

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 165
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "app_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v2, "feature"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 169
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 171
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 174
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method


# virtual methods
.method public onInitSweep(I)Z
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public onPalm(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 148
    sget-boolean v1, Lcom/android/server/palmMotion/PalmMotionService;->g_IsBootCompleted:Z

    if-nez v1, :cond_0

    .line 149
    const-string/jumbo v1, "sys.boot_completed"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/palmMotion/PalmMotionService;->g_IsBootCompleted:Z

    .line 150
    :cond_0
    sget-boolean v1, Lcom/android/server/palmMotion/PalmMotionService;->g_IsBootCompleted:Z

    if-eqz v1, :cond_1

    .line 151
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 152
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PALM_UP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 153
    .local v0, "statusIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 159
    .end local v0    # "statusIntent":Landroid/content/Intent;
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 155
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PALM_DOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    .restart local v0    # "statusIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method public onSweepDown(I)Z
    .locals 4
    .param p1, "direction"    # I

    .prologue
    .line 125
    sget-boolean v1, Lcom/android/server/palmMotion/PalmMotionService;->g_IsBootCompleted:Z

    if-nez v1, :cond_0

    .line 126
    const-string/jumbo v1, "sys.boot_completed"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/palmMotion/PalmMotionService;->g_IsBootCompleted:Z

    .line 128
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    sget-boolean v1, Lcom/android/server/palmMotion/PalmMotionService;->g_IsBootCompleted:Z

    if-eqz v1, :cond_2

    .line 129
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SWEEP_RIGHT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    .local v0, "statusIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 131
    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;->mContext:Landroid/content/Context;

    const-string v2, "com.android.server.palmMotion"

    const-string v3, "PALM"

    invoke-static {v1, v2, v3}, Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .end local v0    # "statusIntent":Landroid/content/Intent;
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 132
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    sget-boolean v1, Lcom/android/server/palmMotion/PalmMotionService;->g_IsBootCompleted:Z

    if-eqz v1, :cond_3

    .line 133
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SWEEP_LEFT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .restart local v0    # "statusIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 135
    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;->mContext:Landroid/content/Context;

    const-string v2, "com.android.server.palmMotion"

    const-string v3, "PALM"

    invoke-static {v1, v2, v3}, Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 136
    .end local v0    # "statusIntent":Landroid/content/Intent;
    :cond_3
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    sget-boolean v1, Lcom/android/server/palmMotion/PalmMotionService;->g_IsBootCompleted:Z

    if-eqz v1, :cond_1

    .line 137
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SWEEP_DOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .restart local v0    # "statusIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method
