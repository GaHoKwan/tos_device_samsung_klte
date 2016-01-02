.class public Lcom/android/internal/telephony/SMSStateBroadcaster;
.super Ljava/lang/Object;
.source "SMSStateBroadcaster.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 20
    return-void
.end method

.method public sendSMSReceived(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "contextId"    # I
    .param p2, "size"    # I
    .param p3, "numFrags"    # I
    .param p4, "origaddr"    # Ljava/lang/String;
    .param p5, "smsc"    # Ljava/lang/String;

    .prologue
    .line 17
    return-void
.end method

.method public sendSMSSending(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "contextId"    # I
    .param p2, "size"    # I
    .param p3, "numFrags"    # I
    .param p4, "destaddr"    # Ljava/lang/String;
    .param p5, "smsc"    # Ljava/lang/String;

    .prologue
    .line 11
    return-void
.end method

.method public sendSMSSent(IIS)V
    .locals 0
    .param p1, "contextId"    # I
    .param p2, "ErrCode"    # I
    .param p3, "resultCode"    # S

    .prologue
    .line 14
    return-void
.end method
