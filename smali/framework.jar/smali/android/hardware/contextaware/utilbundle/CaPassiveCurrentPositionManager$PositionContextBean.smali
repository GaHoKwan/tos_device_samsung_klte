.class Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;
.super Ljava/lang/Object;
.source "CaPassiveCurrentPositionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PositionContextBean"
.end annotation


# instance fields
.field private accuracy:F

.field private altitude:D

.field private distance:D

.field private latitude:D

.field private longitude:D

.field private satelliteCount:I

.field private speed:F

.field private type:I

.field private utcTime:[I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    invoke-virtual {p0}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->clearPosition()V

    .line 150
    return-void
.end method

.method constructor <init>(F)V
    .locals 0
    .param p1, "accuracy"    # F

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    invoke-virtual {p0}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->clearPosition()V

    .line 160
    iput p1, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->accuracy:F

    .line 161
    return-void
.end method

.method static synthetic access$1000(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;)F
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;

    .prologue
    .line 116
    iget v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->speed:F

    return v0
.end method

.method static synthetic access$1100(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;)F
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;

    .prologue
    .line 116
    iget v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->accuracy:F

    return v0
.end method

.method static synthetic access$1200(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;)I
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;

    .prologue
    .line 116
    iget v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->satelliteCount:I

    return v0
.end method

.method static synthetic access$400(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;)D
    .locals 2
    .param p0, "x0"    # Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;

    .prologue
    .line 116
    iget-wide v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->latitude:D

    return-wide v0
.end method

.method static synthetic access$500(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;)D
    .locals 2
    .param p0, "x0"    # Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;

    .prologue
    .line 116
    iget-wide v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->longitude:D

    return-wide v0
.end method

.method static synthetic access$600(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;)I
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;

    .prologue
    .line 116
    iget v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->type:I

    return v0
.end method

.method static synthetic access$700(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;)[I
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;

    .prologue
    .line 116
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->utcTime:[I

    return-object v0
.end method

.method static synthetic access$800(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;)D
    .locals 2
    .param p0, "x0"    # Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;

    .prologue
    .line 116
    iget-wide v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->altitude:D

    return-wide v0
.end method

.method static synthetic access$900(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;)D
    .locals 2
    .param p0, "x0"    # Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;

    .prologue
    .line 116
    iget-wide v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->distance:D

    return-wide v0
.end method


# virtual methods
.method final clearPosition()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 167
    iput v3, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->type:I

    .line 168
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->utcTime:[I

    .line 169
    iput-wide v1, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->latitude:D

    .line 170
    iput-wide v1, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->longitude:D

    .line 171
    iput-wide v1, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->altitude:D

    .line 172
    iput-wide v1, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->distance:D

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->speed:F

    .line 174
    const/high16 v0, 0x447a0000    # 1000.0f

    iput v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->accuracy:F

    .line 175
    iput v3, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->satelliteCount:I

    .line 176
    return-void
.end method

.method final setPosition(I[IDDDDFF)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "utcTime"    # [I
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D
    .param p7, "altitude"    # D
    .param p9, "distance"    # D
    .param p11, "speed"    # F
    .param p12, "accuracy"    # F

    .prologue
    .line 202
    iput p1, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->type:I

    .line 203
    iput-object p2, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->utcTime:[I

    .line 204
    iput-wide p3, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->latitude:D

    .line 205
    iput-wide p5, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->longitude:D

    .line 206
    iput-wide p7, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->altitude:D

    .line 207
    iput-wide p9, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->distance:D

    .line 208
    iput p11, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->speed:F

    .line 209
    iput p12, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->accuracy:F

    .line 210
    return-void
.end method

.method final setPositionsatelliteCount(I)V
    .locals 0
    .param p1, "satelliteCount"    # I

    .prologue
    .line 220
    iput p1, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$PositionContextBean;->satelliteCount:I

    .line 221
    return-void
.end method
