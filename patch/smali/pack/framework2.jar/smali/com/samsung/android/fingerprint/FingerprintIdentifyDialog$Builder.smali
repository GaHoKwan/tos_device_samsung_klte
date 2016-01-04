.class public Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$Builder;
.super Ljava/lang/Object;
.source "FingerprintIdentifyDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnablePassword:Z

.field private mListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

.field private mPermission:Ljava/lang/String;

.field private mSecurityLevel:I

.field private mTitle:Ljava/lang/String;

.field private mTryCount:I

.field private mTryPWCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;Ljava/lang/String;ZI)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;
    .param p3, "permission"    # Ljava/lang/String;
    .param p4, "enablePassword"    # Z
    .param p5, "securityLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 958
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 959
    if-nez p2, :cond_0

    .line 960
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener may not be null!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 962
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$Builder;->mContext:Landroid/content/Context;

    .line 963
    iput-object p2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$Builder;->mListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

    .line 964
    iput-object p3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$Builder;->mPermission:Ljava/lang/String;

    .line 965
    iput-boolean p4, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$Builder;->mEnablePassword:Z

    .line 966
    iput p5, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$Builder;->mSecurityLevel:I

    .line 967
    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$Builder;->mTryCount:I

    .line 968
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$Builder;->mTryPWCount:I

    .line 969
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$Builder;->mTitle:Ljava/lang/String;

    .line 970
    return-void
.end method


# virtual methods
.method public create()Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;
    .locals 6

    .prologue
    .line 973
    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$Builder;->mListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$Builder;->mPermission:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$Builder;->mEnablePassword:Z

    iget v5, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$Builder;->mSecurityLevel:I

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;Ljava/lang/String;ZI)V

    .line 974
    .local v0, "identifyDiag":Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;
    iget v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$Builder;->mTryCount:I

    iget v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$Builder;->mTryPWCount:I

    # invokes: Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->setTryCount(II)V
    invoke-static {v0, v1, v2}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->access$700(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;II)V

    .line 975
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$Builder;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 976
    return-object v0
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleID"    # I

    .prologue
    .line 989
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$Builder;->mTitle:Ljava/lang/String;

    .line 990
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 985
    iput-object p1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$Builder;->mTitle:Ljava/lang/String;

    .line 986
    return-void
.end method

.method public setTryCount(II)V
    .locals 0
    .param p1, "count"    # I
    .param p2, "pwcount"    # I

    .prologue
    .line 980
    iput p1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$Builder;->mTryCount:I

    .line 981
    iput p2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$Builder;->mTryPWCount:I

    .line 982
    return-void
.end method
