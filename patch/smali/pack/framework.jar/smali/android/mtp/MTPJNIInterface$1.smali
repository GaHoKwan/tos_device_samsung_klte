.class Landroid/mtp/MTPJNIInterface$1;
.super Landroid/content/BroadcastReceiver;
.source "MTPJNIInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MTPJNIInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/mtp/MTPJNIInterface;


# direct methods
.method constructor <init>(Landroid/mtp/MTPJNIInterface;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Landroid/mtp/MTPJNIInterface$1;->this$0:Landroid/mtp/MTPJNIInterface;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, "action":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 236
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 242
    const-string v5, "MTPJNIInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "In MTPJNIINterface onReceive:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const-string v5, "com.android.MTP.OBJECT_ADDED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 245
    sput-boolean v8, Landroid/mtp/MTPJNIInterface;->objectEventReceived:Z

    .line 246
    const-string v5, "Path"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 247
    .local v3, "path":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 248
    const-string v5, "MTPJNIInterface"

    const-string v6, "***** file path of  sendObjectAdded "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const-string v5, "MTPJNIInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "***** file path of  sendObjectAdded = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v5, p0, Landroid/mtp/MTPJNIInterface$1;->this$0:Landroid/mtp/MTPJNIInterface;

    invoke-virtual {v5, v3}, Landroid/mtp/MTPJNIInterface;->sendObjectAdded(Ljava/lang/String;)V

    .line 297
    .end local v3    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    const-string v5, "MTPJNIInterface"

    const-string v6, "In MTPJNIINterface intent is coming null:"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 252
    .restart local v3    # "path":Ljava/lang/String;
    :cond_2
    const-string v5, "MTPJNIInterface"

    const-string v6, "sendObjectAdded path is null "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 254
    .end local v3    # "path":Ljava/lang/String;
    :cond_3
    const-string v5, "com.android.MTP.OBJECT_REMOVED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 255
    sput-boolean v8, Landroid/mtp/MTPJNIInterface;->objectEventReceived:Z

    .line 256
    const-string v5, "Path"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 257
    .restart local v3    # "path":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 258
    const-string v5, "MTPJNIInterface"

    const-string v6, "***** file path of  sendObjectRemoved "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const-string v5, "MTPJNIInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "***** file path of  sendObjectRemoved = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v5, p0, Landroid/mtp/MTPJNIInterface$1;->this$0:Landroid/mtp/MTPJNIInterface;

    invoke-virtual {v5, v3}, Landroid/mtp/MTPJNIInterface;->sendObjectRemoved(Ljava/lang/String;)V

    goto :goto_0

    .line 262
    :cond_4
    const-string v5, "MTPJNIInterface"

    const-string v6, "sendObjectRemoved path is null "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 264
    .end local v3    # "path":Ljava/lang/String;
    :cond_5
    const-string v5, "com.android.MTP.OBJECT_PROP_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 265
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 266
    .local v4, "uri":Landroid/net/Uri;
    if-eqz v4, :cond_7

    .line 267
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 268
    .restart local v3    # "path":Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 269
    const-string v5, "MTPJNIInterface"

    const-string v6, "***** file path of OBJECT_PROP_CHANGED "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const-string v5, "MTPJNIInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "***** file path of OBJECT_PROP_CHANGED = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v5, p0, Landroid/mtp/MTPJNIInterface$1;->this$0:Landroid/mtp/MTPJNIInterface;

    invoke-virtual {v5, v3}, Landroid/mtp/MTPJNIInterface;->sendObjectPropChanged(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 273
    :cond_6
    const-string v5, "MTPJNIInterface"

    const-string v6, "OBJECT_PROP_CHANGED path is null "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 276
    .end local v3    # "path":Ljava/lang/String;
    :cond_7
    const-string v5, "MTPJNIInterface"

    const-string v6, "uri object is null "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const-string v5, "Path"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 278
    .restart local v3    # "path":Ljava/lang/String;
    if-eqz v3, :cond_8

    .line 279
    const-string v5, "MTPJNIInterface"

    const-string v6, "***** file path of  OBJECT_PROP_CHANGED "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const-string v5, "MTPJNIInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "***** file path of  OBJECT_PROP_CHANGED = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v5, p0, Landroid/mtp/MTPJNIInterface$1;->this$0:Landroid/mtp/MTPJNIInterface;

    invoke-virtual {v5, v3}, Landroid/mtp/MTPJNIInterface;->sendObjectPropChanged(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 283
    :cond_8
    const-string v5, "MTPJNIInterface"

    const-string v6, "OBJECT_PROP_CHANGED path is null "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 286
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_9
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 287
    const-string v5, "plugged"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 288
    .local v1, "battPlugged":I
    if-nez v1, :cond_0

    .line 289
    # getter for: Landroid/mtp/MTPJNIInterface;->mHandler:Landroid/os/Handler;
    invoke-static {}, Landroid/mtp/MTPJNIInterface;->access$000()Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 290
    # getter for: Landroid/mtp/MTPJNIInterface;->mHandler:Landroid/os/Handler;
    invoke-static {}, Landroid/mtp/MTPJNIInterface;->access$000()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 291
    .local v2, "msg":Landroid/os/Message;
    const/16 v5, 0x13

    iput v5, v2, Landroid/os/Message;->what:I

    .line 292
    # getter for: Landroid/mtp/MTPJNIInterface;->mHandler:Landroid/os/Handler;
    invoke-static {}, Landroid/mtp/MTPJNIInterface;->access$000()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
