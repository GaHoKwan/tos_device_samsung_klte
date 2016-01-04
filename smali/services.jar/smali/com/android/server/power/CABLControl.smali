.class public Lcom/android/server/power/CABLControl;
.super Ljava/lang/Object;
.source "CABLControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/CABLControl$AutoBrightnessObserver;
    }
.end annotation


# static fields
.field public static final CABL_TAG:Ljava/lang/String; = "PMSCabl"

.field private static mAutoBrightnessEnabled:Z

.field private static mAutoBrightnessObserver:Lcom/android/server/power/CABLControl$AutoBrightnessObserver;

.field private static mContext:Landroid/content/Context;

.field private static s_CablInstance:Lcom/android/server/power/CABLControl;


# instance fields
.field private final DAEMON_SOCKET:Ljava/lang/String;

.field private final MAX_CMD_LEN:I

.field private daemonSock:Landroid/net/LocalSocket;

.field enable_parameter:Z

.field private in:Ljava/io/InputStream;

.field private isCabcDaemonConnected:Z

.field private mCablHandler:Landroid/os/Handler;

.field private out:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    sput-object v0, Lcom/android/server/power/CABLControl;->s_CablInstance:Lcom/android/server/power/CABLControl;

    .line 40
    sput-object v0, Lcom/android/server/power/CABLControl;->mContext:Landroid/content/Context;

    .line 41
    sput-object v0, Lcom/android/server/power/CABLControl;->mAutoBrightnessObserver:Lcom/android/server/power/CABLControl$AutoBrightnessObserver;

    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/CABLControl;->mAutoBrightnessEnabled:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "cCtx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v1, p0, Lcom/android/server/power/CABLControl;->in:Ljava/io/InputStream;

    .line 31
    iput-object v1, p0, Lcom/android/server/power/CABLControl;->out:Ljava/io/OutputStream;

    .line 32
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/server/power/CABLControl;->MAX_CMD_LEN:I

    .line 33
    const-string v0, "pps"

    iput-object v0, p0, Lcom/android/server/power/CABLControl;->DAEMON_SOCKET:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/android/server/power/CABLControl;->daemonSock:Landroid/net/LocalSocket;

    .line 35
    iput-boolean v3, p0, Lcom/android/server/power/CABLControl;->isCabcDaemonConnected:Z

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/CABLControl;->mCablHandler:Landroid/os/Handler;

    .line 45
    sput-object p1, Lcom/android/server/power/CABLControl;->mContext:Landroid/content/Context;

    .line 47
    new-instance v0, Lcom/android/server/power/CABLControl$AutoBrightnessObserver;

    invoke-direct {v0, p0}, Lcom/android/server/power/CABLControl$AutoBrightnessObserver;-><init>(Lcom/android/server/power/CABLControl;)V

    sput-object v0, Lcom/android/server/power/CABLControl;->mAutoBrightnessObserver:Lcom/android/server/power/CABLControl$AutoBrightnessObserver;

    .line 48
    sget-object v0, Lcom/android/server/power/CABLControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/server/power/CABLControl;->mAutoBrightnessObserver:Lcom/android/server/power/CABLControl$AutoBrightnessObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 51
    return-void
.end method

