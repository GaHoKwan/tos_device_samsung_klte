.class public Landroid/hardware/contextaware/aggregator/lpp/LppConfig;
.super Ljava/lang/Object;
.source "LppConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private GPSAlways:Z

.field public GPSKeepOn_Timer:I

.field public GPSRequest_APDR:I

.field private GPSRequest_By:I

.field public GPSRequest_Timer:I

.field private LogConfig:Ljava/lang/String;

.field private LogFlags:[Z

.field private LogFolderName:Ljava/lang/String;

.field private flag_log:Z

.field public looper:Landroid/os/Looper;

.field private mcontext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gPSRequest_APDR"    # I
    .param p3, "gPSRequest_Timer"    # I
    .param p4, "gPSKeepOn_Timer"    # I

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-boolean v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->flag_log:Z

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->GPSAlways:Z

    .line 16
    const-string v0, "LPPTest"

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->LogFolderName:Ljava/lang/String;

    .line 17
    const-string v0, "[LPPTest Configuration]\r\n"

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->LogConfig:Ljava/lang/String;

    .line 19
    iput v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->GPSRequest_By:I

    .line 20
    const/16 v0, 0x64

    iput v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->GPSRequest_APDR:I

    .line 21
    const/16 v0, 0x2d

    iput v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->GPSRequest_Timer:I

    .line 22
    const/16 v0, 0xf

    iput v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->GPSKeepOn_Timer:I

    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->LogFlags:[Z

    .line 53
    iput p2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->GPSRequest_APDR:I

    .line 54
    iput p3, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->GPSRequest_Timer:I

    .line 55
    iput p4, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->GPSKeepOn_Timer:I

    .line 56
    iput-object p1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->mcontext:Landroid/content/Context;

    .line 57
    return-void

    .line 23
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/hardware/contextaware/aggregator/lpp/LppConfig;)V
    .locals 5
    .param p1, "mlppconfig"    # Landroid/hardware/contextaware/aggregator/lpp/LppConfig;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-boolean v3, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->flag_log:Z

    .line 15
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->GPSAlways:Z

    .line 16
    const-string v2, "LPPTest"

    iput-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->LogFolderName:Ljava/lang/String;

    .line 17
    const-string v2, "[LPPTest Configuration]\r\n"

    iput-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->LogConfig:Ljava/lang/String;

    .line 19
    iput v3, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->GPSRequest_By:I

    .line 20
    const/16 v2, 0x64

    iput v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->GPSRequest_APDR:I

    .line 21
    const/16 v2, 0x2d

    iput v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->GPSRequest_Timer:I

    .line 22
    const/16 v2, 0xf

    iput v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->GPSKeepOn_Timer:I

    .line 23
    new-array v2, v4, [Z

    fill-array-data v2, :array_0

    iput-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->LogFlags:[Z

    .line 60
    invoke-virtual {p1}, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->getLogFlags()[Z

    move-result-object v1

    .line 61
    .local v1, "logflags":[Z
    const/4 v0, 0x0

    .local v0, "inx":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 62
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->LogFlags:[Z

    aget-boolean v3, v1, v0

    aput-boolean v3, v2, v0

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_0
    iget v2, p1, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->GPSRequest_APDR:I

    iput v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->GPSRequest_APDR:I

    .line 65
    iget v2, p1, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->GPSRequest_Timer:I

    iput v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->GPSRequest_Timer:I

    .line 66
    iget v2, p1, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->GPSKeepOn_Timer:I

    iput v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->GPSKeepOn_Timer:I

    .line 67
    invoke-virtual {p1}, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->getConfigStr()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->LogConfig:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->getLogFolderNameStr()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->LogFolderName:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->mcontext:Landroid/content/Context;

    .line 70
    return-void

    .line 23
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(ZZZZIIIILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "Log_Sensor"    # Z
    .param p2, "Log_PDRLOC"    # Z
    .param p3, "Log_Result"    # Z
    .param p4, "Log_ResultKML"    # Z
    .param p5, "gPSRequest_By"    # I
    .param p6, "gPSRequest_APDR"    # I
    .param p7, "gPSRequest_Timer"    # I
    .param p8, "gPSKeepOn_Timer"    # I
    .param p9, "strConfig"    # Ljava/lang/String;
    .param p10, "strFolderName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-boolean v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->flag_log:Z

    .line 15
    iput-boolean v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->GPSAlways:Z

    .line 16
    const-string v0, "LPPTest"

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->LogFolderName:Ljava/lang/String;

    .line 17
    const-string v0, "[LPPTest Configuration]\r\n"

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->LogConfig:Ljava/lang/String;

    .line 19
    iput v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->GPSRequest_By:I

    .line 20
    const/16 v0, 0x64

    iput v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->GPSRequest_APDR:I

    .line 21
    const/16 v0, 0x2d

    iput v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->GPSRequest_Timer:I

    .line 22
    const/16 v0, 0xf

    iput v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->GPSKeepOn_Timer:I

    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->LogFlags:[Z

    .line 40
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->LogFlags:[Z

    aput-boolean p1, v0, v1

    .line 41
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->LogFlags:[Z

    aput-boolean p2, v0, v2

    .line 42
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->LogFlags:[Z

    const/4 v1, 0x2

    aput-boolean p3, v0, v1

    .line 43
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->LogFlags:[Z

    const/4 v1, 0x3

    aput-boolean p4, v0, v1

    .line 44
    iput p5, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->GPSRequest_By:I

    .line 45
    iput p6, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->GPSRequest_APDR:I

    .line 46
    iput p7, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->GPSRequest_Timer:I

    .line 47
    iput p8, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->GPSKeepOn_Timer:I

    .line 48
    iput-object p9, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->LogConfig:Ljava/lang/String;

    .line 49
    iput-object p10, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->LogFolderName:Ljava/lang/String;

    .line 50
    return-void

    .line 23
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(ZZZZIZLjava/lang/String;)V
    .locals 3
    .param p1, "Log_Sensor"    # Z
    .param p2, "Log_PDRLOC"    # Z
    .param p3, "Log_Result"    # Z
    .param p4, "Log_ResultKML"    # Z
    .param p5, "APDR_Request"    # I
    .param p6, "GPS_Always"    # Z
    .param p7, "Log_FolderN"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-boolean v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->flag_log:Z

    .line 15
    iput-boolean v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->GPSAlways:Z

    .line 16
    const-string v0, "LPPTest"

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->LogFolderName:Ljava/lang/String;

    .line 17
    const-string v0, "[LPPTest Configuration]\r\n"

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->LogConfig:Ljava/lang/String;

    .line 19
    iput v1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->GPSRequest_By:I

    .line 20
    const/16 v0, 0x64

    iput v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->GPSRequest_APDR:I

    .line 21
    const/16 v0, 0x2d

    iput v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->GPSRequest_Timer:I

    .line 22
    const/16 v0, 0xf

    iput v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->GPSKeepOn_Timer:I

    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->LogFlags:[Z

    .line 28
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->LogFlags:[Z

    aput-boolean p1, v0, v1

    .line 29
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->LogFlags:[Z

    aput-boolean p2, v0, v2

    .line 30
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->LogFlags:[Z

    const/4 v1, 0x2

    aput-boolean p3, v0, v1

    .line 31
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->LogFlags:[Z

    const/4 v1, 0x3

    aput-boolean p4, v0, v1

    .line 32
    iput-boolean p6, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->GPSAlways:Z

    .line 33
    iput-object p7, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->LogFolderName:Ljava/lang/String;

    .line 35
    return-void

    .line 23
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method public getConfigStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->LogConfig:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->mcontext:Landroid/content/Context;

    return-object v0
.end method

.method public getLogCommand()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->flag_log:Z

    return v0
.end method

.method public getLogFlags()[Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->LogFlags:[Z

    return-object v0
.end method

.method public getLogFolderNameStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->LogFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    iput-object p1, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->mcontext:Landroid/content/Context;

    .line 100
    return-void
.end method

.method public setLogParameter(ZZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "Log_Sensor"    # Z
    .param p2, "Log_PDRLOC"    # Z
    .param p3, "Log_Result"    # Z
    .param p4, "Log_ResultKML"    # Z
    .param p5, "strConfig"    # Ljava/lang/String;
    .param p6, "strFolderName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 73
    iput-boolean v2, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->flag_log:Z

    .line 74
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->LogFlags:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 75
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->LogFlags:[Z

    aput-boolean p2, v0, v2

    .line 76
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->LogFlags:[Z

    const/4 v1, 0x2

    aput-boolean p3, v0, v1

    .line 77
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->LogFlags:[Z

    const/4 v1, 0x3

    aput-boolean p4, v0, v1

    .line 78
    iput-object p5, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->LogConfig:Ljava/lang/String;

    .line 79
    iput-object p6, p0, Landroid/hardware/contextaware/aggregator/lpp/LppConfig;->LogFolderName:Ljava/lang/String;

    .line 80
    return-void
.end method
