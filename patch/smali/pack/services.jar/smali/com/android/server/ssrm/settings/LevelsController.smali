.class public abstract Lcom/android/server/ssrm/settings/LevelsController;
.super Ljava/lang/Object;
.source "LevelsController.java"

# interfaces
.implements Lcom/android/server/ssrm/settings/Condition$Listener;


# instance fields
.field protected mLevels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/ssrm/settings/Level;",
            ">;"
        }
    .end annotation
.end field

.field protected mTemperature:I

.field private mWriters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/ssrm/settings/SettingWriter",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/ssrm/settings/LevelsController;->mTemperature:I

    return-void
.end method


# virtual methods
.method public addLevelGetCondition(Lcom/android/server/ssrm/settings/Level;Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;
    .locals 3
    .param p1, "level"    # Lcom/android/server/ssrm/settings/Level;
    .param p2, "conditionName"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/settings/LevelsController;->checkLevel(Lcom/android/server/ssrm/settings/Level;)V

    .line 72
    iget v1, p0, Lcom/android/server/ssrm/settings/LevelsController;->mTemperature:I

    iget v2, p0, Lcom/android/server/ssrm/settings/LevelsController;->mTemperature:I

    invoke-virtual {p1, v1, v2}, Lcom/android/server/ssrm/settings/Level;->setTemperature(II)V

    .line 74
    new-instance v0, Lcom/android/server/ssrm/settings/Condition;

    invoke-direct {v0, p2}, Lcom/android/server/ssrm/settings/Condition;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, "condition":Lcom/android/server/ssrm/settings/Condition;
    invoke-virtual {v0, p0}, Lcom/android/server/ssrm/settings/Condition;->setListener(Lcom/android/server/ssrm/settings/Condition$Listener;)V

    .line 76
    invoke-virtual {p1, v0}, Lcom/android/server/ssrm/settings/Level;->setCondition(Lcom/android/server/ssrm/settings/Condition;)V

    .line 77
    iget-object v1, p0, Lcom/android/server/ssrm/settings/LevelsController;->mLevels:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    return-object v0
.end method

.method public addLevelSetConditions(Lcom/android/server/ssrm/settings/Level;Ljava/util/Set;)V
    .locals 4
    .param p1, "level"    # Lcom/android/server/ssrm/settings/Level;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/ssrm/settings/Level;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/ssrm/settings/Condition;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p2, "conditions":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/ssrm/settings/Condition;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/settings/LevelsController;->checkLevel(Lcom/android/server/ssrm/settings/Level;)V

    .line 88
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 89
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "SSRM. There should be more than one conditions"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 91
    :cond_0
    iget v2, p0, Lcom/android/server/ssrm/settings/LevelsController;->mTemperature:I

    iget v3, p0, Lcom/android/server/ssrm/settings/LevelsController;->mTemperature:I

    invoke-virtual {p1, v2, v3}, Lcom/android/server/ssrm/settings/Level;->setTemperature(II)V

    .line 93
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/settings/Condition;

    .line 94
    .local v0, "condition":Lcom/android/server/ssrm/settings/Condition;
    invoke-virtual {v0, p0}, Lcom/android/server/ssrm/settings/Condition;->setListener(Lcom/android/server/ssrm/settings/Condition$Listener;)V

    .line 95
    invoke-virtual {p1, v0}, Lcom/android/server/ssrm/settings/Level;->setCondition(Lcom/android/server/ssrm/settings/Condition;)V

    goto :goto_0

    .line 97
    .end local v0    # "condition":Lcom/android/server/ssrm/settings/Condition;
    :cond_1
    iget-object v2, p0, Lcom/android/server/ssrm/settings/LevelsController;->mLevels:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

.method protected checkLevel(Lcom/android/server/ssrm/settings/Level;)V
    .locals 2
    .param p1, "level"    # Lcom/android/server/ssrm/settings/Level;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 111
    if-nez p1, :cond_0

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Level shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/settings/LevelsController;->mLevels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This level already registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_1
    return-void
.end method

.method public final initialize()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/settings/LevelsController;->mWriters:Ljava/util/HashMap;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/settings/LevelsController;->mLevels:Ljava/util/List;

    .line 45
    invoke-virtual {p0}, Lcom/android/server/ssrm/settings/LevelsController;->onInitialize()V

    .line 46
    return-void
.end method

.method public final initialize(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/ssrm/settings/SettingWriter",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "writers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ssrm/settings/SettingWriter<*>;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/ssrm/settings/LevelsController;->mWriters:Ljava/util/HashMap;

    .line 50
    if-eqz p1, :cond_0

    .line 51
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 52
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "ii":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 53
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/settings/SettingWriter;

    .line 54
    .local v2, "writer":Lcom/android/server/ssrm/settings/SettingWriter;, "Lcom/android/server/ssrm/settings/SettingWriter<*>;"
    iget-object v3, p0, Lcom/android/server/ssrm/settings/LevelsController;->mWriters:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/android/server/ssrm/settings/SettingWriter;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    .end local v0    # "count":I
    .end local v1    # "ii":I
    .end local v2    # "writer":Lcom/android/server/ssrm/settings/SettingWriter;, "Lcom/android/server/ssrm/settings/SettingWriter<*>;"
    :cond_0
    iget-object v3, p0, Lcom/android/server/ssrm/settings/LevelsController;->mWriters:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 58
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "SSRM. Writers list shouldn\'t be null or empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 61
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/ssrm/settings/LevelsController;->mLevels:Ljava/util/List;

    .line 63
    invoke-virtual {p0}, Lcom/android/server/ssrm/settings/LevelsController;->onInitialize()V

    .line 64
    return-void
.end method

.method protected onInitialize()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method protected abstract onTemperatureChanged(II)V
.end method

.method public registerWriter(Lcom/android/server/ssrm/settings/SettingWriter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/ssrm/settings/SettingWriter",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, "writer":Lcom/android/server/ssrm/settings/SettingWriter;, "Lcom/android/server/ssrm/settings/SettingWriter<*>;"
    if-nez p1, :cond_0

    .line 153
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Writer cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/android/server/ssrm/settings/LevelsController;->mWriters:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/server/ssrm/settings/SettingWriter;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/settings/SettingWriter;

    .line 156
    .local v0, "prevWriter":Lcom/android/server/ssrm/settings/SettingWriter;, "Lcom/android/server/ssrm/settings/SettingWriter<*>;"
    if-eqz v0, :cond_1

    .line 157
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SSRM. Writer with name ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/ssrm/settings/SettingWriter;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") already registered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 160
    :cond_1
    return-void
.end method

.method public removeLevel(Lcom/android/server/ssrm/settings/Level;)V
    .locals 4
    .param p1, "level"    # Lcom/android/server/ssrm/settings/Level;

    .prologue
    .line 102
    iget-object v3, p0, Lcom/android/server/ssrm/settings/LevelsController;->mLevels:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    invoke-virtual {p1}, Lcom/android/server/ssrm/settings/Level;->getConditions()Ljava/util/List;

    move-result-object v1

    .line 104
    .local v1, "conditions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ssrm/settings/Condition;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/settings/Condition;

    .line 105
    .local v0, "condition":Lcom/android/server/ssrm/settings/Condition;
    invoke-virtual {v0, p1}, Lcom/android/server/ssrm/settings/Condition;->unregisterLevel(Lcom/android/server/ssrm/settings/Level;)V

    goto :goto_0

    .line 108
    .end local v0    # "condition":Lcom/android/server/ssrm/settings/Condition;
    .end local v1    # "conditions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ssrm/settings/Condition;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method setDefaultLevel(Lcom/android/server/ssrm/settings/Level;)V
    .locals 0
    .param p1, "level"    # Lcom/android/server/ssrm/settings/Level;

    .prologue
    .line 83
    return-void
.end method

.method public final setTemperature(I)V
    .locals 2
    .param p1, "temperature"    # I

    .prologue
    .line 120
    iget v1, p0, Lcom/android/server/ssrm/settings/LevelsController;->mTemperature:I

    if-eq v1, p1, :cond_0

    .line 121
    iget v0, p0, Lcom/android/server/ssrm/settings/LevelsController;->mTemperature:I

    .line 122
    .local v0, "oldTemperature":I
    iput p1, p0, Lcom/android/server/ssrm/settings/LevelsController;->mTemperature:I

    .line 123
    iget v1, p0, Lcom/android/server/ssrm/settings/LevelsController;->mTemperature:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/settings/LevelsController;->onTemperatureChanged(II)V

    .line 125
    .end local v0    # "oldTemperature":I
    :cond_0
    return-void
.end method

.method protected final startSettingsWriting()V
    .locals 3

    .prologue
    .line 132
    iget-object v2, p0, Lcom/android/server/ssrm/settings/LevelsController;->mWriters:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 133
    .local v0, "writers":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/ssrm/settings/SettingWriter<*>;>;"
    if-eqz v0, :cond_0

    .line 134
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 135
    .local v1, "writersItter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/ssrm/settings/SettingWriter<*>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/settings/SettingWriter;

    invoke-virtual {v2}, Lcom/android/server/ssrm/settings/SettingWriter;->startModification()V

    goto :goto_0

    .line 139
    .end local v1    # "writersItter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/ssrm/settings/SettingWriter<*>;>;"
    :cond_0
    return-void
.end method

.method protected final stopSettingsWritingAndApply()V
    .locals 3

    .prologue
    .line 142
    iget-object v2, p0, Lcom/android/server/ssrm/settings/LevelsController;->mWriters:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 143
    .local v0, "writers":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/ssrm/settings/SettingWriter<*>;>;"
    if-eqz v0, :cond_0

    .line 144
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 145
    .local v1, "writersItter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/ssrm/settings/SettingWriter<*>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/settings/SettingWriter;

    invoke-virtual {v2}, Lcom/android/server/ssrm/settings/SettingWriter;->stopModification()V

    goto :goto_0

    .line 149
    .end local v1    # "writersItter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/ssrm/settings/SettingWriter<*>;>;"
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "DEBUG":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .local v3, "sb":Ljava/lang/StringBuilder;
    if-eqz v0, :cond_2

    .line 168
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Temperature="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/ssrm/settings/LevelsController;->mTemperature:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const-string v6, "WRITERS:\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    iget-object v6, p0, Lcom/android/server/ssrm/settings/LevelsController;->mWriters:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    .line 173
    .local v5, "writers":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/ssrm/settings/SettingWriter<*>;>;"
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ssrm/settings/SettingWriter;

    .line 174
    .local v4, "writer":Lcom/android/server/ssrm/settings/SettingWriter;, "Lcom/android/server/ssrm/settings/SettingWriter<*>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 176
    .end local v4    # "writer":Lcom/android/server/ssrm/settings/SettingWriter;, "Lcom/android/server/ssrm/settings/SettingWriter<*>;"
    :cond_0
    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const-string v6, "LEVELS:\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    iget-object v6, p0, Lcom/android/server/ssrm/settings/LevelsController;->mLevels:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/settings/Level;

    .line 180
    .local v2, "level":Lcom/android/server/ssrm/settings/Level;
    invoke-virtual {v2}, Lcom/android/server/ssrm/settings/Level;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, Lcom/android/server/ssrm/settings/Util;->indentText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 182
    .end local v2    # "level":Lcom/android/server/ssrm/settings/Level;
    :cond_1
    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "writers":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/ssrm/settings/SettingWriter<*>;>;"
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method protected abstract traverseLevels()V
.end method
