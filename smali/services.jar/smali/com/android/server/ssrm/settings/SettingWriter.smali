.class public abstract Lcom/android/server/ssrm/settings/SettingWriter;
.super Ljava/lang/Object;
.source "SettingWriter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mCurrentSetting:Lcom/android/server/ssrm/settings/Setting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/ssrm/settings/Setting",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mModificationStarted:Z

.field protected final mName:Ljava/lang/String;

.field private mNewSetting:Lcom/android/server/ssrm/settings/Setting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/ssrm/settings/Setting",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected mSettingChooser:Lcom/android/server/ssrm/settings/SettingsChooser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/ssrm/settings/SettingsChooser",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    .local p0, "this":Lcom/android/server/ssrm/settings/SettingWriter;, "Lcom/android/server/ssrm/settings/SettingWriter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/server/ssrm/settings/SettingWriter;->mName:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method protected abstract applySetting(Lcom/android/server/ssrm/settings/Setting;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/ssrm/settings/Setting",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method protected abstract convertToValue(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public createSetting(Ljava/lang/Object;)Lcom/android/server/ssrm/settings/Setting;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/android/server/ssrm/settings/Setting",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lcom/android/server/ssrm/settings/SettingWriter;, "Lcom/android/server/ssrm/settings/SettingWriter<TT;>;"
    .local p1, "stringValue":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/android/server/ssrm/settings/Setting;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/android/server/ssrm/settings/Setting;-><init>(Ljava/lang/Object;Lcom/android/server/ssrm/settings/SettingWriter;Ljava/lang/String;)V

    return-object v0
.end method

.method public createSettingFromString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/ssrm/settings/Setting;
    .locals 2
    .param p1, "stringValueName"    # Ljava/lang/String;
    .param p2, "stringValueOption"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/ssrm/settings/Setting",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lcom/android/server/ssrm/settings/SettingWriter;, "Lcom/android/server/ssrm/settings/SettingWriter<TT;>;"
    new-instance v0, Lcom/android/server/ssrm/settings/Setting;

    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/settings/SettingWriter;->convertToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p0, p2}, Lcom/android/server/ssrm/settings/Setting;-><init>(Ljava/lang/Object;Lcom/android/server/ssrm/settings/SettingWriter;Ljava/lang/String;)V

    return-object v0
.end method

.method name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    .local p0, "this":Lcom/android/server/ssrm/settings/SettingWriter;, "Lcom/android/server/ssrm/settings/SettingWriter<TT;>;"
    iget-object v0, p0, Lcom/android/server/ssrm/settings/SettingWriter;->mName:Ljava/lang/String;

    return-object v0
.end method

.method protected onExtraInitialized(Ljava/lang/String;)V
    .locals 0
    .param p1, "extra"    # Ljava/lang/String;

    .prologue
    .line 94
    .local p0, "this":Lcom/android/server/ssrm/settings/SettingWriter;, "Lcom/android/server/ssrm/settings/SettingWriter<TT;>;"
    return-void
.end method