.method private CabcDaemonConnect()V
    .locals 4

    .prologue
    .line 163
    const-string v2, "PMSCabl"

    const-string v3, "CabcDaemonConnect ()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :try_start_0
    new-instance v2, Landroid/net/LocalSocket;

    invoke-direct {v2}, Landroid/net/LocalSocket;-><init>()V

    iput-object v2, p0, Lcom/android/server/power/CABLControl;->daemonSock:Landroid/net/LocalSocket;

    .line 167
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v2, "pps"

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 169
    .local v0, "address":Landroid/net/LocalSocketAddress;
    iget-object v2, p0, Lcom/android/server/power/CABLControl;->daemonSock:Landroid/net/LocalSocket;

    invoke-virtual {v2, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 170
    iget-object v2, p0, Lcom/android/server/power/CABLControl;->daemonSock:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/CABLControl;->in:Ljava/io/InputStream;

    .line 171
    iget-object v2, p0, Lcom/android/server/power/CABLControl;->daemonSock:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/CABLControl;->out:Ljava/io/OutputStream;

    .line 172
    iget-object v2, p0, Lcom/android/server/power/CABLControl;->in:Ljava/io/InputStream;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/power/CABLControl;->out:Ljava/io/OutputStream;

    if-eqz v2, :cond_0

    .line 173
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/power/CABLControl;->isCabcDaemonConnected:Z

    .line 179
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    :goto_0
    return-void

    .line 175
    .restart local v0    # "address":Landroid/net/LocalSocketAddress;
    :cond_0
    const-string v2, "PMSCabl"

    const-string v3, "CabcDaemonConnect () - error getting streams"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 176
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    :catch_0
    move-exception v1

    .line 177
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private CablDaemonControl(Ljava/lang/String;)V
    .locals 8
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 183
    iget-object v5, p0, Lcom/android/server/power/CABLControl;->out:Ljava/io/OutputStream;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/power/CABLControl;->in:Ljava/io/InputStream;

    if-eqz v5, :cond_0

    .line 185
    :try_start_0
    const-string v5, "PMSCabl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CablDaemonControl ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 189
    .local v4, "send_buf":[B
    iget-object v5, p0, Lcom/android/server/power/CABLControl;->out:Ljava/io/OutputStream;

    invoke-virtual {v5, v4}, Ljava/io/OutputStream;->write([B)V

    .line 190
    iget-object v5, p0, Lcom/android/server/power/CABLControl;->out:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 193
    const/16 v5, 0x64

    new-array v2, v5, [B

    .line 194
    .local v2, "recv_buf":[B
    iget-object v5, p0, Lcom/android/server/power/CABLControl;->in:Ljava/io/InputStream;

    const/4 v6, 0x0

    array-length v7, v2

    invoke-virtual {v5, v2, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 195
    .local v1, "len":I
    new-instance v3, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v3, v2, v5, v1}, Ljava/lang/String;-><init>([BII)V

    .line 197
    .local v3, "response":Ljava/lang/String;
    const-string v5, "PMSCabl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CablDaemonControl ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): response = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v1    # "len":I
    .end local v2    # "recv_buf":[B
    .end local v3    # "response":Ljava/lang/String;
    .end local v4    # "send_buf":[B
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 203
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    const-string v5, "PMSCabl"

    const-string v6, "CablDaemonControl: streams null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iput-boolean v7, p0, Lcom/android/server/power/CABLControl;->isCabcDaemonConnected:Z

    goto :goto_0
.end method

.method private IsCabcDaemonConnected()Z
    .locals 3

    .prologue
    .line 158
    const-string v0, "PMSCabl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsCabcDaemonConnected() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/power/CABLControl;->isCabcDaemonConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-boolean v0, p0, Lcom/android/server/power/CABLControl;->isCabcDaemonConnected:Z

    return v0
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/server/power/CABLControl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lcom/android/server/power/CABLControl;->mAutoBrightnessEnabled:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 25
    sput-boolean p0, Lcom/android/server/power/CABLControl;->mAutoBrightnessEnabled:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/server/power/CABLControl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/CABLControl;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/server/power/CABLControl;->isTablet()Z

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/android/server/power/CABLControl;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/android/server/power/CABLControl;->s_CablInstance:Lcom/android/server/power/CABLControl;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/power/CABLControl;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 86
    sget-object v0, Lcom/android/server/power/CABLControl;->s_CablInstance:Lcom/android/server/power/CABLControl;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/android/server/power/CABLControl;

    invoke-direct {v0, p0}, Lcom/android/server/power/CABLControl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/power/CABLControl;->s_CablInstance:Lcom/android/server/power/CABLControl;

    .line 89
    :cond_0
    sget-object v0, Lcom/android/server/power/CABLControl;->s_CablInstance:Lcom/android/server/power/CABLControl;

    return-object v0
.end method

.method private isTablet()Z
    .locals 2

    .prologue
    .line 54
    const-string v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "deviceType":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private sysfsWrite(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "sysfs"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    const/4 v4, 0x0

    .line 133
    const/4 v2, 0x0

    .line 137
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 143
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 144
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 154
    const/4 v4, 0x1

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return v4

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 145
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 146
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 148
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 149
    :catch_2
    move-exception v1

    .line 150
    .local v1, "err":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 145
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/io/IOException;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_1
.end method


# virtual methods
.method protected handleSetAmoledACL(Z)Z
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/android/server/power/CABLControl;->enable_parameter:Z

    .line 105
    const-string v0, "PMSCabl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAmoledACL ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/power/CABLControl;->enable_parameter:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const-string v1, "/sys/class/lcd/panel/power_reduce"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/android/server/power/CABLControl;->sysfsWrite(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAmoledACL(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lcom/android/server/power/CABLControl;->handleSetAmoledACL(Z)Z

    move-result v0

    return v0
.end method
