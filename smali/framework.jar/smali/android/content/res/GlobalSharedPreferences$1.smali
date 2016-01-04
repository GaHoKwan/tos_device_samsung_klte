.class Landroid/content/res/GlobalSharedPreferences$1;
.super Ljava/lang/Thread;
.source "GlobalSharedPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/res/GlobalSharedPreferences;->startLoadFromDisk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/res/GlobalSharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/res/GlobalSharedPreferences;Ljava/lang/String;)V
    .locals 0
    .param p2, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/content/res/GlobalSharedPreferences$1;->this$0:Landroid/content/res/GlobalSharedPreferences;

    .line 57
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 60
    iget-object v1, p0, Landroid/content/res/GlobalSharedPreferences$1;->this$0:Landroid/content/res/GlobalSharedPreferences;

    monitor-enter v1

    .line 61
    :try_start_0
    iget-object v0, p0, Landroid/content/res/GlobalSharedPreferences$1;->this$0:Landroid/content/res/GlobalSharedPreferences;

    # invokes: Landroid/content/res/GlobalSharedPreferences;->loadFromDiskLocked()V
    invoke-static {v0}, Landroid/content/res/GlobalSharedPreferences;->access$0(Landroid/content/res/GlobalSharedPreferences;)V

    .line 60
    monitor-exit v1

    .line 63
    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
