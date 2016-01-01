.class Landroid/util/fenghen/CarrierLabel/CarrierLabel$1;
.super Landroid/content/BroadcastReceiver;
.source "CarrierLabel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/fenghen/CarrierLabel/CarrierLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/util/fenghen/CarrierLabel/CarrierLabel;


# direct methods
.method constructor <init>(Landroid/util/fenghen/CarrierLabel/CarrierLabel;)V
    .locals 0

    iput-object p1, p0, Landroid/util/fenghen/CarrierLabel/CarrierLabel$1;->this$0:Landroid/util/fenghen/CarrierLabel/CarrierLabel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/util/fenghen/CarrierLabel/CarrierLabel$1;->this$0:Landroid/util/fenghen/CarrierLabel/CarrierLabel;

    const-string/jumbo v1, "showSpn"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string/jumbo v2, "spn"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "showPlmn"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string/jumbo v4, "plmn"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/util/fenghen/CarrierLabel/CarrierLabel;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    :cond_0
    return-void
.end method
