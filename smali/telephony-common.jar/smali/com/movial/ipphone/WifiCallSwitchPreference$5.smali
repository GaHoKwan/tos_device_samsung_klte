.class Lcom/movial/ipphone/WifiCallSwitchPreference$5;
.super Landroid/database/ContentObserver;
.source "WifiCallSwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/movial/ipphone/WifiCallSwitchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/movial/ipphone/WifiCallSwitchPreference;


# direct methods
.method constructor <init>(Lcom/movial/ipphone/WifiCallSwitchPreference;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/movial/ipphone/WifiCallSwitchPreference$5;->this$0:Lcom/movial/ipphone/WifiCallSwitchPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v2, 0x1

    .line 208
    const-string v0, "WifiCallSwitchPreference"

    const-string v1, "ContentObserver onChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference$5;->this$0:Lcom/movial/ipphone/WifiCallSwitchPreference;

    # getter for: Lcom/movial/ipphone/WifiCallSwitchPreference;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/movial/ipphone/WifiCallSwitchPreference;->access$400(Lcom/movial/ipphone/WifiCallSwitchPreference;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "CELL_ONLY"

    invoke-static {v0, v1, v2}, Lcom/movial/ipphone/IPPhoneSettings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference$5;->this$0:Lcom/movial/ipphone/WifiCallSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 214
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/WifiCallSwitchPreference$5;->this$0:Lcom/movial/ipphone/WifiCallSwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method
