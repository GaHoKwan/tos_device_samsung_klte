.class public Lcom/movial/ipphone/WifiCallSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "WifiCallSwitchPreference.java"


# static fields
.field private static final EVENT_IMS_WIFI_STATUS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WifiCallSwitchPreference"


# instance fields
.field private mCellOnly:Z

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIPManager:Lcom/movial/ipphone/IPManager;

.field private mIPStateListener:Lcom/movial/ipphone/IPStateListener;

.field private mObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/movial/ipphone/WifiCallSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 111
    const v0, 0x101036d

    invoke-direct {p0, p1, p2, v0}, Lcom/movial/ipphone/WifiCallSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 115
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    new-instance v0, Lcom/movial/ipphone/WifiCallSwitchPreference$1;

    invoke-direct {v0, p0}, Lcom/movial/ipphone/WifiCallSwitchPreference$1;-><init>(Lcom/movial/ipphone/WifiCallSwitchPreference;)V

    iput-object v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mIPStateListener:Lcom/movial/ipphone/IPStateListener;

    .line 94
    new-instance v0, Lcom/movial/ipphone/WifiCallSwitchPreference$2;

    invoke-direct {v0, p0}, Lcom/movial/ipphone/WifiCallSwitchPreference$2;-><init>(Lcom/movial/ipphone/WifiCallSwitchPreference;)V

    iput-object v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mHandler:Landroid/os/Handler;

    .line 205
    new-instance v0, Lcom/movial/ipphone/WifiCallSwitchPreference$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/movial/ipphone/WifiCallSwitchPreference$5;-><init>(Lcom/movial/ipphone/WifiCallSwitchPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mObserver:Landroid/database/ContentObserver;

    .line 116
    iput-object p1, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mContext:Landroid/content/Context;

    .line 117
    new-instance v0, Lcom/movial/ipphone/IPManager;

    invoke-direct {v0, p1}, Lcom/movial/ipphone/IPManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mIPManager:Lcom/movial/ipphone/IPManager;

    .line 119
    const-string v0, "On"

    invoke-virtual {p0, v0}, Landroid/preference/SwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 120
    const-string v0, "Off"

    invoke-virtual {p0, v0}, Landroid/preference/SwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 121
    const-string v0, "Wi-Fi Calling"

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 122
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/movial/ipphone/WifiCallSwitchPreference;->registerToIPRegistry(Z)V

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/movial/ipphone/WifiCallSwitchPreference;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/WifiCallSwitchPreference;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/movial/ipphone/WifiCallSwitchPreference;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/WifiCallSwitchPreference;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/movial/ipphone/WifiCallSwitchPreference;)Lcom/movial/ipphone/IPStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/WifiCallSwitchPreference;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mIPStateListener:Lcom/movial/ipphone/IPStateListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/movial/ipphone/WifiCallSwitchPreference;)Lcom/movial/ipphone/IPManager;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/WifiCallSwitchPreference;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mIPManager:Lcom/movial/ipphone/IPManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/movial/ipphone/WifiCallSwitchPreference;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/WifiCallSwitchPreference;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private registerToIPRegistry(Z)V
    .locals 1
    .param p1, "register"    # Z

    .prologue
    .line 190
    new-instance v0, Lcom/movial/ipphone/WifiCallSwitchPreference$4;

    invoke-direct {v0, p0, p1}, Lcom/movial/ipphone/WifiCallSwitchPreference$4;-><init>(Lcom/movial/ipphone/WifiCallSwitchPreference;Z)V

    .line 202
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 203
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/movial/ipphone/WifiCallSwitchPreference;->registerToIPRegistry(Z)V

    .line 178
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    .line 129
    const v2, 0x102038c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 130
    .local v0, "checkableView":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/widget/Checkable;

    if-eqz v2, :cond_0

    .line 131
    instance-of v2, v0, Landroid/widget/Switch;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 132
    check-cast v1, Landroid/widget/Switch;

    .line 133
    .local v1, "switchView":Landroid/widget/Switch;
    new-instance v2, Lcom/movial/ipphone/WifiCallSwitchPreference$3;

    invoke-direct {v2, p0}, Lcom/movial/ipphone/WifiCallSwitchPreference$3;-><init>(Lcom/movial/ipphone/WifiCallSwitchPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 146
    .end local v1    # "switchView":Landroid/widget/Switch;
    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 3

    .prologue
    .line 150
    invoke-super {p0}, Landroid/preference/TwoStatePreference;->onClick()V

    .line 151
    const-string v0, "WifiCallSwitchPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-boolean v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mCellOnly:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 153
    return-void

    .line 152
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSwitchClicked()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 156
    const-string v0, "WifiCallSwitchPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSwitchClicked. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {p0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 159
    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mCellOnly:Z

    .line 160
    iget-object v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "CELL_ONLY"

    iget-boolean v4, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mCellOnly:Z

    invoke-static {v0, v3, v4}, Lcom/movial/ipphone/IPPhoneSettings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 161
    iget-boolean v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mCellOnly:Z

    if-nez v0, :cond_1

    :goto_1
    invoke-direct {p0, v1}, Lcom/movial/ipphone/WifiCallSwitchPreference;->registerToIPRegistry(Z)V

    .line 162
    return-void

    :cond_0
    move v0, v2

    .line 159
    goto :goto_0

    :cond_1
    move v1, v2

    .line 161
    goto :goto_1
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/movial/ipphone/WifiCallSwitchPreference;->unregisterObserver()V

    .line 174
    return-void
.end method

.method public registerObserver()V
    .locals 4

    .prologue
    .line 181
    iget-object v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/movial/ipphone/IPPhoneSettings;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "CELL_ONLY"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 183
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 165
    iget-object v1, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "CELL_ONLY"

    invoke-static {v1, v2, v0}, Lcom/movial/ipphone/IPPhoneSettings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mCellOnly:Z

    .line 166
    iget-boolean v1, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mCellOnly:Z

    if-nez v1, :cond_1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 167
    iget-boolean v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mCellOnly:Z

    if-eqz v0, :cond_0

    const-string v0, "Disabled"

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/movial/ipphone/WifiCallSwitchPreference;->registerObserver()V

    .line 170
    return-void

    .line 166
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unregisterObserver()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/movial/ipphone/WifiCallSwitchPreference;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 187
    return-void
.end method
