.class Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
.super Ljava/lang/Object;
.source "LDAPAccountPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/email/LDAPAccountPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LDAPServiceConnection"
.end annotation


# instance fields
.field mBindComplete:Landroid/os/ConditionVariable;

.field mCallingUserId:I

.field mConnection:Landroid/content/ServiceConnection;

.field mLDAPInterfaceReceiver:Landroid/content/BroadcastReceiver;

.field mService:Landroid/app/enterprise/ILDAPInterface;

.field final synthetic this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/email/LDAPAccountPolicy;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    iput-object p1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->this$0:Lcom/android/server/enterprise/email/LDAPAccountPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->mCallingUserId:I

    .line 80
    iput-object v1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->mService:Landroid/app/enterprise/ILDAPInterface;

    .line 81
    iput-object v1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->mLDAPInterfaceReceiver:Landroid/content/BroadcastReceiver;

    .line 82
    iput-object v1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->mConnection:Landroid/content/ServiceConnection;

    .line 83
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->mBindComplete:Landroid/os/ConditionVariable;

    .line 84
    return-void
.end method


# virtual methods
.method getCallingUserId()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->mCallingUserId:I

    return v0
.end method

.method getConnection()Landroid/content/ServiceConnection;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method getReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->mLDAPInterfaceReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method getService()Landroid/app/enterprise/ILDAPInterface;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->mService:Landroid/app/enterprise/ILDAPInterface;

    return-object v0
.end method

.method setCallingUserId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->mCallingUserId:I

    .line 92
    return-void
.end method

.method setReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 0
    .param p1, "interfaceReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->mLDAPInterfaceReceiver:Landroid/content/BroadcastReceiver;

    .line 96
    return-void
.end method

.method setService(Landroid/app/enterprise/ILDAPInterface;)V
    .locals 0
    .param p1, "service"    # Landroid/app/enterprise/ILDAPInterface;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->mService:Landroid/app/enterprise/ILDAPInterface;

    .line 88
    return-void
.end method

.method setServiceConnection(Landroid/content/ServiceConnection;)V
    .locals 0
    .param p1, "connection"    # Landroid/content/ServiceConnection;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->mConnection:Landroid/content/ServiceConnection;

    .line 100
    return-void
.end method
