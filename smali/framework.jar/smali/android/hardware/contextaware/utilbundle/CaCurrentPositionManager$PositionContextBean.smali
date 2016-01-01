.class Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;
.super Ljava/lang/Object;
.source "CaCurrentPositionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;
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
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    invoke-virtual {p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->clearPosition()V

    .line 139
    return-void
.end method

.method constructor <init>(F)V
    .locals 0
    .param p1, "accuracy"    # F

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    invoke-virtual {p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->clearPosition()V

    .line 149
    iput p1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->accuracy:F

    .line 150
    return-void
.end method

.method static synthetic access$1000(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)D
    .locals 2
    .param p0, "x0"    # Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    .prologue
    .line 105
    iget-wide v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->longitude:D

    return-wide v0
.end method

.method static synthetic access$1100(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)I
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    .prologue
    .line 105
    iget v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->type:I

    return v0
.end method

.method static synthetic access$1200(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)[I
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    .prologue
    .line 105
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->utcTime:[I

    return-object v0
.end method

.method static synthetic access$1300(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)D
    .locals 2
    .param p0, "x0"    # Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    .prologue
    .line 105
    iget-wide v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->altitude:D

    return-wide v0
.end method

.method static synthetic access$1400(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)D
    .locals 2
    .param p0, "x0"    # Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    .prologue
    .line 105
    iget-wide v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->distance:D

    return-wide v0
.end method

.method static synthetic access$1500(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)F
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    .prologue
    .line 105
    iget v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->speed:F

    return v0
.end method

.method static synthetic access$1600(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)I
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    .prologue
    .line 105
    iget v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->satelliteCount:I

    return v0
.end method

.method static synthetic access$300(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)F
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    .prologue
    .line 105
    iget v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->accuracy:F

    return v0
.end method

.method static synthetic access$900(Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;)D
    .locals 2
    .param p0, "x0"    # Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;

    .prologue
    .line 105
    iget-wide v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->latitude:D

    return-wide v0
.end method


# virtual methods
.method final clearPosition()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 156
    iput v3, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->type:I

    .line 157
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->utcTime:[I

    .line 158
    iput-wide v1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->latitude:D

    .line 159
    iput-wide v1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->longitude:D

    .line 160
    iput-wide v1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->altitude:D

    .line 161
    iput-wide v1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->distance:D

    .line 162
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->speed:F

    .line 163
    const/high16 v0, 0x447a0000    # 1000.0f

    iput v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->accuracy:F

    .line 164
    iput v3, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->satelliteCount:I

    .line 165
    return-void
.end method

.method final setPosition(I[IDDDDFFI)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "utcTime"    # [I
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D
    .param p7, "altitude"    # D
    .param p9, "distance"    # D
    .param p11, "speed"    # F
    .param p12, "accuracy"    # F
    .param p13, "satelliteCount"    # I

    .prologue
    .line 194
    iput p1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->type:I

    .line 195
    iput-object p2, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->utcTime:[I

    .line 196
    iput-wide p3, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->latitude:D

    .line 197
    iput-wide p5, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->longitude:D

    .line 198
    iput-wide p7, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->altitude:D

    .line 199
    iput-wide p9, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->distance:D

    .line 200
    iput p11, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->speed:F

    .line 201
    iput p12, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->accuracy:F

    .line 202
    iput p13, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager$PositionContextBean;->satelliteCount:I

    .line 203
    return-void
.end method
