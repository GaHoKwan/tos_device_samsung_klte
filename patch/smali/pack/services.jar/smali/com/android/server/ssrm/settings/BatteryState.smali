.class public Lcom/android/server/ssrm/settings/BatteryState;
.super Ljava/lang/Object;
.source "BatteryState.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/settings/BatteryState$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/server/ssrm/settings/BatteryState;",
        ">;"
    }
.end annotation


# instance fields
.field private mActive:Z

.field private mListener:Lcom/android/server/ssrm/settings/BatteryState$Listener;

.field private final mSettings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/ssrm/settings/Setting",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final mTemperature:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "temperature"    # I

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/settings/BatteryState;->mSettings:Ljava/util/List;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/settings/BatteryState;->mActive:Z

    .line 42
    iput p1, p0, Lcom/android/server/ssrm/settings/BatteryState;->mTemperature:I

    .line 43
    return-void
.end method


# virtual methods
.method public addSetting(Lcom/android/server/ssrm/settings/Setting;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/ssrm/settings/Setting",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "setting":Lcom/android/server/ssrm/settings/Setting;, "Lcom/android/server/ssrm/settings/Setting<*>;"
    iget-object v0, p0, Lcom/android/server/ssrm/settings/BatteryState;->mSettings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/server/ssrm/settings/BatteryState;->mSettings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_0
    return-void
.end method

.method public compareTo(Lcom/android/server/ssrm/settings/BatteryState;)I
    .locals 2
    .param p1, "that"    # Lcom/android/server/ssrm/settings/BatteryState;

    .prologue
    .line 81
    iget v0, p0, Lcom/android/server/ssrm/settings/BatteryState;->mTemperature:I

    iget v1, p1, Lcom/android/server/ssrm/settings/BatteryState;->mTemperature:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    check-cast p1, Lcom/android/server/ssrm/settings/BatteryState;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/settings/BatteryState;->compareTo(Lcom/android/server/ssrm/settings/BatteryState;)I

    move-result v0

    return v0
.end method

.method setActive(Z)V
    .locals 1
    .param p1, "activate"    # Z

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/server/ssrm/settings/BatteryState;->mActive:Z

    if-eq v0, p1, :cond_0

    .line 57
    iput-boolean p1, p0, Lcom/android/server/ssrm/settings/BatteryState;->mActive:Z

    .line 58
    iget-object v0, p0, Lcom/android/server/ssrm/settings/BatteryState;->mListener:Lcom/android/server/ssrm/settings/BatteryState$Listener;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/server/ssrm/settings/BatteryState;->mListener:Lcom/android/server/ssrm/settings/BatteryState$Listener;

    invoke-interface {v0, p0, p1}, Lcom/android/server/ssrm/settings/BatteryState$Listener;->onBatteryStateActivated(Lcom/android/server/ssrm/settings/BatteryState;Z)V

    .line 62
    :cond_0
    return-void
.end method

.method public setListener(Lcom/android/server/ssrm/settings/BatteryState$Listener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/server/ssrm/settings/BatteryState$Listener;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/server/ssrm/settings/BatteryState;->mListener:Lcom/android/server/ssrm/settings/BatteryState$Listener;

    .line 77
    return-void
.end method

.method temperature()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/android/server/ssrm/settings/BatteryState;->mTemperature:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .local v1, "sb":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Temperature="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/ssrm/settings/BatteryState;->mTemperature:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v3, p0, Lcom/android/server/ssrm/settings/BatteryState;->mActive:Z

    if-eqz v3, :cond_0

    const-string v3, " [Active]"

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-object v3, p0, Lcom/android/server/ssrm/settings/BatteryState;->mSettings:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/settings/Setting;

    .line 89
    .local v2, "setting":Lcom/android/server/ssrm/settings/Setting;, "Lcom/android/server/ssrm/settings/Setting<+Ljava/lang/Object;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 87
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "setting":Lcom/android/server/ssrm/settings/Setting;, "Lcom/android/server/ssrm/settings/Setting<+Ljava/lang/Object;>;"
    :cond_0
    const-string v3, ""

    goto :goto_0

    .line 91
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method writeSettings()V
    .locals 3

    .prologue
    .line 65
    iget-object v2, p0, Lcom/android/server/ssrm/settings/BatteryState;->mSettings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 66
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "ii":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 67
    iget-object v2, p0, Lcom/android/server/ssrm/settings/BatteryState;->mSettings:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/settings/Setting;

    invoke-virtual {v2}, Lcom/android/server/ssrm/settings/Setting;->write()V

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    :cond_0
    return-void
.end method
