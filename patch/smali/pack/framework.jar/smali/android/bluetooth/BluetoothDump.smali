.class public Landroid/bluetooth/BluetoothDump;
.super Ljava/lang/Object;
.source "BluetoothDump.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothDump"

.field private static final VDBG:Z

.field static day:Ljava/lang/String;

.field static hour:Ljava/lang/String;

.field private static lineFeed:Ljava/lang/String;

.field static min:Ljava/lang/String;

.field static month:Ljava/lang/String;

.field static sec:Ljava/lang/String;

.field private static sysdump_time:Ljava/lang/String;


# instance fields
.field mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "\n"

    sput-object v0, Landroid/bluetooth/BluetoothDump;->lineFeed:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static BtLog(Ljava/lang/String;)V
    .locals 4
    .param p0, "cmd"    # Ljava/lang/String;

    .prologue
    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/bluetooth/BluetoothDump;->getTimeToString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/bluetooth/BluetoothDump;->lineFeed:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 49
    .local v1, "oneLine":Ljava/lang/StringBuilder;
    new-instance v0, Landroid/bluetooth/BluetoothDump;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothDump;-><init>()V

    .line 50
    .local v0, "bdump":Landroid/bluetooth/BluetoothDump;
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothDump;->putLogs(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method private static getTimeToString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 61
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 62
    .local v0, "cal":Ljava/util/Calendar;
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "00"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 63
    .local v1, "df":Ljava/text/DecimalFormat;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/bluetooth/BluetoothDump;->month:Ljava/lang/String;

    .line 64
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/bluetooth/BluetoothDump;->day:Ljava/lang/String;

    .line 65
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/bluetooth/BluetoothDump;->hour:Ljava/lang/String;

    .line 66
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/bluetooth/BluetoothDump;->min:Ljava/lang/String;

    .line 67
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/bluetooth/BluetoothDump;->sec:Ljava/lang/String;

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/bluetooth/BluetoothDump;->hour:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/bluetooth/BluetoothDump;->min:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/bluetooth/BluetoothDump;->sec:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/bluetooth/BluetoothDump;->sysdump_time:Ljava/lang/String;

    .line 69
    sget-object v2, Landroid/bluetooth/BluetoothDump;->sysdump_time:Ljava/lang/String;

    return-object v2
.end method


# virtual methods
.method public putLogs(Ljava/lang/String;)V
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothDump;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 55
    iget-object v0, p0, Landroid/bluetooth/BluetoothDump;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Landroid/bluetooth/BluetoothDump;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->putLogs(Ljava/lang/String;)V

    .line 58
    :cond_0
    return-void
.end method
