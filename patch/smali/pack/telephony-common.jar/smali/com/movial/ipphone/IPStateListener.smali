.class public Lcom/movial/ipphone/IPStateListener;
.super Ljava/lang/Object;
.source "IPStateListener.java"


# instance fields
.field listener:Lcom/movial/ipphone/IIPStateListener;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/movial/ipphone/IPStateListener$1;

    invoke-direct {v0, p0}, Lcom/movial/ipphone/IPStateListener$1;-><init>(Lcom/movial/ipphone/IPStateListener;)V

    iput-object v0, p0, Lcom/movial/ipphone/IPStateListener;->listener:Lcom/movial/ipphone/IIPStateListener;

    .line 64
    new-instance v0, Lcom/movial/ipphone/IPStateListener$2;

    invoke-direct {v0, p0}, Lcom/movial/ipphone/IPStateListener$2;-><init>(Lcom/movial/ipphone/IPStateListener;)V

    iput-object v0, p0, Lcom/movial/ipphone/IPStateListener;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/movial/ipphone/IPStateListener;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/IPStateListener;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/movial/ipphone/IPStateListener;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onRegisteredStateChanged(ZI)V
    .locals 0
    .param p1, "status"    # Z
    .param p2, "type"    # I

    .prologue
    .line 49
    return-void
.end method

.method public onWifiCallStateChanged(ILjava/lang/String;)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "status"    # Ljava/lang/String;

    .prologue
    .line 52
    return-void
.end method
