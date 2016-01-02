.class public Lcom/movial/ipphone/WifiCallCheckBoxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "WifiCallCheckBoxPreference.java"


# static fields
.field private static final EVENT_IMS_WIFI_STATUS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WifiCallCheckBoxPreference"


# instance fields
.field private mCellOnly:Z

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIPManager:Lcom/movial/ipphone/IPManager;

.field private mIPStateListener:Lcom/movial/ipphone/IPStateListener;

.field private mPreference:Landroid/preference/Preference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/movial/ipphone/WifiCallCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 112
    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Lcom/movial/ipphone/WifiCallCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 116
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    new-instance v0, Lcom/movial/ipphone/WifiCallCheckBoxPreference$1;

    invoke-direct {v0, p0}, Lcom/movial/ipphone/WifiCallCheckBoxPreference$1;-><init>(Lcom/movial/ipphone/WifiCallCheckBoxPreference;)V

    iput-object v0, p0, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->mIPStateListener:Lcom/movial/ipphone/IPStateListener;

    .line 94
    new-instance v0, Lcom/movial/ipphone/WifiCallCheckBoxPreference$2;

    invoke-direct {v0, p0}, Lcom/movial/ipphone/WifiCallCheckBoxPreference$2;-><init>(Lcom/movial/ipphone/WifiCallCheckBoxPreference;)V

    iput-object v0, p0, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->mHandler:Landroid/os/Handler;

    .line 117
    iput-object p1, p0, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->mContext:Landroid/content/Context;

    .line 118
    new-instance v0, Lcom/movial/ipphone/IPManager;

    invoke-direct {v0, p1}, Lcom/movial/ipphone/IPManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->mIPManager:Lcom/movial/ipphone/IPManager;

    .line 119
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/movial/ipphone/WifiCallCheckBoxPreference;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/WifiCallCheckBoxPreference;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/movial/ipphone/WifiCallCheckBoxPreference;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/WifiCallCheckBoxPreference;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->mPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/movial/ipphone/WifiCallCheckBoxPreference;)Lcom/movial/ipphone/IPStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/WifiCallCheckBoxPreference;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->mIPStateListener:Lcom/movial/ipphone/IPStateListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/movial/ipphone/WifiCallCheckBoxPreference;)Lcom/movial/ipphone/IPManager;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/WifiCallCheckBoxPreference;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->mIPManager:Lcom/movial/ipphone/IPManager;

    return-object v0
.end method

.method private registerToIPRegistry(Z)V
    .locals 1
    .param p1, "register"    # Z

    .prologue
    .line 165
    new-instance v0, Lcom/movial/ipphone/WifiCallCheckBoxPreference$3;

    invoke-direct {v0, p0, p1}, Lcom/movial/ipphone/WifiCallCheckBoxPreference$3;-><init>(Lcom/movial/ipphone/WifiCallCheckBoxPreference;Z)V

    .line 177
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 178
    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 124
    invoke-super {p0}, Landroid/preference/CheckBoxPreference;->onClick()V

    .line 125
    const-string v3, "WifiCallCheckBoxPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onClick. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->isChecked()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p0}, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->mCellOnly:Z

    .line 128
    iget-object v3, p0, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "CELL_ONLY"

    iget-boolean v7, p0, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->mCellOnly:Z

    invoke-static {v3, v6, v7}, Lcom/movial/ipphone/IPPhoneSettings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 129
    iget-boolean v3, p0, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->mCellOnly:Z

    if-nez v3, :cond_2

    :goto_1
    invoke-direct {p0, v4}, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->registerToIPRegistry(Z)V

    .line 132
    const/4 v1, 0x1

    .line 133
    .local v1, "enable":Z
    iget-boolean v3, p0, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->mCellOnly:Z

    if-eqz v3, :cond_0

    .line 134
    const/4 v1, 0x0

    .line 136
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 137
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "state"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 138
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 139
    .local v2, "msg":Landroid/os/Message;
    const/16 v3, 0x18

    iput v3, v2, Landroid/os/Message;->what:I

    .line 140
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 141
    iget-object v3, p0, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v3

    if-nez v3, :cond_3

    .line 142
    const-string v3, "WifiCallCheckBoxPreference"

    const-string v4, "mWifiManager.callSECApi(msg) was sucessfull"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :goto_2
    return-void

    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "enable":Z
    .end local v2    # "msg":Landroid/os/Message;
    :cond_1
    move v3, v5

    .line 127
    goto :goto_0

    :cond_2
    move v4, v5

    .line 129
    goto :goto_1

    .line 144
    .restart local v0    # "args":Landroid/os/Bundle;
    .restart local v1    # "enable":Z
    .restart local v2    # "msg":Landroid/os/Message;
    :cond_3
    const-string v3, "WifiCallCheckBoxPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mWifiManager.callSECApi(msg) failed: enable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->registerToIPRegistry(Z)V

    .line 162
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 153
    iget-object v0, p0, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "CELL_ONLY"

    invoke-static {v0, v3, v1}, Lcom/movial/ipphone/IPPhoneSettings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->mCellOnly:Z

    .line 154
    iget-boolean v0, p0, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->mCellOnly:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->setChecked(Z)V

    .line 155
    iget-boolean v0, p0, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->mCellOnly:Z

    if-eqz v0, :cond_0

    const-string v0, "Disabled"

    invoke-virtual {p0, v0}, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 156
    :cond_0
    iget-object v3, p0, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->mPreference:Landroid/preference/Preference;

    iget-boolean v0, p0, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->mCellOnly:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 157
    iget-boolean v0, p0, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->mCellOnly:Z

    if-nez v0, :cond_3

    :goto_2
    invoke-direct {p0, v1}, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->registerToIPRegistry(Z)V

    .line 158
    return-void

    :cond_1
    move v0, v2

    .line 154
    goto :goto_0

    :cond_2
    move v0, v2

    .line 156
    goto :goto_1

    :cond_3
    move v1, v2

    .line 157
    goto :goto_2
.end method

.method public setValues(Landroid/preference/Preference;)V
    .locals 0
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->mPreference:Landroid/preference/Preference;

    .line 150
    return-void
.end method
