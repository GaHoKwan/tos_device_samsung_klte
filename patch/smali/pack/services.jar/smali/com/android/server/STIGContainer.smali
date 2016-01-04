.class public Lcom/android/server/STIGContainer;
.super Lcom/android/server/SEAMSContainer;
.source "STIGContainer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/server/SEAMSContainer;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/server/SEAMSContainer;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method public activateDomain(I)I
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 25
    const/4 v0, -0x2

    return v0
.end method

.method public addAppToContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [Ljava/lang/String;
    .param p3, "containerID"    # I
    .param p4, "appType"    # I

    .prologue
    .line 30
    const/4 v0, -0x2

    return v0
.end method

.method public deActivateDomain(I)I
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 34
    const/4 v0, -0x2

    return v0
.end method

.method public getActivationStatus()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, -0x2

    return v0
.end method

.method public removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [Ljava/lang/String;

    .prologue
    .line 42
    const/4 v0, -0x2

    return v0
.end method
