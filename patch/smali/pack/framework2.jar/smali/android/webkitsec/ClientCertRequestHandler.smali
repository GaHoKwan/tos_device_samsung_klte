.class public final Landroid/webkitsec/ClientCertRequestHandler;
.super Landroid/os/Handler;
.source "ClientCertRequestHandler.java"


# instance fields
.field private final mBrowserFrame:Landroid/webkitsec/BrowserFrame;

.field private final mHandle:I

.field private final mHostAndPort:Ljava/lang/String;

.field private final mTable:Landroid/webkitsec/SslClientCertLookupTable;


# direct methods
.method constructor <init>(Landroid/webkitsec/BrowserFrame;ILjava/lang/String;Landroid/webkitsec/SslClientCertLookupTable;)V
    .locals 0
    .param p1, "browserFrame"    # Landroid/webkitsec/BrowserFrame;
    .param p2, "handle"    # I
    .param p3, "host_and_port"    # Ljava/lang/String;
    .param p4, "table"    # Landroid/webkitsec/SslClientCertLookupTable;

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 45
    iput-object p1, p0, Landroid/webkitsec/ClientCertRequestHandler;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;

    .line 46
    iput p2, p0, Landroid/webkitsec/ClientCertRequestHandler;->mHandle:I

    .line 47
    iput-object p3, p0, Landroid/webkitsec/ClientCertRequestHandler;->mHostAndPort:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Landroid/webkitsec/ClientCertRequestHandler;->mTable:Landroid/webkitsec/SslClientCertLookupTable;

    .line 49
    return-void
.end method

.method static synthetic access$000(Landroid/webkitsec/ClientCertRequestHandler;)I
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/ClientCertRequestHandler;

    .prologue
    .line 35
    iget v0, p0, Landroid/webkitsec/ClientCertRequestHandler;->mHandle:I

    return v0
.end method

.method static synthetic access$100(Landroid/webkitsec/ClientCertRequestHandler;)Landroid/webkitsec/BrowserFrame;
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/ClientCertRequestHandler;

    .prologue
    .line 35
    iget-object v0, p0, Landroid/webkitsec/ClientCertRequestHandler;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;

    return-object v0
.end method

.method private setSslClientCertFromCtx(J[[B)V
    .locals 1
    .param p1, "ctx"    # J
    .param p3, "chainBytes"    # [[B

    .prologue
    .line 79
    new-instance v0, Landroid/webkitsec/ClientCertRequestHandler$1;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/webkitsec/ClientCertRequestHandler$1;-><init>(Landroid/webkitsec/ClientCertRequestHandler;J[[B)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    return-void
.end method

.method private setSslClientCertFromPKCS8([B[[B)V
    .locals 1
    .param p1, "key"    # [B
    .param p2, "chainBytes"    # [[B

    .prologue
    .line 90
    new-instance v0, Landroid/webkitsec/ClientCertRequestHandler$2;

    invoke-direct {v0, p0, p1, p2}, Landroid/webkitsec/ClientCertRequestHandler$2;-><init>(Landroid/webkitsec/ClientCertRequestHandler;[B[[B)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 95
    return-void
.end method


# virtual methods
.method public cac()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Landroid/webkitsec/ClientCertRequestHandler;->mTable:Landroid/webkitsec/SslClientCertLookupTable;

    iget-object v1, p0, Landroid/webkitsec/ClientCertRequestHandler;->mHostAndPort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkitsec/SslClientCertLookupTable;->Cac(Ljava/lang/String;)V

    .line 122
    new-instance v0, Landroid/webkitsec/ClientCertRequestHandler$5;

    invoke-direct {v0, p0}, Landroid/webkitsec/ClientCertRequestHandler$5;-><init>(Landroid/webkitsec/ClientCertRequestHandler;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 127
    return-void
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Landroid/webkitsec/ClientCertRequestHandler;->mTable:Landroid/webkitsec/SslClientCertLookupTable;

    iget-object v1, p0, Landroid/webkitsec/ClientCertRequestHandler;->mHostAndPort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkitsec/SslClientCertLookupTable;->Deny(Ljava/lang/String;)V

    .line 113
    new-instance v0, Landroid/webkitsec/ClientCertRequestHandler$4;

    invoke-direct {v0, p0}, Landroid/webkitsec/ClientCertRequestHandler$4;-><init>(Landroid/webkitsec/ClientCertRequestHandler;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 118
    return-void
.end method

.method public ignore()V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Landroid/webkitsec/ClientCertRequestHandler$3;

    invoke-direct {v0, p0}, Landroid/webkitsec/ClientCertRequestHandler$3;-><init>(Landroid/webkitsec/ClientCertRequestHandler;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 106
    return-void
.end method

.method public proceed(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V
    .locals 0
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "chain"    # [Ljava/security/cert/X509Certificate;

    .prologue
    .line 73
    return-void
.end method
