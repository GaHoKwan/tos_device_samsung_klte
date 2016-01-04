.class Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;
.super Landroid/os/Handler;
.source "WebIconDatabaseClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebIconDatabaseClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/WebIconDatabaseClassic$EventHandler$IconResult;
    }
.end annotation


# static fields
.field static final BULK_REQUEST_ICON:I = 0x6

.field static final CLOSE:I = 0x1

.field private static final ICON_RESULT:I = 0xa

.field static final OPEN:I = 0x0

.field static final RELEASE_ICON:I = 0x5

.field static final REMOVE_ALL:I = 0x2

.field static final REQUEST_ICON:I = 0x3

.field static final RETAIN_ICON:I = 0x4


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mMessages:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 54
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;->mMessages:Ljava/util/Vector;

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Landroid/webkitsec/WebIconDatabaseClassic$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/webkitsec/WebIconDatabaseClassic$1;

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;)Z
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;->hasHandler()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;)V
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;->createHandler()V

    return-void
.end method

.method static synthetic access$400(Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;Ljava/lang/String;Landroid/webkitsec/WebIconDatabase$IconListener;)V
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/webkitsec/WebIconDatabase$IconListener;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;->requestIconAndSendResult(Ljava/lang/String;Landroid/webkitsec/WebIconDatabase$IconListener;)V

    return-void
.end method

.method static synthetic access$500(Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;->bulkRequestIcons(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$900(Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;->postMessage(Landroid/os/Message;)V

    return-void
.end method

.method private bulkRequestIcons(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 142
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/util/HashMap;

    .line 143
    .local v9, "map":Ljava/util/HashMap;
    const-string v1, "listener"

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/webkitsec/WebIconDatabase$IconListener;

    .line 144
    .local v8, "listener":Landroid/webkitsec/WebIconDatabase$IconListener;
    const-string v1, "contentResolver"

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    .line 145
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v1, "where"

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 147
    .local v3, "where":Ljava/lang/String;
    const/4 v6, 0x0

    .line 149
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "url"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 153
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 156
    .local v10, "url":Ljava/lang/String;
    invoke-direct {p0, v10, v8}, Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;->requestIconAndSendResult(Ljava/lang/String;Landroid/webkitsec/WebIconDatabase$IconListener;)V

    .line 157
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 162
    .end local v10    # "url":Ljava/lang/String;
    :cond_1
    if-eqz v6, :cond_2

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 164
    :cond_2
    return-void

    .line 159
    :catch_0
    move-exception v7

    .line 160
    .local v7, "e":Ljava/lang/IllegalStateException;
    :try_start_1
    const-string v1, "WebIconDatabase"

    const-string v2, "BulkRequestIcons"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    if-eqz v6, :cond_2

    goto :goto_0

    .end local v7    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method private declared-synchronized createHandler()V
    .locals 4

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 83
    new-instance v1, Landroid/webkitsec/WebIconDatabaseClassic$EventHandler$1;

    invoke-direct {v1, p0}, Landroid/webkitsec/WebIconDatabaseClassic$EventHandler$1;-><init>(Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;)V

    iput-object v1, p0, Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;->mHandler:Landroid/os/Handler;

    .line 122
    iget-object v1, p0, Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;->mMessages:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    .local v0, "size":I
    :goto_0
    if-lez v0, :cond_0

    .line 123
    iget-object v2, p0, Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;->mMessages:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 122
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 125
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;->mMessages:Ljava/util/Vector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    .end local v0    # "size":I
    :cond_1
    monitor-exit p0

    return-void

    .line 82
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized hasHandler()Z
    .locals 1

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized postMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;->mMessages:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;->mMessages:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :goto_0
    monitor-exit p0

    return-void

    .line 137
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private requestIconAndSendResult(Ljava/lang/String;Landroid/webkitsec/WebIconDatabase$IconListener;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/webkitsec/WebIconDatabase$IconListener;

    .prologue
    .line 167
    # invokes: Landroid/webkitsec/WebIconDatabaseClassic;->nativeIconForPageUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;
    invoke-static {p1}, Landroid/webkitsec/WebIconDatabaseClassic;->access$800(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 168
    .local v0, "icon":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 169
    const/16 v1, 0xa

    new-instance v2, Landroid/webkitsec/WebIconDatabaseClassic$EventHandler$IconResult;

    invoke-direct {v2, p0, p1, v0, p2}, Landroid/webkitsec/WebIconDatabaseClassic$EventHandler$IconResult;-><init>(Landroid/webkitsec/WebIconDatabaseClassic$EventHandler;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/webkitsec/WebIconDatabase$IconListener;)V

    invoke-virtual {p0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 172
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 73
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 78
    :goto_0
    return-void

    .line 75
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/webkitsec/WebIconDatabaseClassic$EventHandler$IconResult;

    invoke-virtual {v0}, Landroid/webkitsec/WebIconDatabaseClassic$EventHandler$IconResult;->dispatch()V

    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
