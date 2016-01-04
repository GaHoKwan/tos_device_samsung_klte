.class public Lcom/android/server/ssrm/TouchSeparation;
.super Ljava/lang/Object;
.source "TouchSeparation.java"


# static fields
.field static final TOUCH_DEFAULT:I

.field static final TOUCH_DEFAULT_REAL:Ljava/lang/String;

.field static final TOUCH_MID:I

.field static final TOUCH_MID_REAL:Ljava/lang/String;

.field static final TOUCH_ZERO:I

.field static final TOUCH_ZERO_REAL:Ljava/lang/String;

.field private static instance:Lcom/android/server/ssrm/TouchSeparation;


# instance fields
.field final ACTION_DVFS_SSRM_REQUEST:Ljava/lang/String;

.field final ACTION_DVFS_SSRM_REQUEST_KNOX:Ljava/lang/String;

.field final IS_VISIBLE_WINDOW:Ljava/lang/String;

.field final RESPONSE_AXT9INFO:Ljava/lang/String;

.field final TAG:Ljava/lang/String;

.field private final handler:Landroid/os/Handler;

.field mCurrentTouchState:I

.field mIsSetDefault:Z

.field mTouchMidMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTouchStateByIntent:I

.field mTouchStateByMap:I

.field mTouchStateBySIP:Z

.field mTouchZeroMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mUpdateDisable:Z

.field mUpdateForceTouchState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x14

    const/4 v1, 0x4

    const/4 v2, -0x1

    .line 51
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_LT03:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_V1:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_V2:Z

    if-eqz v0, :cond_1

    .line 52
    :cond_0
    const/4 v0, 0x3

    sput v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_DEFAULT:I

    .line 53
    sput v1, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_MID:I

    .line 54
    sput v1, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_ZERO:I

    .line 55
    const-string/jumbo v0, "set_jitter_level,3"

    sput-object v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_DEFAULT_REAL:Ljava/lang/String;

    .line 56
    const-string/jumbo v0, "set_jitter_level,4"

    sput-object v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_MID_REAL:Ljava/lang/String;

    .line 57
    const-string/jumbo v0, "set_jitter_level,4"

    sput-object v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_ZERO_REAL:Ljava/lang/String;

    .line 102
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ssrm/TouchSeparation;->instance:Lcom/android/server/ssrm/TouchSeparation;

    return-void

    .line 58
    :cond_1
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_H:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v1, "_ha_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v1, "_hf_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 60
    :cond_2
    const/16 v0, 0x4b

    sput v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_DEFAULT:I

    .line 61
    sput v3, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_MID:I

    .line 62
    sput v3, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_ZERO:I

    .line 63
    const-string/jumbo v0, "set_jitter_level,75"

    sput-object v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_DEFAULT_REAL:Ljava/lang/String;

    .line 64
    const-string/jumbo v0, "set_jitter_level,20"

    sput-object v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_MID_REAL:Ljava/lang/String;

    .line 65
    const-string/jumbo v0, "set_jitter_level,20"

    sput-object v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_ZERO_REAL:Ljava/lang/String;

    goto :goto_0

    .line 67
    :cond_3
    sput v2, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_DEFAULT:I

    .line 68
    sput v2, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_MID:I

    .line 69
    sput v2, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_ZERO:I

    .line 70
    const-string v0, ""

    sput-object v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_DEFAULT_REAL:Ljava/lang/String;

    .line 71
    const-string v0, ""

    sput-object v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_MID_REAL:Ljava/lang/String;

    .line 72
    const-string v0, ""

    sput-object v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_ZERO_REAL:Ljava/lang/String;

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "SSRMv2:TouchSeparation"

    iput-object v0, p0, Lcom/android/server/ssrm/TouchSeparation;->TAG:Ljava/lang/String;

    .line 30
    const-string v0, "com.sec.android.intent.action.SSRM_REQUEST"

    iput-object v0, p0, Lcom/android/server/ssrm/TouchSeparation;->ACTION_DVFS_SSRM_REQUEST:Ljava/lang/String;

    .line 32
    const-string v0, "sec_container_1.com.sec.android.intent.action.SSRM_REQUEST"

    iput-object v0, p0, Lcom/android/server/ssrm/TouchSeparation;->ACTION_DVFS_SSRM_REQUEST_KNOX:Ljava/lang/String;

    .line 34
    const-string v0, "ResponseAxT9Info"

    iput-object v0, p0, Lcom/android/server/ssrm/TouchSeparation;->RESPONSE_AXT9INFO:Ljava/lang/String;

    .line 36
    const-string v0, "AxT9IME.isVisibleWindow"

    iput-object v0, p0, Lcom/android/server/ssrm/TouchSeparation;->IS_VISIBLE_WINDOW:Ljava/lang/String;

    .line 76
    sget v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_DEFAULT:I

    iput v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mCurrentTouchState:I

    .line 78
    sget v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_DEFAULT:I

    iput v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mTouchStateByMap:I

    .line 80
    sget v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_DEFAULT:I

    iput v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mTouchStateByIntent:I

    .line 82
    iput-boolean v1, p0, Lcom/android/server/ssrm/TouchSeparation;->mTouchStateBySIP:Z

    .line 84
    iput-boolean v1, p0, Lcom/android/server/ssrm/TouchSeparation;->mUpdateForceTouchState:Z

    .line 86
    iput-boolean v1, p0, Lcom/android/server/ssrm/TouchSeparation;->mUpdateDisable:Z

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mTouchZeroMap:Ljava/util/HashMap;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mTouchMidMap:Ljava/util/HashMap;

    .line 149
    new-instance v0, Lcom/android/server/ssrm/TouchSeparation$1;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/TouchSeparation$1;-><init>(Lcom/android/server/ssrm/TouchSeparation;)V

    iput-object v0, p0, Lcom/android/server/ssrm/TouchSeparation;->handler:Landroid/os/Handler;

    .line 157
    iput-boolean v1, p0, Lcom/android/server/ssrm/TouchSeparation;->mIsSetDefault:Z

    .line 112
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_LT03:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_V1:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_V2:Z

    if-eqz v0, :cond_1

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mTouchZeroMap:Ljava/util/HashMap;

    const-string v1, "Launcher"

    const-string v2, "com.sec.android.app.launcher"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mTouchZeroMap:Ljava/util/HashMap;

    const-string v1, "Launcher"

    const-string v2, "com.sec.android.app.launcher"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mTouchZeroMap:Ljava/util/HashMap;

    const-string v1, "Gallery"

    const-string v2, "com.sec.android.gallery3d"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/server/ssrm/TouchSeparation;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/android/server/ssrm/TouchSeparation;->instance:Lcom/android/server/ssrm/TouchSeparation;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/android/server/ssrm/TouchSeparation;

    invoke-direct {v0}, Lcom/android/server/ssrm/TouchSeparation;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/TouchSeparation;->instance:Lcom/android/server/ssrm/TouchSeparation;

    .line 108
    :cond_0
    sget-object v0, Lcom/android/server/ssrm/TouchSeparation;->instance:Lcom/android/server/ssrm/TouchSeparation;

    return-object v0
