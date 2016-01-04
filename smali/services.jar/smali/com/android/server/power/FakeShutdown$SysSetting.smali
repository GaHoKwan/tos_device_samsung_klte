.class final Lcom/android/server/power/FakeShutdown$SysSetting;
.super Ljava/lang/Object;
.source "FakeShutdown.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/FakeShutdown;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SysSetting"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backupAll(Landroid/content/Context;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 692
    const-string v0, "lockscreen_sounds_enabled"

    const-string v1, "oldLockScreenSoundStatus"

    invoke-static {p0, v0, v1, v3}, Lcom/android/server/power/FakeShutdown$SysSetting;->backupSettingInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 694
    const-string v0, "airplane_mode_on"

    const-string v1, "oldAirplaneStatus"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/power/FakeShutdown$SysSetting;->backupSettingInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 696
    const-string v0, "pen_detachment_option"

    const-string v1, "oldSPenDetatchmentOption"

    invoke-static {p0, v0, v1, v3}, Lcom/android/server/power/FakeShutdown$SysSetting;->backupSettingInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 698
    const-string v0, "pen_detachment_notification"

    const-string v1, "oldSPenNotification"

    invoke-static {p0, v0, v1}, Lcom/android/server/power/FakeShutdown$SysSetting;->backupSettingString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    return-void
.end method

.method private static backupSettingInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "backup"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    .line 738
    invoke-static {p0, p1, p3}, Lcom/android/server/power/FakeShutdown$SysSetting;->get(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 739
    .local v0, "value":I
    invoke-static {p0, p2, v0}, Lcom/android/server/power/FakeShutdown$SysSetting;->put(Landroid/content/Context;Ljava/lang/String;I)V

    .line 740
    return-void
.end method

.method private static backupSettingString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "backup"    # Ljava/lang/String;

    .prologue
    .line 744
    invoke-static {p0, p1}, Lcom/android/server/power/FakeShutdown$SysSetting;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 745
    .local v0, "value":Ljava/lang/String;
    invoke-static {p0, p2, v0}, Lcom/android/server/power/FakeShutdown$SysSetting;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    return-void
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 671
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSecure(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 661
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 681
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static prepareFakeShutdown(Landroid/content/Context;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 752
    const-string v0, "airplane_mode_on"

    invoke-static {p0, v0, v1}, Lcom/android/server/power/FakeShutdown$SysSetting;->put(Landroid/content/Context;Ljava/lang/String;I)V

    .line 754
    const-string v0, "pen_detachment_option"

    invoke-static {p0, v0, v1}, Lcom/android/server/power/FakeShutdown$SysSetting;->put(Landroid/content/Context;Ljava/lang/String;I)V

    .line 755
    const-string v0, "pen_detachment_notification"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/server/power/FakeShutdown$SysSetting;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    return-void
.end method

.method public static put(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 676
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 678
    return-void
.end method

.method public static putSecure(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 666
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 668
    return-void
.end method

.method public static putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 685
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 686
    return-void
.end method

.method public static restoreAll(Landroid/content/Context;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 704
    const-string v0, "FakeShutdown"

    const-string v1, "restoreSettings"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    const-string v0, "lockscreen_sounds_enabled"

    const-string v1, "oldLockScreenSoundStatus"

    invoke-static {p0, v0, v1}, Lcom/android/server/power/FakeShutdown$SysSetting;->restoreSettingInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const-string v0, "airplane_mode_on"

    const-string v1, "oldAirplaneStatus"

    invoke-static {p0, v0, v1}, Lcom/android/server/power/FakeShutdown$SysSetting;->restoreSettingInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    const-string v0, "pen_detachment_option"

    const-string v1, "oldSPenDetatchmentOption"

    invoke-static {p0, v0, v1}, Lcom/android/server/power/FakeShutdown$SysSetting;->restoreSettingInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    const-string v0, "pen_detachment_notification"

    const-string v1, "oldSPenNotification"

    invoke-static {p0, v0, v1}, Lcom/android/server/power/FakeShutdown$SysSetting;->restoreSettingString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    return-void
.end method

.method private static restoreSettingInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "backup"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 720
    invoke-static {p0, p2, v1}, Lcom/android/server/power/FakeShutdown$SysSetting;->get(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 721
    .local v0, "old":I
    if-eq v0, v1, :cond_0

    .line 722
    invoke-static {p0, p1, v0}, Lcom/android/server/power/FakeShutdown$SysSetting;->put(Landroid/content/Context;Ljava/lang/String;I)V

    .line 723
    invoke-static {p0, p2, v1}, Lcom/android/server/power/FakeShutdown$SysSetting;->put(Landroid/content/Context;Ljava/lang/String;I)V

    .line 725
    :cond_0
    return-void
.end method

.method private static restoreSettingString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "backup"    # Ljava/lang/String;

    .prologue
    .line 729
    invoke-static {p0, p2}, Lcom/android/server/power/FakeShutdown$SysSetting;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 730
    .local v0, "old":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "DONT CARE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 731
    invoke-static {p0, p1, v0}, Lcom/android/server/power/FakeShutdown$SysSetting;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    const-string v1, "DONT CARE"

    invoke-static {p0, p2, v1}, Lcom/android/server/power/FakeShutdown$SysSetting;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    :cond_0
    return-void
.end method
