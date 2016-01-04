.class Lcom/sec/knox/container/contentprovider/EcppStorageProvider$EcppDbErrorHandler;
.super Ljava/lang/Object;
.source "EcppStorageProvider.java"

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/knox/container/contentprovider/EcppStorageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EcppDbErrorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;


# direct methods
.method public constructor <init>(Lcom/sec/knox/container/contentprovider/EcppStorageProvider;)V
    .locals 0

    .prologue
    .line 1129
    iput-object p1, p0, Lcom/sec/knox/container/contentprovider/EcppStorageProvider$EcppDbErrorHandler;->this$0:Lcom/sec/knox/container/contentprovider/EcppStorageProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1130
    return-void
.end method


# virtual methods
.method public onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "dbObj"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1134
    const-string v0, "EcppStorageProvider"

    const-string v1, "##########################################################"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    const-string v0, "EcppStorageProvider"

    const-string v1, "##########################################################"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    const-string v0, "EcppStorageProvider"

    const-string v1, "############                                  ############"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    const-string v0, "EcppStorageProvider"

    const-string v1, "######### !! ECPP DATABASE CORRUPTION OCCURED !! #########"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    const-string v0, "EcppStorageProvider"

    const-string v1, "############                                  ############"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    const-string v0, "EcppStorageProvider"

    const-string v1, "##########################################################"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    const-string v0, "EcppStorageProvider"

    const-string v1, "##########################################################"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    return-void
.end method
