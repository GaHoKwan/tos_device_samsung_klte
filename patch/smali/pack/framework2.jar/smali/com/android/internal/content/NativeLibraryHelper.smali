.class public Lcom/android/internal/content/NativeLibraryHelper;
.super Ljava/lang/Object;
.source "NativeLibraryHelper.java"


# static fields
.field private static final DEBUG_NATIVE:Z = false

.field private static final ENABLE_HOUDINI:Z

.field private static final TAG:Ljava/lang/String; = "NativeHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string/jumbo v1, "x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/internal/content/NativeLibraryHelper;->ENABLE_HOUDINI:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyNativeBinariesIfNeededLI(Ljava/io/File;Ljava/io/File;)I
    .locals 6
    .param p0, "apkFile"    # Ljava/io/File;
    .param p1, "sharedLibraryDir"    # Ljava/io/File;

    .prologue
    .line 105
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 106
    .local v1, "cpuAbi":Ljava/lang/String;
    sget-object v2, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    .line 108
    .local v2, "cpuAbi2":Ljava/lang/String;
    sget-boolean v4, Lcom/android/internal/content/NativeLibraryHelper;->ENABLE_HOUDINI:Z

    if-eqz v4, :cond_1

    .line 109
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1, v2}, Lcom/android/internal/content/NativeLibraryHelper;->nativeCopyNativeBinaries(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 111
    .local v3, "result":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 113
    const-string/jumbo v4, "ro.product.cpu.upgradeabi"

    const-string v5, "armeabi"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "abiUpgrade":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1, v0}, Lcom/android/internal/content/NativeLibraryHelper;->nativeCopyNativeBinaries(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 120
    .end local v0    # "abiUpgrade":Ljava/lang/String;
    .end local v3    # "result":I
    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1, v2}, Lcom/android/internal/content/NativeLibraryHelper;->nativeCopyNativeBinaries(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method public static listNativeBinariesLI(Ljava/io/File;)I
    .locals 6
    .param p0, "apkFile"    # Ljava/io/File;

    .prologue
    const/4 v4, 0x1

    .line 74
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 75
    .local v1, "cpuAbi":Ljava/lang/String;
    sget-object v2, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    .line 77
    .local v2, "cpuAbi2":Ljava/lang/String;
    sget-boolean v5, Lcom/android/internal/content/NativeLibraryHelper;->ENABLE_HOUDINI:Z

    if-eqz v5, :cond_1

    .line 78
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1, v2}, Lcom/android/internal/content/NativeLibraryHelper;->nativeListNativeBinaries(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 79
    .local v3, "result":I
    if-eq v3, v4, :cond_0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 81
    const-string/jumbo v4, "ro.product.cpu.upgradeabi"

    const-string v5, "armeabi"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "abiUpgrade":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1, v0}, Lcom/android/internal/content/NativeLibraryHelper;->nativeListNativeBinaries(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 87
    .end local v0    # "abiUpgrade":Ljava/lang/String;
    .end local v3    # "result":I
    :cond_0
    :goto_0
    return v3

    :cond_1
    move v3, v4

    goto :goto_0
.end method

.method private static native nativeCopyNativeBinaries(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static native nativeListNativeBinaries(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static native nativeSumNativeBinaries(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public static removeNativeBinariesFromDirLI(Ljava/io/File;)Z
    .locals 6
    .param p0, "nativeLibraryDir"    # Ljava/io/File;

    .prologue
    .line 137
    const/4 v1, 0x0

    .line 144
    .local v1, "deletedFiles":Z
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 145
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 146
    .local v0, "binaries":[Ljava/io/File;
    if-eqz v0, :cond_1

    .line 147
    const/4 v2, 0x0

    .local v2, "nn":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 152
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_0

    .line 153
    const-string v3, "NativeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not delete native binary: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v2

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 155
    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    .line 163
    .end local v0    # "binaries":[Ljava/io/File;
    .end local v2    # "nn":I
    :cond_1
    return v1
.end method

.method public static removeNativeBinariesLI(Ljava/lang/String;)Z
    .locals 1
    .param p0, "nativeLibraryPath"    # Ljava/lang/String;

    .prologue
    .line 127
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesFromDirLI(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static sumNativeBinariesLI(Ljava/io/File;)J
    .locals 7
    .param p0, "apkFile"    # Ljava/io/File;

    .prologue
    .line 47
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 48
    .local v1, "cpuAbi":Ljava/lang/String;
    sget-object v2, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    .line 50
    .local v2, "cpuAbi2":Ljava/lang/String;
    sget-boolean v5, Lcom/android/internal/content/NativeLibraryHelper;->ENABLE_HOUDINI:Z

    if-eqz v5, :cond_1

    .line 51
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1, v2}, Lcom/android/internal/content/NativeLibraryHelper;->nativeSumNativeBinaries(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    .line 52
    .local v3, "result":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-nez v5, :cond_0

    .line 53
    const-string/jumbo v5, "ro.product.cpu.upgradeabi"

    const-string v6, "armeabi"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "abiUpgrade":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1, v0}, Lcom/android/internal/content/NativeLibraryHelper;->nativeSumNativeBinaries(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    .line 59
    .end local v0    # "abiUpgrade":Ljava/lang/String;
    .end local v3    # "result":J
    :cond_0
    :goto_0
    return-wide v3

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1, v2}, Lcom/android/internal/content/NativeLibraryHelper;->nativeSumNativeBinaries(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_0
.end method
