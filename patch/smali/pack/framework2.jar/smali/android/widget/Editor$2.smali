.class Landroid/widget/Editor$2;
.super Landroid/content/BroadcastReceiver;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method constructor <init>(Landroid/widget/Editor;)V
    .locals 0

    .prologue
    .line 6226
    iput-object p1, p0, Landroid/widget/Editor$2;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 6228
    const-string v6, "caller"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6229
    .local v0, "caller":Ljava/lang/String;
    const/4 v5, 0x0

    .line 6231
    .local v5, "target_text":Ljava/lang/String;
    if-eqz v0, :cond_3

    iget-object v6, p0, Landroid/widget/Editor$2;->this$0:Landroid/widget/Editor;

    iget-object v6, v6, Landroid/widget/Editor;->mCaller:Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 6232
    const-string/jumbo v6, "result_code"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 6234
    .local v2, "resultCode":I
    const/4 v6, 0x1

    if-ne v2, v6, :cond_2

    .line 6235
    const-string/jumbo v6, "target_text"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6236
    iget-object v6, p0, Landroid/widget/Editor$2;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 6237
    .local v4, "selStart":I
    iget-object v6, p0, Landroid/widget/Editor$2;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 6238
    .local v3, "selEnd":I
    iget-object v6, p0, Landroid/widget/Editor$2;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->selection_start:I
    invoke-static {v6}, Landroid/widget/Editor;->access$4100(Landroid/widget/Editor;)I

    move-result v6

    if-le v6, v4, :cond_0

    .line 6239
    iget-object v6, p0, Landroid/widget/Editor$2;->this$0:Landroid/widget/Editor;

    # setter for: Landroid/widget/Editor;->selection_start:I
    invoke-static {v6, v4}, Landroid/widget/Editor;->access$4102(Landroid/widget/Editor;I)I

    .line 6241
    :cond_0
    iget-object v6, p0, Landroid/widget/Editor$2;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->selection_end:I
    invoke-static {v6}, Landroid/widget/Editor;->access$4200(Landroid/widget/Editor;)I

    move-result v6

    if-le v6, v3, :cond_1

    .line 6242
    iget-object v6, p0, Landroid/widget/Editor$2;->this$0:Landroid/widget/Editor;

    # setter for: Landroid/widget/Editor;->selection_end:I
    invoke-static {v6, v3}, Landroid/widget/Editor;->access$4202(Landroid/widget/Editor;I)I

    .line 6244
    :cond_1
    iget-object v6, p0, Landroid/widget/Editor$2;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/Editor$2;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->selection_start:I
    invoke-static {v7}, Landroid/widget/Editor;->access$4100(Landroid/widget/Editor;)I

    move-result v7

    iget-object v8, p0, Landroid/widget/Editor$2;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->selection_end:I
    invoke-static {v8}, Landroid/widget/Editor;->access$4200(Landroid/widget/Editor;)I

    move-result v8

    invoke-virtual {v6, v7, v8, v5}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    .line 6247
    .end local v3    # "selEnd":I
    .end local v4    # "selStart":I
    :cond_2
    const-string v6, "Editor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "target text = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6251
    :try_start_0
    iget-object v6, p0, Landroid/widget/Editor$2;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/Editor$2;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v7}, Landroid/widget/Editor;->access$4300(Landroid/widget/Editor;)Landroid/content/BroadcastReceiver;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6257
    .end local v2    # "resultCode":I
    :cond_3
    :goto_0
    return-void

    .line 6252
    .restart local v2    # "resultCode":I
    :catch_0
    move-exception v1

    .line 6253
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
