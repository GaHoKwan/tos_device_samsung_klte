.class public Landroid/security/TimaKeyStoreWrapper;
.super Ljava/lang/Object;
.source "TimaKeyStoreWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/TimaKeyStoreWrapper$State;
    }
.end annotation


# static fields
.field public static final FLAG_ENCRYPTED:I = 0x1

.field public static final FLAG_NONE:I = 0x0

.field public static final KEY_NOT_FOUND:I = 0x7

.field public static final LOCKED:I = 0x2

.field public static final NO_ERROR:I = 0x1

.field public static final PERMISSION_DENIED:I = 0x6

.field public static final PROTOCOL_ERROR:I = 0x5

.field public static final SYSTEM_ERROR:I = 0x4

.field private static final TAG:Ljava/lang/String; = "TimaKeyStoreWrapper"

.field public static final UID_SELF:I = -0x1

.field public static final UNDEFINED_ACTION:I = 0x9

.field public static final UNINITIALIZED:I = 0x3

.field public static final VALUE_CORRUPTED:I = 0x8

.field public static final WRONG_PASSWORD:I = 0xa


# instance fields
.field private final mBinder:Landroid/service/tima/ITimaService;

.field private mError:I


# direct methods
.method private constructor <init>(Landroid/service/tima/ITimaService;)V
    .locals 1
    .param p1, "binder"    # Landroid/service/tima/ITimaService;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Landroid/security/TimaKeyStoreWrapper;->mError:I

    .line 68
    iput-object p1, p0, Landroid/security/TimaKeyStoreWrapper;->mBinder:Landroid/service/tima/ITimaService;

    .line 69
    return-void
.end method

.method public static getInstance()Landroid/security/TimaKeyStoreWrapper;
    .locals 5

    .prologue
    .line 72
    const-string v2, "1"

    const-string/jumbo v3, "ro.config.tima"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 73
    .local v0, "timaEnabled":Z
    if-eqz v0, :cond_0

    .line 74
    const-string/jumbo v2, "tima"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v1

    .line 75
    .local v1, "timaService":Landroid/service/tima/ITimaService;
    new-instance v2, Landroid/security/TimaKeyStoreWrapper;

    invoke-direct {v2, v1}, Landroid/security/TimaKeyStoreWrapper;-><init>(Landroid/service/tima/ITimaService;)V

    .line 77
    .end local v1    # "timaService":Landroid/service/tima/ITimaService;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 138
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/TimaKeyStoreWrapper;->contains(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 130
    :try_start_0
    iget-object v1, p0, Landroid/security/TimaKeyStoreWrapper;->mBinder:Landroid/service/tima/ITimaService;

    invoke-interface {v1, p1, p2}, Landroid/service/tima/ITimaService;->KeyStore3_exist(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 133
    :goto_0
    return v1

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TimaKeyStoreWrapper"

    const-string v2, "Cannot connect to ITima Service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 125
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/TimaKeyStoreWrapper;->delete(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public delete(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 117
    :try_start_0
    iget-object v1, p0, Landroid/security/TimaKeyStoreWrapper;->mBinder:Landroid/service/tima/ITimaService;

    invoke-interface {v1, p1, p2}, Landroid/service/tima/ITimaService;->KeyStore3_del(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 120
    :goto_0
    return v1

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TimaKeyStoreWrapper"

    const-string v2, "Cannot connect to ITima Service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/String;[C)[B
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "password"    # [C

    .prologue
    .line 92
    :try_start_0
    iget-object v1, p0, Landroid/security/TimaKeyStoreWrapper;->mBinder:Landroid/service/tima/ITimaService;

    invoke-interface {v1, p1, p2}, Landroid/service/tima/ITimaService;->KeyStore3_get(Ljava/lang/String;[C)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 95
    :goto_0
    return-object v1

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TimaKeyStoreWrapper"

    const-string v2, "Cannot connect to ITima Service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getmtime(Ljava/lang/String;)J
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const-wide/16 v3, -0x1

    .line 197
    :try_start_0
    iget-object v5, p0, Landroid/security/TimaKeyStoreWrapper;->mBinder:Landroid/service/tima/ITimaService;

    invoke-interface {v5, p1}, Landroid/service/tima/ITimaService;->KeyStore3_getmtime(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 198
    .local v1, "millis":J
    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 205
    .end local v1    # "millis":J
    :goto_0
    return-wide v3

    .line 202
    .restart local v1    # "millis":J
    :cond_0
    const-wide/16 v3, 0x3e8

    mul-long/2addr v3, v1

    goto :goto_0

    .line 203
    .end local v1    # "millis":J
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "TimaKeyStoreWrapper"

    const-string v6, "Cannot connect to ITima Service"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public init()I
    .locals 3

    .prologue
    .line 82
    :try_start_0
    iget-object v1, p0, Landroid/security/TimaKeyStoreWrapper;->mBinder:Landroid/service/tima/ITimaService;

    invoke-interface {v1}, Landroid/service/tima/ITimaService;->KeyStore3_init()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 85
    :goto_0
    return v1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TimaKeyStoreWrapper"

    const-string v2, "Cannot connect to ITima Service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public put(Ljava/lang/String;[BI[C)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B
    .param p3, "uid"    # I
    .param p4, "password"    # [C

    .prologue
    const/4 v1, -0x1

    .line 102
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getCertificatePolicy()Landroid/sec/enterprise/certificate/CertificatePolicy;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Landroid/sec/enterprise/certificate/CertificatePolicy;->isCaCertificateTrusted([BZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    const-string v2, "TimaKeyStoreWrapper"

    const-string v3, "Put not allowed. Untrusted certificate."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_0
    return v1

    .line 108
    :cond_0
    iget-object v2, p0, Landroid/security/TimaKeyStoreWrapper;->mBinder:Landroid/service/tima/ITimaService;

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/service/tima/ITimaService;->KeyStore3_put(Ljava/lang/String;[BI[C)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "TimaKeyStoreWrapper"

    const-string v3, "Cannot connect to ITima service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public saw(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 151
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/TimaKeyStoreWrapper;->saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public saw(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 143
    :try_start_0
    iget-object v1, p0, Landroid/security/TimaKeyStoreWrapper;->mBinder:Landroid/service/tima/ITimaService;

    invoke-interface {v1, p1, p2}, Landroid/service/tima/ITimaService;->KeyStore3_saw(Ljava/lang/String;I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 146
    :goto_0
    return-object v1

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TimaKeyStoreWrapper"

    const-string v2, "Cannot connect to ITima Service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    const/4 v1, 0x0

    goto :goto_0
.end method
