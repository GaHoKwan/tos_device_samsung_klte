.class public Landroid/security/TimaKeyStoreProvider;
.super Ljava/security/Provider;
.source "TimaKeyStoreProvider.java"


# static fields
.field public static final PROVIDER_NAME:Ljava/lang/String; = "TimaKeyStore"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 30
    const-string v0, "TimaKeyStore"

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-string v3, "TIMA KeyStore security provider"

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 33
    const-string v0, "KeyStore.TimaKeyStore"

    const-class v1, Landroid/security/TimaKeyStore;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-void
.end method
