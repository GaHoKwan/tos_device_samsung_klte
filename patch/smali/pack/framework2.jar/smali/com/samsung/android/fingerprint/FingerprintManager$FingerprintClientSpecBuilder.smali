.class public Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FingerprintClientSpecBuilder"
.end annotation


# instance fields
.field private mBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 968
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 966
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->mBundle:Landroid/os/Bundle;

    .line 969
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->mBundle:Landroid/os/Bundle;

    const-string v1, "appName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    return-void
.end method


# virtual methods
.method public build()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public demandExtraEvent(Z)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;
    .locals 2
    .param p1, "demanded"    # Z

    .prologue
    .line 996
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->mBundle:Landroid/os/Bundle;

    const-string v1, "demandExtraEvent"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 997
    return-object p0
.end method

.method public demandFingerRemovedEvent(Z)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;
    .locals 2
    .param p1, "demanded"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 991
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->mBundle:Landroid/os/Bundle;

    const-string v1, "demandExtraEvent"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 992
    return-object p0
.end method

.method public demandGestureEvent(Z)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;
    .locals 2
    .param p1, "demanded"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 985
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->mBundle:Landroid/os/Bundle;

    const-string v1, "demandExtraEvent"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 986
    return-object p0
.end method

.method public demandNavigationEvent(Z)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;
    .locals 2
    .param p1, "demanded"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 979
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->mBundle:Landroid/os/Bundle;

    const-string v1, "demandExtraEvent"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 980
    return-object p0
.end method

.method public setBackground(Z)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;
    .locals 2
    .param p1, "background"    # Z

    .prologue
    .line 973
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->mBundle:Landroid/os/Bundle;

    const-string v1, "background"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 974
    return-object p0
.end method

.method public setSecurityLevel(I)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;
    .locals 3
    .param p1, "securityLevel"    # I

    .prologue
    .line 1006
    packed-switch p1, :pswitch_data_0

    .line 1014
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "securityLevel"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1017
    :goto_0
    return-object p0

    .line 1011
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "securityLevel"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1006
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public useManualTimeout(Z)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;
    .locals 2
    .param p1, "use"    # Z

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "useManualTimeout"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1002
    return-object p0
.end method
