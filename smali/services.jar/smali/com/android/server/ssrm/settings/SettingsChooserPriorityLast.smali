.class public Lcom/android/server/ssrm/settings/SettingsChooserPriorityLast;
.super Lcom/android/server/ssrm/settings/SettingsChooser;
.source "SettingsChooserPriorityLast.java"


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
    .local p0, "this":Lcom/android/server/ssrm/settings/SettingsChooserPriorityLast;, "Lcom/android/server/ssrm/settings/SettingsChooserPriorityLast<TT;>;"
    invoke-direct {p0}, Lcom/android/server/ssrm/settings/SettingsChooser;-><init>()V

    return-void
.end method


# virtual methods
.method public chooseSetting(Lcom/android/server/ssrm/settings/Setting;Lcom/android/server/ssrm/settings/Setting;)Lcom/android/server/ssrm/settings/Setting;
    .locals 0
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
    .line 28
    .local p0, "this":Lcom/android/server/ssrm/settings/SettingsChooserPriorityLast;, "Lcom/android/server/ssrm/settings/SettingsChooserPriorityLast<TT;>;"
    .local p1, "currentSetting":Lcom/android/server/ssrm/settings/Setting;, "Lcom/android/server/ssrm/settings/Setting<TT;>;"
    .local p2, "newSetting":Lcom/android/server/ssrm/settings/Setting;, "Lcom/android/server/ssrm/settings/Setting<TT;>;"
    return-object p2
.end method
