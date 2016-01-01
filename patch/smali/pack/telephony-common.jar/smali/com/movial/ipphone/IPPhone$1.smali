.class Lcom/movial/ipphone/IPPhone$1;
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
    .line 158
    iput-object p1, p0, Lcom/movial/ipphone/IPPhone$1;->this$0:Lcom/movial/ipphone/IPPhone;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    .line 162
    :try_start_0
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 252
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 164
    :pswitch_1
    iget-object v9, p0, Lcom/movial/ipphone/IPPhone$1;->this$0:Lcom/movial/ipphone/IPPhone;

    # getter for: Lcom/movial/ipphone/IPPhone;->mMmiMessages:[Landroid/os/Message;
    invoke-static {v9}, Lcom/movial/ipphone/IPPhone;->access$000(Lcom/movial/ipphone/IPPhone;)[Landroid/os/Message;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg2:I

    aget-object v5, v9, v10

    .line 165
    .local v5, "m":Landroid/os/Message;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v9

    if-nez v9, :cond_2

    .line 166
    :cond_1
    const-string v9, "IPPhone"

    const-string v10, "No pending CF request"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/util/AndroidRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 231
    .end local v5    # "m":Landroid/os/Message;
    :catch_0
    move-exception v3

    .line 240
    .local v3, "e":Landroid/util/AndroidRuntimeException;
    invoke-virtual {v3}, Landroid/util/AndroidRuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 242
    .local v4, "exceptionMessage":Ljava/lang/String;
    const-string v9, "This message is already in use"

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 243
    const-string v9, "IPPhone"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ignored: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Landroid/util/AndroidRuntimeException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v9, p0, Lcom/movial/ipphone/IPPhone$1;->this$0:Lcom/movial/ipphone/IPPhone;

    # getter for: Lcom/movial/ipphone/IPPhone;->mPendingMMIs:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/movial/ipphone/IPPhone;->access$300(Lcom/movial/ipphone/IPPhone;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 246
    iget-object v9, p0, Lcom/movial/ipphone/IPPhone$1;->this$0:Lcom/movial/ipphone/IPPhone;

    # getter for: Lcom/movial/ipphone/IPPhone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;
    invoke-static {v9}, Lcom/movial/ipphone/IPPhone;->access$700(Lcom/movial/ipphone/IPPhone;)Landroid/os/RegistrantList;

    move-result-object v9

    new-instance v10, Landroid/os/AsyncResult;

    invoke-direct {v10, v8, v8, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v9, v10}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 169
    .end local v3    # "e":Landroid/util/AndroidRuntimeException;
    .end local v4    # "exceptionMessage":Ljava/lang/String;
    .restart local v5    # "m":Landroid/os/Message;
    :cond_2
    :try_start_1
    iget v9, p1, Landroid/os/Message;->arg1:I

    if-eqz v9, :cond_3

    new-instance v3, Ljava/lang/Exception;

    const-string v9, "setCallForward Failed"

    invoke-direct {v3, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 170
    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    const/4 v9, 0x0

    invoke-static {v5, v9, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 171
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    move-object v3, v8

    .line 169
    goto :goto_1

    .line 175
    .end local v5    # "m":Landroid/os/Message;
    :pswitch_2
    iget-object v9, p0, Lcom/movial/ipphone/IPPhone$1;->this$0:Lcom/movial/ipphone/IPPhone;

    # getter for: Lcom/movial/ipphone/IPPhone;->mMmiMessages:[Landroid/os/Message;
    invoke-static {v9}, Lcom/movial/ipphone/IPPhone;->access$000(Lcom/movial/ipphone/IPPhone;)[Landroid/os/Message;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg2:I

    aget-object v5, v9, v10

    .line 176
    .restart local v5    # "m":Landroid/os/Message;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v9

    if-nez v9, :cond_5

    .line 177
    :cond_4
    const-string v9, "IPPhone"

    const-string v10, "No pending Call Waiting request"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 180
    :cond_5
    iget v9, p1, Landroid/os/Message;->arg1:I

    if-eqz v9, :cond_6

    new-instance v3, Ljava/lang/Exception;

    const-string v9, "setCallWaiting Failed"

    invoke-direct {v3, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 181
    .restart local v3    # "e":Ljava/lang/Exception;
    :goto_2
    const/4 v9, 0x0

    invoke-static {v5, v9, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 182
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 183
    iget v9, p1, Landroid/os/Message;->arg1:I

    if-nez v9, :cond_0

    .line 184
    iget-object v9, p0, Lcom/movial/ipphone/IPPhone$1;->this$0:Lcom/movial/ipphone/IPPhone;

    iget-object v10, p0, Lcom/movial/ipphone/IPPhone$1;->this$0:Lcom/movial/ipphone/IPPhone;

    # getter for: Lcom/movial/ipphone/IPPhone;->mCallWaitingOnPregress:Z
    invoke-static {v10}, Lcom/movial/ipphone/IPPhone;->access$200(Lcom/movial/ipphone/IPPhone;)Z

    move-result v10

    # setter for: Lcom/movial/ipphone/IPPhone;->mCallWaitingDone:Z
    invoke-static {v9, v10}, Lcom/movial/ipphone/IPPhone;->access$102(Lcom/movial/ipphone/IPPhone;Z)Z

    goto/16 :goto_0

    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_6
    move-object v3, v8

    .line 180
    goto :goto_2

    .line 189
    .end local v5    # "m":Landroid/os/Message;
    :pswitch_3
    iget-object v9, p0, Lcom/movial/ipphone/IPPhone$1;->this$0:Lcom/movial/ipphone/IPPhone;

    # getter for: Lcom/movial/ipphone/IPPhone;->mMmiMessages:[Landroid/os/Message;
    invoke-static {v9}, Lcom/movial/ipphone/IPPhone;->access$000(Lcom/movial/ipphone/IPPhone;)[Landroid/os/Message;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg2:I

    aget-object v5, v9, v10

    .line 195
    .restart local v5    # "m":Landroid/os/Message;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 196
    .local v2, "data":Landroid/os/Bundle;
    if-eqz v2, :cond_7

    .line 197
    const-string v9, "reason"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 198
    .local v6, "reason":Ljava/lang/String;
    const-string v9, "IPPhone"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "reason to clear pending MMIs:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    if-eqz v6, :cond_7

    const-string v9, "terminateAll"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 200
    iget-object v9, p0, Lcom/movial/ipphone/IPPhone$1;->this$0:Lcom/movial/ipphone/IPPhone;

    # getter for: Lcom/movial/ipphone/IPPhone;->mPendingMMIs:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/movial/ipphone/IPPhone;->access$300(Lcom/movial/ipphone/IPPhone;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 202
    iget-object v9, p0, Lcom/movial/ipphone/IPPhone$1;->this$0:Lcom/movial/ipphone/IPPhone;

    # getter for: Lcom/movial/ipphone/IPPhone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;
    invoke-static {v9}, Lcom/movial/ipphone/IPPhone;->access$400(Lcom/movial/ipphone/IPPhone;)Landroid/os/RegistrantList;

    move-result-object v9

    new-instance v10, Landroid/os/AsyncResult;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v9, v10}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 203
    const-string v9, "IPPhone"

    const-string v10, "cleared pending MMIs because of terminateAllSessions. Possibly the user turned off Wifi immediately after dialing USSD"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 207
    .end local v6    # "reason":Ljava/lang/String;
    :cond_7
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v9

    if-nez v9, :cond_9

    .line 208
    :cond_8
    const-string v9, "IPPhone"

    const-string v10, "No pending USSD request"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 211
    :cond_9
    iget v9, p1, Landroid/os/Message;->arg1:I

    if-eqz v9, :cond_a

    new-instance v3, Ljava/lang/Exception;

    const-string v9, "send USSD Failed"

    invoke-direct {v3, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 212
    .restart local v3    # "e":Ljava/lang/Exception;
    :goto_3
    const/4 v9, 0x0

    invoke-static {v5, v9, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 213
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Landroid/util/AndroidRuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_a
    move-object v3, v8

    .line 211
    goto :goto_3

    .line 218
    .end local v2    # "data":Landroid/os/Bundle;
    .end local v5    # "m":Landroid/os/Message;
    :pswitch_4
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 219
    .local v1, "bundle":Landroid/os/Bundle;
    const-class v9, Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 220
    const-string v9, "ussd"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 221
    .local v7, "ussdString":Ljava/lang/String;
    iget-object v9, p0, Lcom/movial/ipphone/IPPhone$1;->this$0:Lcom/movial/ipphone/IPPhone;

    const/4 v10, 0x0

    # invokes: Lcom/movial/ipphone/IPPhone;->onIncomingUSSD(ILjava/lang/String;)V
    invoke-static {v9, v10, v7}, Lcom/movial/ipphone/IPPhone;->access$500(Lcom/movial/ipphone/IPPhone;ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/util/AndroidRuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 222
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v7    # "ussdString":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 223
    .local v3, "e":Ljava/lang/NumberFormatException;
    :try_start_3
    const-string v9, "IPPhone"

    const-string v10, "error parsing USSD"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 228
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :pswitch_5
    iget-object v9, p0, Lcom/movial/ipphone/IPPhone$1;->this$0:Lcom/movial/ipphone/IPPhone;

    const/4 v10, 0x5

    const/4 v11, 0x0

    # invokes: Lcom/movial/ipphone/IPPhone;->showDialog(II)V
    invoke-static {v9, v10, v11}, Lcom/movial/ipphone/IPPhone;->access$600(Lcom/movial/ipphone/IPPhone;II)V
    :try_end_3
    .catch Landroid/util/AndroidRuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 248
    .local v3, "e":Landroid/util/AndroidRuntimeException;
    .restart local v4    # "exceptionMessage":Ljava/lang/String;
    :cond_b
    const-string v8, "IPPhone"

    const-string v9, "different exception than message is already in use. So throwing it back"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    new-instance v8, Landroid/util/AndroidRuntimeException;

    invoke-direct {v8, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v8

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
