.class public Landroid/webkitsec/Plugin;
.super Ljava/lang/Object;
.source "Plugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/Plugin$1;,
        Landroid/webkitsec/Plugin$DefaultClickHandler;,
        Landroid/webkitsec/Plugin$PreferencesClickHandler;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mHandler:Landroid/webkitsec/Plugin$PreferencesClickHandler;

.field private mName:Ljava/lang/String;

.field private mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Landroid/webkitsec/Plugin;->mName:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Landroid/webkitsec/Plugin;->mPath:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Landroid/webkitsec/Plugin;->mFileName:Ljava/lang/String;

    .line 69
    iput-object p4, p0, Landroid/webkitsec/Plugin;->mDescription:Ljava/lang/String;

    .line 70
    new-instance v0, Landroid/webkitsec/Plugin$DefaultClickHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/webkitsec/Plugin$DefaultClickHandler;-><init>(Landroid/webkitsec/Plugin;Landroid/webkitsec/Plugin$1;)V

    iput-object v0, p0, Landroid/webkitsec/Plugin;->mHandler:Landroid/webkitsec/Plugin$PreferencesClickHandler;

    .line 71
    return-void
.end method

.method static synthetic access$100(Landroid/webkitsec/Plugin;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/Plugin;

    .prologue
    .line 35
    iget-object v0, p0, Landroid/webkitsec/Plugin;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/webkitsec/Plugin;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/Plugin;

    .prologue
    .line 35
    iget-object v0, p0, Landroid/webkitsec/Plugin;->mName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public dispatchClickEvent(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Landroid/webkitsec/Plugin;->mHandler:Landroid/webkitsec/Plugin$PreferencesClickHandler;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Landroid/webkitsec/Plugin;->mHandler:Landroid/webkitsec/Plugin$PreferencesClickHandler;

    invoke-interface {v0, p1}, Landroid/webkitsec/Plugin$PreferencesClickHandler;->handleClickEvent(Landroid/content/Context;)V

    .line 185
    :cond_0
    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Landroid/webkitsec/Plugin;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Landroid/webkitsec/Plugin;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Landroid/webkitsec/Plugin;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Landroid/webkitsec/Plugin;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public setClickHandler(Landroid/webkitsec/Plugin$PreferencesClickHandler;)V
    .locals 0
    .param p1, "handler"    # Landroid/webkitsec/Plugin$PreferencesClickHandler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 170
    iput-object p1, p0, Landroid/webkitsec/Plugin;->mHandler:Landroid/webkitsec/Plugin$PreferencesClickHandler;

    .line 171
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 160
    iput-object p1, p0, Landroid/webkitsec/Plugin;->mDescription:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 150
    iput-object p1, p0, Landroid/webkitsec/Plugin;->mFileName:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 130
    iput-object p1, p0, Landroid/webkitsec/Plugin;->mName:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 140
    iput-object p1, p0, Landroid/webkitsec/Plugin;->mPath:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Landroid/webkitsec/Plugin;->mName:Ljava/lang/String;

    return-object v0
.end method
