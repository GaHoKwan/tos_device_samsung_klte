.class Lcom/movial/ipphone/IPPhone$4;
.super Landroid/os/Handler;
.source "IPPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/movial/ipphone/IPPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/movial/ipphone/IPPhone;


# direct methods
.method constructor <init>(Lcom/movial/ipphone/IPPhone;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/movial/ipphone/IPPhone$4;->this$0:Lcom/movial/ipphone/IPPhone;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 357
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 369
    iget-object v1, p0, Lcom/movial/ipphone/IPPhone$4;->this$0:Lcom/movial/ipphone/IPPhone;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handler/handleMessage(): unexpected message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/movial/ipphone/IPPhone;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/movial/ipphone/IPPhone;->access$1200(Lcom/movial/ipphone/IPPhone;Ljava/lang/String;)V

    .line 372
    :goto_0
    return-void

    .line 359
    :pswitch_0
    iget-object v1, p0, Lcom/movial/ipphone/IPPhone$4;->this$0:Lcom/movial/ipphone/IPPhone;

    const-string v2, "Handler/handleMessage(): EVENT_OOBE_WIFION_TIMEOUT"

    # invokes: Lcom/movial/ipphone/IPPhone;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/movial/ipphone/IPPhone;->access$1200(Lcom/movial/ipphone/IPPhone;Ljava/lang/String;)V

    .line 360
    iget-object v1, p0, Lcom/movial/ipphone/IPPhone$4;->this$0:Lcom/movial/ipphone/IPPhone;

    # getter for: Lcom/movial/ipphone/IPPhone;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/movial/ipphone/IPPhone;->access$1300(Lcom/movial/ipphone/IPPhone;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "WIFI_FIRST_TURNON"

    invoke-static {v1, v2, v3}, Lcom/movial/ipphone/IPPhoneSettings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 361
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 362
    .local v0, "newintent":Landroid/content/Intent;
    const-string v1, "com.movial.ipservice"

    const-string v2, "com.movial.ipservice.IPDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    const-string v1, "dialog_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 364
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 365
    iget-object v1, p0, Lcom/movial/ipphone/IPPhone$4;->this$0:Lcom/movial/ipphone/IPPhone;

    # getter for: Lcom/movial/ipphone/IPPhone;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/movial/ipphone/IPPhone;->access$1300(Lcom/movial/ipphone/IPPhone;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 366
    iget-object v1, p0, Lcom/movial/ipphone/IPPhone$4;->this$0:Lcom/movial/ipphone/IPPhone;

    const-string v2, "processWifiChanged(): showed dialog for first wifi enabled"

    # invokes: Lcom/movial/ipphone/IPPhone;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/movial/ipphone/IPPhone;->access$1200(Lcom/movial/ipphone/IPPhone;Ljava/lang/String;)V

    goto :goto_0

    .line 357
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
