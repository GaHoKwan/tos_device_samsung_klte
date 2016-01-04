.class Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;
.super Ljava/lang/Thread;
.source "EnterpriseVpnPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LooperThread"
.end annotation


# instance fields
.field final mCiscoMessenger:Landroid/os/Messenger;

.field final synthetic this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V
    .locals 2

    .prologue
    .line 621
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;->this$0:Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 622
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread$1;-><init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicy$LooperThread;->mCiscoMessenger:Landroid/os/Messenger;

    .line 639
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 643
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 644
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 645
    return-void
.end method
