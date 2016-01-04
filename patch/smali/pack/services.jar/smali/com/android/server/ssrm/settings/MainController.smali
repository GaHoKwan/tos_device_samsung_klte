.class public Lcom/android/server/ssrm/settings/MainController;
.super Ljava/lang/Object;
.source "MainController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/settings/MainController$MainControllerHolder;
    }
.end annotation


# static fields
.field private static final DEFAULT_LEVEL:Ljava/lang/String; = "default"


# instance fields
.field private mConditions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/ssrm/settings/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private mLevelFactory:Lcom/android/server/ssrm/settings/LevelsFactory;

.field private mLevelsController:Lcom/android/server/ssrm/settings/LevelsController;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ssrm/settings/MainController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/ssrm/settings/MainController$1;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/server/ssrm/settings/MainController;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/ssrm/settings/MainController;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/android/server/ssrm/settings/MainController$MainControllerHolder;->INSTANCE:Lcom/android/server/ssrm/settings/MainController;

    return-object v0
.end method


# virtual methods
.method public addLevelGetCondition(Lcom/android/server/ssrm/settings/Level;Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;
    .locals 3
    .param p1, "level"    # Lcom/android/server/ssrm/settings/Level;
    .param p2, "conditionName"    # Ljava/lang/String;

    .prologue
    .line 98
    monitor-enter p0

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "condition":Lcom/android/server/ssrm/settings/Condition;
    :try_start_0
    const-string v1, "default"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/android/server/ssrm/settings/MainController;->mLevelsController:Lcom/android/server/ssrm/settings/LevelsController;

    invoke-virtual {v1, p1}, Lcom/android/server/ssrm/settings/LevelsController;->setDefaultLevel(Lcom/android/server/ssrm/settings/Level;)V

    .line 108
    :goto_0
    monitor-exit p0

    return-object v0

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/android/server/ssrm/settings/MainController;->mLevelsController:Lcom/android/server/ssrm/settings/LevelsController;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/ssrm/settings/LevelsController;->addLevelGetCondition(Lcom/android/server/ssrm/settings/Level;Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/android/server/ssrm/settings/MainController;->mConditions:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/server/ssrm/settings/Condition;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addLevelSetConditions(Lcom/android/server/ssrm/settings/Level;Ljava/util/Set;)V
    .locals 5
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
    .line 113
    .local p2, "conditions":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/ssrm/settings/Condition;>;"
    monitor-enter p0

    .line 114
    if-nez p2, :cond_0

    .line 115
    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Set of conditions shouldn\'t be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 124
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 117
    :cond_0
    :try_start_1
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/settings/Condition;

    .line 118
    .local v0, "condition":Lcom/android/server/ssrm/settings/Condition;
    iget-object v2, p0, Lcom/android/server/ssrm/settings/MainController;->mConditions:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/server/ssrm/settings/Condition;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 119
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SSRM. Condition ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/ssrm/settings/Condition;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is not registered in Settings Engine"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 123
    .end local v0    # "condition":Lcom/android/server/ssrm/settings/Condition;
    :cond_2
    iget-object v2, p0, Lcom/android/server/ssrm/settings/MainController;->mLevelsController:Lcom/android/server/ssrm/settings/LevelsController;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/ssrm/settings/LevelsController;->addLevelSetConditions(Lcom/android/server/ssrm/settings/Level;Ljava/util/Set;)V

    .line 124
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 176
    monitor-enter p0

    .line 177
    :try_start_0
    const-string v0, "SSRM SETTINGS ENGINE"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/android/server/ssrm/settings/MainController;->mLevelsController:Lcom/android/server/ssrm/settings/LevelsController;

    invoke-virtual {v0}, Lcom/android/server/ssrm/settings/LevelsController;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/server/ssrm/settings/Util;->indentText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 179
    monitor-exit p0

    .line 180
    return-void

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/server/ssrm/settings/MainController;->mConditions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/settings/Condition;

    return-object v0
.end method

.method public initialize()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-virtual {p0, v0, v0, v0}, Lcom/android/server/ssrm/settings/MainController;->initialize(Lcom/android/server/ssrm/settings/LevelsFactory;Ljava/io/InputStream;Ljava/util/List;)V

    .line 47
    return-void
.end method

.method public initialize(Lcom/android/server/ssrm/settings/LevelsFactory;)V
    .locals 1
    .param p1, "factory"    # Lcom/android/server/ssrm/settings/LevelsFactory;

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/ssrm/settings/MainController;->initialize(Lcom/android/server/ssrm/settings/LevelsFactory;Ljava/io/InputStream;Ljava/util/List;)V

    .line 51
    return-void
.end method

.method public initialize(Lcom/android/server/ssrm/settings/LevelsFactory;Ljava/io/InputStream;Ljava/util/List;)V
    .locals 4
    .param p1, "factory"    # Lcom/android/server/ssrm/settings/LevelsFactory;
    .param p2, "levelsModelIs"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/ssrm/settings/LevelsFactory;",
            "Ljava/io/InputStream;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/ssrm/settings/SettingWriter",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p3, "writers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ssrm/settings/SettingWriter<*>;>;"
    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "SSRM. Writers list is null or empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    :cond_1
    iput-object p1, p0, Lcom/android/server/ssrm/settings/MainController;->mLevelFactory:Lcom/android/server/ssrm/settings/LevelsFactory;

    .line 60
    iget-object v2, p0, Lcom/android/server/ssrm/settings/MainController;->mLevelFactory:Lcom/android/server/ssrm/settings/LevelsFactory;

    if-nez v2, :cond_2

    .line 61
    new-instance v2, Lcom/android/server/ssrm/settings/MainController$1;

    invoke-direct {v2, p0}, Lcom/android/server/ssrm/settings/MainController$1;-><init>(Lcom/android/server/ssrm/settings/MainController;)V

    iput-object v2, p0, Lcom/android/server/ssrm/settings/MainController;->mLevelFactory:Lcom/android/server/ssrm/settings/LevelsFactory;

    .line 74
    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/ssrm/settings/MainController;->mConditions:Ljava/util/HashMap;

    .line 75
    iget-object v2, p0, Lcom/android/server/ssrm/settings/MainController;->mLevelFactory:Lcom/android/server/ssrm/settings/LevelsFactory;

    invoke-interface {v2}, Lcom/android/server/ssrm/settings/LevelsFactory;->createLevelsController()Lcom/android/server/ssrm/settings/LevelsController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/ssrm/settings/MainController;->mLevelsController:Lcom/android/server/ssrm/settings/LevelsController;

    .line 76
    iget-object v2, p0, Lcom/android/server/ssrm/settings/MainController;->mLevelsController:Lcom/android/server/ssrm/settings/LevelsController;

    invoke-virtual {v2}, Lcom/android/server/ssrm/settings/LevelsController;->initialize()V

    .line 78
    if-eqz p3, :cond_3

    .line 79
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/settings/SettingWriter;

    .line 80
    .local v1, "writer":Lcom/android/server/ssrm/settings/SettingWriter;, "Lcom/android/server/ssrm/settings/SettingWriter<*>;"
    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/settings/MainController;->registerWriter(Lcom/android/server/ssrm/settings/SettingWriter;)V

    goto :goto_0

    .line 84
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "writer":Lcom/android/server/ssrm/settings/SettingWriter;, "Lcom/android/server/ssrm/settings/SettingWriter<*>;"
    :cond_3
    if-eqz p2, :cond_4

    .line 85
    new-instance v2, Lcom/android/server/ssrm/settings/LevelsModelReader;

    invoke-direct {v2, p0, p2, p3}, Lcom/android/server/ssrm/settings/LevelsModelReader;-><init>(Lcom/android/server/ssrm/settings/MainController;Ljava/io/InputStream;Ljava/util/List;)V

    invoke-virtual {v2}, Lcom/android/server/ssrm/settings/LevelsModelReader;->processModel()V

    .line 87
    :cond_4
    return-void
.end method

.method public levelsFactory()Lcom/android/server/ssrm/settings/LevelsFactory;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/ssrm/settings/MainController;->mLevelFactory:Lcom/android/server/ssrm/settings/LevelsFactory;

    return-object v0
.end method

.method public registerWriter(Lcom/android/server/ssrm/settings/SettingWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/ssrm/settings/SettingWriter",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "writer":Lcom/android/server/ssrm/settings/SettingWriter;, "Lcom/android/server/ssrm/settings/SettingWriter<*>;"
    monitor-enter p0

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ssrm/settings/MainController;->mLevelsController:Lcom/android/server/ssrm/settings/LevelsController;

    invoke-virtual {v0, p1}, Lcom/android/server/ssrm/settings/LevelsController;->registerWriter(Lcom/android/server/ssrm/settings/SettingWriter;)V

    .line 168
    monitor-exit p0

    .line 169
    return-void

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeLevel(Lcom/android/server/ssrm/settings/Condition;)V
    .locals 6
    .param p1, "condition"    # Lcom/android/server/ssrm/settings/Condition;

    .prologue
    .line 144
    monitor-enter p0

    .line 145
    if-nez p1, :cond_0

    .line 146
    :try_start_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Attempted to remove levels using null condition"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 156
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 149
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/ssrm/settings/MainController;->mConditions:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/server/ssrm/settings/Condition;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ssrm/settings/Condition;

    .line 150
    .local v3, "registeredCond":Lcom/android/server/ssrm/settings/Condition;
    if-eqz v3, :cond_1

    .line 151
    invoke-virtual {v3}, Lcom/android/server/ssrm/settings/Condition;->levels()Ljava/util/List;

    move-result-object v2

    .line 152
    .local v2, "levels":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ssrm/settings/Level;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/settings/Level;

    .line 153
    .local v1, "level":Lcom/android/server/ssrm/settings/Level;
    iget-object v4, p0, Lcom/android/server/ssrm/settings/MainController;->mLevelsController:Lcom/android/server/ssrm/settings/LevelsController;

    invoke-virtual {v4, v1}, Lcom/android/server/ssrm/settings/LevelsController;->removeLevel(Lcom/android/server/ssrm/settings/Level;)V

    goto :goto_0

    .line 156
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "level":Lcom/android/server/ssrm/settings/Level;
    .end local v2    # "levels":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ssrm/settings/Level;>;"
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    return-void
.end method

.method public removeLevel(Lcom/android/server/ssrm/settings/Level;)V
    .locals 3
    .param p1, "level"    # Lcom/android/server/ssrm/settings/Level;

    .prologue
    .line 128
    monitor-enter p0

    .line 129
    if-eqz p1, :cond_1

    .line 130
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/ssrm/settings/Level;->getConditions()Ljava/util/List;

    move-result-object v0

    .line 135
    .local v0, "conditions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ssrm/settings/Condition;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 136
    iget-object v2, p0, Lcom/android/server/ssrm/settings/MainController;->mConditions:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/settings/Condition;

    invoke-virtual {v1}, Lcom/android/server/ssrm/settings/Condition;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/android/server/ssrm/settings/MainController;->mLevelsController:Lcom/android/server/ssrm/settings/LevelsController;

    invoke-virtual {v1, p1}, Lcom/android/server/ssrm/settings/LevelsController;->removeLevel(Lcom/android/server/ssrm/settings/Level;)V

    .line 140
    .end local v0    # "conditions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ssrm/settings/Condition;>;"
    :cond_1
    monitor-exit p0

    .line 141
    return-void

    .line 140
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setTemperature(I)V
    .locals 1
    .param p1, "temperature"    # I

    .prologue
    .line 160
    monitor-enter p0

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ssrm/settings/MainController;->mLevelsController:Lcom/android/server/ssrm/settings/LevelsController;

    invoke-virtual {v0, p1}, Lcom/android/server/ssrm/settings/LevelsController;->setTemperature(I)V

    .line 162
    monitor-exit p0

    .line 163
    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
