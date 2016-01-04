.class Lcom/android/server/enterprise/email/AccountSMIMECertificate;
.super Ljava/lang/Object;
.source "AccountsReceiver.java"


# instance fields
.field public mCxtInfo:Landroid/app/enterprise/ContextInfo;

.field public mPassword:Ljava/lang/String;

.field public mPath:Ljava/lang/String;

.field public sMode:I


# direct methods
.method public constructor <init>(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput-object p2, p0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mPath:Ljava/lang/String;

    .line 261
    iput-object p3, p0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mPassword:Ljava/lang/String;

    .line 262
    iput p4, p0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->sMode:I

    .line 263
    iput-object p1, p0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mCxtInfo:Landroid/app/enterprise/ContextInfo;

    .line 264
    return-void
.end method
