.class Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki$1;
.super Landroid/os/Handler;
.source "GovernorAdonisPrime2Helsinki.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki$1;->this$0:Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 178
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 188
    :goto_0
    return-void

    .line 180
    :pswitch_0
    const-string v1, "SSRMv2:GovernorAdonisPrime2Helsinki"

    const-string v2, "MSG_KNOWN_GAME_FOREGROUND"

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki$1;->this$0:Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;

    invoke-virtual {v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki$1;->this$0:Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;

    invoke-static {v0}, Lcom/android/server/ssrm/HotGameList;->isKnownGame(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;->mIsKnownGameInForeground:Z

    .line 183
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki$1;->this$0:Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;

    invoke-virtual {v1}, Lcom/android/server/ssrm/fgapps/AbsGovernor;->update()V

    goto :goto_0

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
