.class public Lcom/android/server/ssrm/SsrmDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SsrmDatabaseHelper.java"


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "ssrm_org.db"

.field static final DATABASE_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SSRMv2:SsrmDatabaseHelper"

.field private static sSingleton:Lcom/android/server/ssrm/SsrmDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ssrm/SsrmDatabaseHelper;->sSingleton:Lcom/android/server/ssrm/SsrmDatabaseHelper;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "databaseName"    # Ljava/lang/String;

    .prologue
    .line 41
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 42
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SsrmDatabaseHelper;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    const-class v1, Lcom/android/server/ssrm/SsrmDatabaseHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/ssrm/SsrmDatabaseHelper;->sSingleton:Lcom/android/server/ssrm/SsrmDatabaseHelper;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/android/server/ssrm/SsrmDatabaseHelper;

    const-string/jumbo v2, "ssrm_org.db"

    invoke-direct {v0, p0, v2}, Lcom/android/server/ssrm/SsrmDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/ssrm/SsrmDatabaseHelper;->sSingleton:Lcom/android/server/ssrm/SsrmDatabaseHelper;

    .line 37
    :cond_0
    sget-object v0, Lcom/android/server/ssrm/SsrmDatabaseHelper;->sSingleton:Lcom/android/server/ssrm/SsrmDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 51
    const-string v0, "SSRMv2:SsrmDatabaseHelper"

    const-string v1, "onCreate:: "

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v0, "CREATE TABLE t ( category TEXT, package_list TEXT );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 46
    const-string v0, "SSRMv2:SsrmDatabaseHelper"

    const-string v1, "onUpgrade:: "

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method
