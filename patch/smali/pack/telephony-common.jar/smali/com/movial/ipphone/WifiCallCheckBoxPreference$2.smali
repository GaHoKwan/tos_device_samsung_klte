.class Lcom/movial/ipphone/WifiCallCheckBoxPreference$2;
.super Landroid/os/Handler;
.source "WifiCallCheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/movial/ipphone/WifiCallCheckBoxPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/movial/ipphone/WifiCallCheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/movial/ipphone/WifiCallCheckBoxPreference;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/movial/ipphone/WifiCallCheckBoxPreference$2;->this$0:Lcom/movial/ipphone/WifiCallCheckBoxPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 97
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 104
    :goto_0
    return-void

    .line 99
    :pswitch_0
    iget-object v0, p0, Lcom/movial/ipphone/WifiCallCheckBoxPreference$2;->this$0:Lcom/movial/ipphone/WifiCallCheckBoxPreference;

    const-string v1, "Disabled"

    invoke-virtual {v0, v1}, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/movial/ipphone/WifiCallCheckBoxPreference$2;->this$0:Lcom/movial/ipphone/WifiCallCheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->setEnabled(Z)V

    .line 101
    iget-object v0, p0, Lcom/movial/ipphone/WifiCallCheckBoxPreference$2;->this$0:Lcom/movial/ipphone/WifiCallCheckBoxPreference;

    # getter for: Lcom/movial/ipphone/WifiCallCheckBoxPreference;->mPreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/movial/ipphone/WifiCallCheckBoxPreference;->access$100(Lcom/movial/ipphone/WifiCallCheckBoxPreference;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
