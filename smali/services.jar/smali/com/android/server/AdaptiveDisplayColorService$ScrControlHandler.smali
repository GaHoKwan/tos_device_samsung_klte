.class final Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;
.super Landroid/os/Handler;
.source "AdaptiveDisplayColorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AdaptiveDisplayColorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScrControlHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AdaptiveDisplayColorService;


# direct methods
.method public constructor <init>(Lcom/android/server/AdaptiveDisplayColorService;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 712
    iput-object p1, p0, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    .line 713
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 714
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 718
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 734
    :goto_0
    return-void

    .line 720
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    # invokes: Lcom/android/server/AdaptiveDisplayColorService;->sendRgbAverage()V
    invoke-static {v0}, Lcom/android/server/AdaptiveDisplayColorService;->access$2300(Lcom/android/server/AdaptiveDisplayColorService;)V

    goto :goto_0

    .line 723
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/AdaptiveDisplayColorService;->enableRgbSensor(Z)V
    invoke-static {v0, v1}, Lcom/android/server/AdaptiveDisplayColorService;->access$2400(Lcom/android/server/AdaptiveDisplayColorService;Z)V

    goto :goto_0

    .line 726
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/AdaptiveDisplayColorService;->enableRgbSensor(Z)V
    invoke-static {v0, v1}, Lcom/android/server/AdaptiveDisplayColorService;->access$2400(Lcom/android/server/AdaptiveDisplayColorService;Z)V

    goto :goto_0

    .line 729
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/AdaptiveDisplayColorService$ScrControlHandler;->this$0:Lcom/android/server/AdaptiveDisplayColorService;

    # invokes: Lcom/android/server/AdaptiveDisplayColorService;->animateScrRGB()V
    invoke-static {v0}, Lcom/android/server/AdaptiveDisplayColorService;->access$2500(Lcom/android/server/AdaptiveDisplayColorService;)V

    goto :goto_0

    .line 718
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
