.class public Lcom/android/server/ssrm/settingschooser/LCDBrightnessSettingsChooser;
.super Lcom/android/server/ssrm/settings/SettingsChooser;
.source "LCDBrightnessSettingsChooser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/ssrm/settings/SettingsChooser",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Landroid/os/PowerManager;)V
    .locals 0
    .param p1, "pm"    # Landroid/os/PowerManager;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/server/ssrm/settings/SettingsChooser;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/server/ssrm/settingschooser/LCDBrightnessSettingsChooser;->mPowerManager:Landroid/os/PowerManager;

    .line 30
    return-void
.end method


# virtual methods
.method public chooseSetting(Lcom/android/server/ssrm/settings/Setting;Lcom/android/server/ssrm/settings/Setting;)Lcom/android/server/ssrm/settings/Setting;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/ssrm/settings/Setting",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/server/ssrm/settings/Setting",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/android/server/ssrm/settings/Setting",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "currentSetting":Lcom/android/server/ssrm/settings/Setting;, "Lcom/android/server/ssrm/settings/Setting<Ljava/lang/Integer;>;"
    .local p2, "newSetting":Lcom/android/server/ssrm/settings/Setting;, "Lcom/android/server/ssrm/settings/Setting<Ljava/lang/Integer;>;"
    const/4 v4, -0x1

    .line 37
    move-object v1, p1

    .line 38
    .local v1, "retValue":Lcom/android/server/ssrm/settings/Setting;, "Lcom/android/server/ssrm/settings/Setting<Ljava/lang/Integer;>;"
    invoke-virtual {p2}, Lcom/android/server/ssrm/settings/Setting;->value()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v4, :cond_3

    .line 39
    invoke-virtual {p1}, Lcom/android/server/ssrm/settings/Setting;->value()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 40
    move-object v1, p2

    .line 58
    :cond_0
    :goto_0
    return-object v1

    .line 42
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/ssrm/settings/Setting;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    .line 43
    .local v0, "newComparable":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Lcom/android/server/ssrm/settings/Setting;->value()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    .line 44
    .local v2, "value":I
    if-gez v2, :cond_2

    .line 45
    move-object v1, p2

    goto :goto_0

    .line 46
    :cond_2
    if-lez v2, :cond_0

    .line 47
    move-object v1, p1

    goto :goto_0

    .line 51
    .end local v0    # "newComparable":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Integer;>;"
    .end local v2    # "value":I
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/ssrm/settings/Setting;->value()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v4, :cond_4

    invoke-virtual {p1}, Lcom/android/server/ssrm/settings/Setting;->value()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/server/ssrm/settingschooser/LCDBrightnessSettingsChooser;->mPowerManager:Landroid/os/PowerManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/PowerManager;->getCurrentBrightness(Z)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    .line 53
    move-object v1, p1

    goto :goto_0

    .line 55
    :cond_4
    move-object v1, p2

    goto :goto_0
.end method