.end method

.method public static notifyFgAppChanged(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .prologue
    .line 212
    sget-boolean v1, Lcom/android/server/ssrm/Feature;->SSRM_TOUCH_SEPARATION:Z

    if-eqz v1, :cond_0

    .line 213
    invoke-static {}, Lcom/android/server/ssrm/TouchSeparation;->getInstance()Lcom/android/server/ssrm/TouchSeparation;

    move-result-object v0

    .line 214
    .local v0, "instace":Lcom/android/server/ssrm/TouchSeparation;
    if-eqz v0, :cond_0

    .line 215
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/ssrm/TouchSeparation;->onFgAppChanged(Landroid/content/Context;Ljava/lang/String;I)V

    .line 218
    .end local v0    # "instace":Lcom/android/server/ssrm/TouchSeparation;
    :cond_0
    return-void
.end method

.method private onFgAppChanged(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pid"    # I

    .prologue
    .line 221
    invoke-virtual {p0, p2}, Lcom/android/server/ssrm/TouchSeparation;->checkTouchFilterPackage(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mTouchStateByMap:I

    .line 222
    invoke-virtual {p0}, Lcom/android/server/ssrm/TouchSeparation;->updateTouchMode()V

    .line 223
    return-void
.end method


# virtual methods
.method protected calculateCurrentTouchMode()I
    .locals 2

    .prologue
    .line 177
    iget v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mTouchStateByIntent:I

    sget v1, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_DEFAULT:I

    if-eq v0, v1, :cond_0

    .line 178
    iget v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mTouchStateByIntent:I

    .line 189
    :goto_0
    return v0

    .line 181
    :cond_0
    iget v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mTouchStateByMap:I

    sget v1, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_DEFAULT:I

    if-eq v0, v1, :cond_2

    .line 182
    iget-boolean v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mTouchStateBySIP:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 183
    sget v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_DEFAULT:I

    goto :goto_0

    .line 185
    :cond_1
    iget v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mTouchStateByMap:I

    goto :goto_0

    .line 189
    :cond_2
    sget v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_DEFAULT:I

    goto :goto_0
.end method

.method checkTouchFilterPackage(Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mTouchZeroMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    sget v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_ZERO:I

    .line 94
    :goto_0
    return v0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mTouchMidMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    sget v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_MID:I

    goto :goto_0

    .line 94
    :cond_1
    sget v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_DEFAULT:I

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 121
    const-string v2, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "sec_container_1.com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 123
    :cond_0
    const-string v2, "SSRM_STATUS_NAME"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "StatusName":Ljava/lang/String;
    const-string v2, "SSRM_STATUS_VALUE"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 125
    .local v1, "StatusValue":Z
    const-string v2, "BOOSTER_UPDATE_DISABLE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 126
    iput-boolean v1, p0, Lcom/android/server/ssrm/TouchSeparation;->mUpdateDisable:Z

    .line 129
    :cond_1
    const-string v2, "TouchSeparation"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 130
    const-string v2, "SSRMv2:TouchSeparation"

    const-string v3, "onReveive::ACTION_DVFS_SSRM_REQUEST:: TouchSeparation "

    invoke-static {v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v2, "SSRM_STATUS_VALUE"

    sget v3, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_DEFAULT:I

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/ssrm/TouchSeparation;->mTouchStateByIntent:I

    .line 132
    invoke-virtual {p0}, Lcom/android/server/ssrm/TouchSeparation;->updateTouchMode()V

    .line 147
    .end local v0    # "StatusName":Ljava/lang/String;
    .end local v1    # "StatusValue":Z
    :cond_2
    :goto_0
    return-void

    .line 134
    :cond_3
    const-string v2, "ResponseAxT9Info"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 135
    const-string v2, "SSRMv2:TouchSeparation"

    const-string v3, "onReceive:: RESPONSE_AXT9INFO"

    invoke-static {v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v2, "AxT9IME.isVisibleWindow"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/ssrm/TouchSeparation;->mTouchStateBySIP:Z

    .line 137
    invoke-virtual {p0}, Lcom/android/server/ssrm/TouchSeparation;->updateTouchMode()V

    goto :goto_0

    .line 138
    :cond_4
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 139
    const-string v2, "SSRMv2:TouchSeparation"

    const-string v3, "onReceive:: Intent.ACTION_SCREEN_OFF"

    invoke-static {v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iput-boolean v5, p0, Lcom/android/server/ssrm/TouchSeparation;->mUpdateForceTouchState:Z

    .line 141
    iget-object v2, p0, Lcom/android/server/ssrm/TouchSeparation;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 142
    :cond_5
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 143
    const-string v2, "SSRMv2:TouchSeparation"

    const-string v3, "onReceive:: Intent.ACTION_USER_PRESENT"

    invoke-static {v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/ssrm/TouchSeparation;->mUpdateForceTouchState:Z

    .line 145
    iget-object v2, p0, Lcom/android/server/ssrm/TouchSeparation;->handler:Landroid/os/Handler;

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method protected updateTouchMode()V
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mUpdateDisable:Z

    if-eqz v0, :cond_1

    .line 161
    iget-boolean v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mIsSetDefault:Z

    if-nez v0, :cond_0

    .line 162
    sget v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_DEFAULT:I

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/TouchSeparation;->updateTouchModeSysFS(I)V

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mIsSetDefault:Z

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mIsSetDefault:Z

    .line 168
    invoke-virtual {p0}, Lcom/android/server/ssrm/TouchSeparation;->calculateCurrentTouchMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/TouchSeparation;->updateTouchModeSysFS(I)V

    goto :goto_0
.end method

.method protected updateTouchModeSysFS(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 197
    iget v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mCurrentTouchState:I

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mUpdateForceTouchState:Z

    if-eqz v0, :cond_1

    .line 198
    :cond_0
    const-string v0, "SSRMv2:TouchSeparation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTouchModeSysFS :: new value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    sget v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_ZERO:I

    if-ne p1, v0, :cond_2

    .line 200
    const-string v0, "SSRMv2:TouchSeparation"

    sget-object v1, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_ZERO_REAL:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->updateJitterBooster(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :goto_0
    iput p1, p0, Lcom/android/server/ssrm/TouchSeparation;->mCurrentTouchState:I

    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/TouchSeparation;->mUpdateForceTouchState:Z

    .line 209
    :cond_1
    return-void

    .line 201
    :cond_2
    sget v0, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_MID:I

    if-ne p1, v0, :cond_3

    .line 202
    const-string v0, "SSRMv2:TouchSeparation"

    sget-object v1, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_MID_REAL:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->updateJitterBooster(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :cond_3
    const-string v0, "SSRMv2:TouchSeparation"

    sget-object v1, Lcom/android/server/ssrm/TouchSeparation;->TOUCH_DEFAULT_REAL:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->updateJitterBooster(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
