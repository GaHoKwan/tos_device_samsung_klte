.class public Lcom/android/server/ssrm/settings/SettingsChooserMax;
.super Lcom/android/server/ssrm/settings/SettingsChooser;
.source "SettingsChooserMax.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/server/ssrm/settings/SettingsChooser",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    .local p0, "this":Lcom/android/server/ssrm/settings/SettingsChooserMax;, "Lcom/android/server/ssrm/settings/SettingsChooserMax<TT;>;"
    invoke-direct {p0}, Lcom/android/server/ssrm/settings/SettingsChooser;-><init>()V

    return-void
.end method


# virtual methods
.method public chooseSetting(Lcom/android/server/ssrm/settings/Setting;Lcom/android/server/ssrm/settings/Setting;)Lcom/android/server/ssrm/settings/Setting;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/ssrm/settings/Setting",
            "<TT;>;",
            "Lcom/android/server/ssrm/settings/Setting",
            "<TT;>;)",
            "Lcom/android/server/ssrm/settings/Setting",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lcom/android/server/ssrm/settings/SettingsChooserMax;, "Lcom/android/server/ssrm/settings/SettingsChooserMax<TT;>;"
    .local p1, "currentSetting":Lcom/android/server/ssrm/settings/Setting;, "Lcom/android/server/ssrm/settings/Setting<TT;>;"
    .local p2, "newSetting":Lcom/android/server/ssrm/settings/Setting;, "Lcom/android/server/ssrm/settings/Setting<TT;>;"
    invoke-virtual {p2}, Lcom/android/server/ssrm/settings/Setting;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    .line 30
    .local v0, "newComparable":Ljava/lang/Comparable;, "Ljava/lang/Comparable<TT;>;"
    invoke-virtual {p1}, Lcom/android/server/ssrm/settings/Setting;->value()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    .line 31
    .local v1, "value":I
    if-gez v1, :cond_1

    .line 37
    .end local p1    # "currentSetting":Lcom/android/server/ssrm/settings/Setting;, "Lcom/android/server/ssrm/settings/Setting<TT;>;"
    :cond_0
    :goto_0
    return-object p1

    .line 34
    .restart local p1    # "currentSetting":Lcom/android/server/ssrm/settings/Setting;, "Lcom/android/server/ssrm/settings/Setting<TT;>;"
    :cond_1
    if-lez v1, :cond_0

    move-object p1, p2

    .line 35
    goto :goto_0
.end method
