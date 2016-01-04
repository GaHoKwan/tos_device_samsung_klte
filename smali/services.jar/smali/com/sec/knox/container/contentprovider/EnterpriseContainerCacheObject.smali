.class public Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
.super Ljava/lang/Object;
.source "EnterpriseContainerCacheObject.java"

# interfaces
.implements Lcom/sec/knox/container/EnterpriseContainerConstants;


# instance fields
.field private admin:I

.field private containerId:I

.field private containerLockOnScreenLock:Z

.field private containerStatus:I

.field private containerType:I

.field private failedPasswordAttempts:I

.field private lockType:I

.field private mEmail:Ljava/lang/String;

.field private mFirmwareVersion:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mSecurityIcon:Landroid/graphics/Bitmap;

.field private mSecurityText:Ljava/lang/String;

.field private maximumTimeToLock:J

.field private maximumTimeToUnmount:J

.field private passwordExpirationDate:J

.field private passwordExpirationTimeout:J

.field private passwordHasExpired:Z

.field private passwordStateInfo:Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;

.field private passwordStatus:I

.field private pkgsInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private verifyPwdOnlyOnModeChange:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v5, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->containerId:I

    .line 14
    iput-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mPassword:Ljava/lang/String;

    .line 15
    iput-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mEmail:Ljava/lang/String;

    .line 16
    iput-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mSecurityText:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mName:Ljava/lang/String;

    .line 18
    iput-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mSecurityIcon:Landroid/graphics/Bitmap;

    .line 19
    iput-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mFirmwareVersion:Ljava/lang/String;

    .line 20
    const/16 v0, 0x5a

    iput v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->containerStatus:I

    .line 21
    const/16 v0, 0x50

    iput v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordStatus:I

    .line 22
    iput v5, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->admin:I

    .line 23
    iput-wide v3, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordExpirationDate:J

    .line 24
    iput-wide v3, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordExpirationTimeout:J

    .line 25
    iput-boolean v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordHasExpired:Z

    .line 26
    iput v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->failedPasswordAttempts:I

    .line 27
    iput-wide v3, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->maximumTimeToLock:J

    .line 28
    iput v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->lockType:I

    .line 29
    iput v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->containerType:I

    .line 30
    iput-boolean v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->containerLockOnScreenLock:Z

    .line 31
    iput-boolean v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->verifyPwdOnlyOnModeChange:Z

    .line 32
    iput-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->pkgsInfo:Ljava/util/HashMap;

    .line 33
    iput-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordStateInfo:Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;

    .line 34
    iput-wide v3, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->maximumTimeToUnmount:J

    return-void
.end method


# virtual methods
.method public getAdmin()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->admin:I

    return v0
.end method

.method public getContainerId()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->containerId:I

    return v0
.end method

.method public getContainerLockOnScreenLock()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->containerLockOnScreenLock:Z

    return v0
.end method

.method public getContainerPackagesInfo()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->pkgsInfo:Ljava/util/HashMap;

    return-object v0
.end method

.method public getContainerStatus()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->containerStatus:I

    return v0
.end method

.method public getContainerType()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->containerType:I

    return v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getFailedPasswordAttempts()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->failedPasswordAttempts:I

    return v0
.end method

.method public getFirmwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mFirmwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getLockType()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->lockType:I

    return v0
.end method

.method public getMaximumTimeToLock()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->maximumTimeToLock:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getPasswordEnabledContainerLockTimeout()J
    .locals 2

    .prologue
    .line 209
    iget-wide v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->maximumTimeToUnmount:J

    return-wide v0
.end method

.method public getPasswordExpirationDate()J
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordExpirationDate:J

    return-wide v0
.end method

.method public getPasswordExpirationTimeout()J
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordExpirationTimeout:J

    return-wide v0
.end method

.method public getPasswordHasExpired()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordHasExpired:Z

    return v0
.end method

.method public getPasswordStateInfo()Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordStateInfo:Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;

    return-object v0
.end method

.method public getPasswordStatus()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordStatus:I

    return v0
.end method

.method public getSecurityIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mSecurityIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getSecurityText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mSecurityText:Ljava/lang/String;

    return-object v0
.end method

.method public getVerifyPwdOnlyOnChangeMode()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->verifyPwdOnlyOnModeChange:Z

    return v0
.end method

.method public setAdmin(I)V
    .locals 0
    .param p1, "admin"    # I

    .prologue
    .line 125
    iput p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->admin:I

    .line 126
    return-void
.end method

.method public setContainerId(I)V
    .locals 0
    .param p1, "container"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->containerId:I

    .line 78
    return-void
.end method

.method public setContainerLockOnScreenLock(Z)V
    .locals 0
    .param p1, "lockSetting"    # Z

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->containerLockOnScreenLock:Z

    .line 170
    return-void
.end method

.method public setContainerPackagesInfo(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;>;"
    iput-object p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->pkgsInfo:Ljava/util/HashMap;

    .line 194
    return-void
.end method

.method public setContainerStatus(I)V
    .locals 0
    .param p1, "containers"    # I

    .prologue
    .line 117
    iput p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->containerStatus:I

    .line 118
    return-void
.end method

.method public setContainerType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 141
    iput p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->containerType:I

    .line 142
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mEmail:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setFailedPasswordAttempts(I)V
    .locals 0
    .param p1, "failedPasswordAttempts"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->failedPasswordAttempts:I

    .line 38
    return-void
.end method

.method public setFirmwareVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "firmwareVersion"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mFirmwareVersion:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setLockType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 133
    iput p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->lockType:I

    .line 134
    return-void
.end method

.method public setMaximumTimeToLock(J)V
    .locals 0
    .param p1, "maximumTimeToLock"    # J

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->maximumTimeToLock:J

    .line 46
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mName:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mPassword:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setPasswordEnabledContainerLockTimeout(J)V
    .locals 0
    .param p1, "maximumTimeToUnmount"    # J

    .prologue
    .line 205
    iput-wide p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->maximumTimeToUnmount:J

    .line 206
    return-void
.end method

.method public setPasswordExpirationDate(J)V
    .locals 0
    .param p1, "passwordExpirationDate"    # J

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordExpirationDate:J

    .line 62
    return-void
.end method

.method public setPasswordExpirationTimeout(J)V
    .locals 0
    .param p1, "passwordExpirationTimeout"    # J

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordExpirationTimeout:J

    .line 70
    return-void
.end method

.method public setPasswordHasExpired(Z)V
    .locals 0
    .param p1, "passwordHasExpired"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordHasExpired:Z

    .line 54
    return-void
.end method

.method public setPasswordStateInfo(Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordStateInfo:Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;

    .line 202
    return-void
.end method

.method public setPasswordStatus(I)V
    .locals 0
    .param p1, "stat"    # I

    .prologue
    .line 149
    iput p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->passwordStatus:I

    .line 150
    return-void
.end method

.method public setSecurityIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "securityIcon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mSecurityIcon:Landroid/graphics/Bitmap;

    .line 158
    return-void
.end method

.method public setSecurityText(Ljava/lang/String;)V
    .locals 0
    .param p1, "securityText"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->mSecurityText:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setVerifyPwdOnlyOnChangeMode(Z)V
    .locals 0
    .param p1, "toggleFlag"    # Z

    .prologue
    .line 185
    iput-boolean p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->verifyPwdOnlyOnModeChange:Z

    .line 186
    return-void
.end method
