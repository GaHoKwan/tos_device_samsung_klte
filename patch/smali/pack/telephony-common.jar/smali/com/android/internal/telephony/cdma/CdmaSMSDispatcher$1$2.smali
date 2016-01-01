.class Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$1$2;
.super Ljava/lang/Object;
.source "CdmaSMSDispatcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$1;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$1;)V
    .locals 0

    .prologue
    .line 927
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$1$2;->this$1:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 929
    const-string v0, "CdmaSMSDispatcher"

    const-string v1, "popupDialog - ClickCancel"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 931
    return-void
.end method
