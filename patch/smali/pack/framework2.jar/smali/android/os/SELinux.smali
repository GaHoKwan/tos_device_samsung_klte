.class public Landroid/os/SELinux;
.super Ljava/lang/Object;
.source "SELinux.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SELinux"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 268
    const-string v0, "android_runtime"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native checkSELinuxAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static final native getBooleanNames()[Ljava/lang/String;
.end method

.method public static final native getBooleanValue(Ljava/lang/String;)Z
.end method

.method public static final native getContext()Ljava/lang/String;
.end method

.method public static getDomain(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "uid"    # I
    .param p1, "seinfo"    # Ljava/lang/String;
    .param p2, "pkgname"    # Ljava/lang/String;
    .param p3, "isSystemServer"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 246
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 247
    :cond_1
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Landroid/os/SELinux;->getType(ILjava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final native getFileContext(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getFileType(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "uid"    # I
    .param p1, "seinfo"    # Ljava/lang/String;
    .param p2, "pkgname"    # Ljava/lang/String;
    .param p3, "isSystemServer"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 261
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 262
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/os/SELinux;->getType(ILjava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final native getPeerContext(Ljava/io/FileDescriptor;)Ljava/lang/String;
.end method

.method public static final native getPidContext(I)Ljava/lang/String;
.end method

.method private static final native getType(ILjava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
.end method

.method public static final native isSELinuxEnabled()Z
.end method

.method public static final native isSELinuxEnforced()Z
.end method

.method private static native native_recursive_restorecon_with_category(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native native_restorecon(Ljava/lang/String;)Z
.end method

.method public static restorecon(Ljava/io/File;)Z
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 227
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/SELinux;->native_restorecon(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 231
    :goto_0
    return v1

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "SELinux"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error getting canonical path. Restorecon failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static restorecon(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pathname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 151
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 152
    :cond_0
    invoke-static {p0}, Landroid/os/SELinux;->native_restorecon(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static restorecon_with_category(Ljava/lang/String;I)Z
    .locals 2
    .param p0, "pathname"    # Ljava/lang/String;
    .param p1, "userid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 185
    const/16 v0, 0x63

    if-lt p1, v0, :cond_0

    const/16 v0, 0xc7

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 186
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, -0x62

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/os/SELinux;->restorecon_with_category(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static restorecon_with_category(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "pathname"    # Ljava/lang/String;
    .param p1, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 168
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 169
    :cond_1
    invoke-static {p0, p1}, Landroid/os/SELinux;->native_recursive_restorecon_with_category(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final native setBooleanValue(Ljava/lang/String;Z)Z
.end method

.method public static final native setFSCreateContext(Ljava/lang/String;)Z
.end method

.method public static final native setFileContext(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static final native setSELinuxEnforce(Z)Z
.end method

.method public static native verifySignature([B[B[B)Z
.end method
