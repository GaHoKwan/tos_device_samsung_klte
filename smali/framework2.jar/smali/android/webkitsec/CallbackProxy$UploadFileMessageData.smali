.class Landroid/webkitsec/CallbackProxy$UploadFileMessageData;
.super Ljava/lang/Object;
.source "CallbackProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/CallbackProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UploadFileMessageData"
.end annotation


# instance fields
.field private mAcceptType:Ljava/lang/String;

.field private mCallback:Landroid/webkitsec/CallbackProxy$UploadFile;

.field private mCapture:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/webkitsec/CallbackProxy$UploadFile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "uploadFile"    # Landroid/webkitsec/CallbackProxy$UploadFile;
    .param p2, "acceptType"    # Ljava/lang/String;
    .param p3, "capture"    # Ljava/lang/String;

    .prologue
    .line 2193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2194
    iput-object p1, p0, Landroid/webkitsec/CallbackProxy$UploadFileMessageData;->mCallback:Landroid/webkitsec/CallbackProxy$UploadFile;

    .line 2195
    iput-object p2, p0, Landroid/webkitsec/CallbackProxy$UploadFileMessageData;->mAcceptType:Ljava/lang/String;

    .line 2196
    iput-object p3, p0, Landroid/webkitsec/CallbackProxy$UploadFileMessageData;->mCapture:Ljava/lang/String;

    .line 2197
    return-void
.end method


# virtual methods
.method public getAcceptType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2204
    iget-object v0, p0, Landroid/webkitsec/CallbackProxy$UploadFileMessageData;->mAcceptType:Ljava/lang/String;

    return-object v0
.end method

.method public getCapture()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2208
    iget-object v0, p0, Landroid/webkitsec/CallbackProxy$UploadFileMessageData;->mCapture:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadFile()Landroid/webkitsec/CallbackProxy$UploadFile;
    .locals 1

    .prologue
    .line 2200
    iget-object v0, p0, Landroid/webkitsec/CallbackProxy$UploadFileMessageData;->mCallback:Landroid/webkitsec/CallbackProxy$UploadFile;

    return-object v0
.end method
