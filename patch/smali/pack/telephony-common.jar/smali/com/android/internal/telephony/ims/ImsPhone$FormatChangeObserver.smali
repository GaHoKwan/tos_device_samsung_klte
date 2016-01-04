.class Lcom/android/internal/telephony/ims/ImsPhone$FormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "ImsPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/ImsPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ims/ImsPhone;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/ims/ImsPhone;Landroid/os/Handler;)V
    .locals 0
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    .line 1273
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsPhone$FormatChangeObserver;->this$0:Lcom/android/internal/telephony/ims/ImsPhone;

    .line 1274
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1275
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 1279
    const-string v0, "default"

    .line 1280
    .local v0, "format":Ljava/lang/String;
    const-string v1, "vzw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1281
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsPhone$FormatChangeObserver;->this$0:Lcom/android/internal/telephony/ims/ImsPhone;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsPhone$FormatChangeObserver;->this$0:Lcom/android/internal/telephony/ims/ImsPhone;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1283
    :cond_0
    return-void
.end method