.method final setCurrentSetting(Lcom/android/server/ssrm/settings/Setting;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/ssrm/settings/Setting",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lcom/android/server/ssrm/settings/SettingWriter;, "Lcom/android/server/ssrm/settings/SettingWriter<TT;>;"
    .local p1, "setting":Lcom/android/server/ssrm/settings/Setting;, "Lcom/android/server/ssrm/settings/Setting<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/ssrm/settings/SettingWriter;->mModificationStarted:Z

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/server/ssrm/settings/SettingWriter;->mNewSetting:Lcom/android/server/ssrm/settings/Setting;

    if-nez v0, :cond_1

    .line 65
    iput-object p1, p0, Lcom/android/server/ssrm/settings/SettingWriter;->mNewSetting:Lcom/android/server/ssrm/settings/Setting;

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/android/server/ssrm/settings/SettingWriter;->mSettingChooser:Lcom/android/server/ssrm/settings/SettingsChooser;

    if-nez v0, :cond_2

    .line 68
    new-instance v0, Lcom/android/server/ssrm/settings/SettingsChooserPriorityFirst;

    invoke-direct {v0}, Lcom/android/server/ssrm/settings/SettingsChooserPriorityFirst;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/settings/SettingWriter;->mSettingChooser:Lcom/android/server/ssrm/settings/SettingsChooser;

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/android/server/ssrm/settings/SettingWriter;->mSettingChooser:Lcom/android/server/ssrm/settings/SettingsChooser;

    iget-object v1, p0, Lcom/android/server/ssrm/settings/SettingWriter;->mNewSetting:Lcom/android/server/ssrm/settings/Setting;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/ssrm/settings/SettingsChooser;->chooseSetting(Lcom/android/server/ssrm/settings/Setting;Lcom/android/server/ssrm/settings/Setting;)Lcom/android/server/ssrm/settings/Setting;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/settings/SettingWriter;->mNewSetting:Lcom/android/server/ssrm/settings/Setting;

    goto :goto_0
.end method

.method setExtraData(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 88
    .local p0, "this":Lcom/android/server/ssrm/settings/SettingWriter;, "Lcom/android/server/ssrm/settings/SettingWriter<TT;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/settings/SettingWriter;->onExtraInitialized(Ljava/lang/String;)V

    .line 91
    :cond_0
    return-void
.end method

.method public final setSettingsChooser(Lcom/android/server/ssrm/settings/SettingsChooser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/ssrm/settings/SettingsChooser",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lcom/android/server/ssrm/settings/SettingWriter;, "Lcom/android/server/ssrm/settings/SettingWriter<TT;>;"
    .local p1, "chooser":Lcom/android/server/ssrm/settings/SettingsChooser;, "Lcom/android/server/ssrm/settings/SettingsChooser<TT;>;"
    iput-object p1, p0, Lcom/android/server/ssrm/settings/SettingWriter;->mSettingChooser:Lcom/android/server/ssrm/settings/SettingsChooser;

    .line 44
    return-void
.end method

.method startModification()V
    .locals 1

    .prologue
    .line 47
    .local p0, "this":Lcom/android/server/ssrm/settings/SettingWriter;, "Lcom/android/server/ssrm/settings/SettingWriter<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/settings/SettingWriter;->mModificationStarted:Z

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ssrm/settings/SettingWriter;->mNewSetting:Lcom/android/server/ssrm/settings/Setting;

    .line 49
    return-void
.end method

.method stopModification()V
    .locals 2

    .prologue
    .line 52
    .local p0, "this":Lcom/android/server/ssrm/settings/SettingWriter;, "Lcom/android/server/ssrm/settings/SettingWriter<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/settings/SettingWriter;->mModificationStarted:Z

    .line 53
    iget-object v0, p0, Lcom/android/server/ssrm/settings/SettingWriter;->mNewSetting:Lcom/android/server/ssrm/settings/Setting;

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/android/server/ssrm/settings/SettingWriter;->mNewSetting:Lcom/android/server/ssrm/settings/Setting;

    iget-object v1, p0, Lcom/android/server/ssrm/settings/SettingWriter;->mCurrentSetting:Lcom/android/server/ssrm/settings/Setting;

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/settings/Setting;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/server/ssrm/settings/SettingWriter;->mNewSetting:Lcom/android/server/ssrm/settings/Setting;

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/settings/SettingWriter;->applySetting(Lcom/android/server/ssrm/settings/Setting;)V

    .line 56
    iget-object v0, p0, Lcom/android/server/ssrm/settings/SettingWriter;->mNewSetting:Lcom/android/server/ssrm/settings/Setting;

    iput-object v0, p0, Lcom/android/server/ssrm/settings/SettingWriter;->mCurrentSetting:Lcom/android/server/ssrm/settings/Setting;

    .line 58
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ssrm/settings/SettingWriter;->mNewSetting:Lcom/android/server/ssrm/settings/Setting;

    .line 60
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 98
    .local p0, "this":Lcom/android/server/ssrm/settings/SettingWriter;, "Lcom/android/server/ssrm/settings/SettingWriter<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/settings/SettingWriter;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastAppliedValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/ssrm/settings/SettingWriter;->mCurrentSetting:Lcom/android/server/ssrm/settings/Setting;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ssrm/settings/SettingWriter;->mCurrentSetting:Lcom/android/server/ssrm/settings/Setting;

    invoke-virtual {v1}, Lcom/android/server/ssrm/settings/Setting;->value()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chooser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/settings/SettingWriter;->mSettingChooser:Lcom/android/server/ssrm/settings/SettingsChooser;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 100
    :cond_0
    const-string v1, "novalue"

    goto :goto_0
.end method
