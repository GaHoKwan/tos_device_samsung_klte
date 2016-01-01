.class public Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;
.super Ljava/lang/Object;
.source "KalmanFilter.java"


# instance fields
.field F:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

.field H:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

.field MeasurementSize:I

.field P_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

.field Q_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

.field R_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

.field StateSize:I

.field TAG:Ljava/lang/String;

.field X_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

.field Z_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

.field flagInitializeCovariance:Z

.field flagInitializeMeasurementM:Z

.field flagInitializeState:Z

.field flagMeasurementNoise:Z

.field flagProcessNoise:Z

.field flagTransitionMatrix:Z


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .param p1, "mState"    # I
    .param p2, "mMeasurement"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, "KalmanFilter"

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->TAG:Ljava/lang/String;

    .line 10
    iput-boolean v1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagTransitionMatrix:Z

    .line 11
    iput-boolean v1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagInitializeState:Z

    .line 12
    iput-boolean v1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagInitializeCovariance:Z

    .line 13
    iput-boolean v1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagInitializeMeasurementM:Z

    .line 14
    iput-boolean v1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagProcessNoise:Z

    .line 15
    iput-boolean v1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagMeasurementNoise:Z

    .line 18
    iput p1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    .line 19
    iput p2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    .line 20
    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    invoke-direct {v0, v1, v2}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->X_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    .line 21
    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    invoke-direct {v0, v1, v2}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->Z_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    .line 22
    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    invoke-direct {v0, v1, v2}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->P_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    .line 23
    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    invoke-direct {v0, v1, v2}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->Q_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    .line 24
    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    invoke-direct {v0, v1, v2}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->R_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    .line 25
    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    invoke-direct {v0, v1, v2}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->F:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    .line 26
    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    invoke-direct {v0, v1, v2}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->H:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    .line 27
    return-void
.end method


# virtual methods
.method public MeasurementUpdate(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Z
    .locals 22
    .param p1, "z"    # Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    .prologue
    .line 158
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getRowDimension()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    if-ne v4, v5, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->getColumnDimension()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 159
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->TAG:Ljava/lang/String;

    const-string v5, "Error in MeasurementUpdate(), meauserement matrix size is wrong!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v4, 0x0

    .line 212
    :goto_0
    return v4

    .line 163
    :cond_1
    new-instance v17, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    move-object/from16 v0, v17

    invoke-direct {v0, v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 164
    .local v17, "K_gain":Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    new-instance v2, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    invoke-direct {v2, v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 165
    .local v2, "Temp1":Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    new-instance v18, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    move-object/from16 v0, v18

    invoke-direct {v0, v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 166
    .local v18, "Temp2":Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    new-instance v19, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    move-object/from16 v0, v19

    invoke-direct {v0, v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 167
    .local v19, "Temp3":Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    new-instance v20, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    const/4 v5, 0x1

    move-object/from16 v0, v20

    invoke-direct {v0, v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 168
    .local v20, "Temp4":Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    new-instance v21, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    const/4 v5, 0x1

    move-object/from16 v0, v21

    invoke-direct {v0, v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 169
    .local v21, "Temp5":Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    new-instance v9, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    const/4 v5, 0x1

    invoke-direct {v9, v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 170
    .local v9, "X_k_1":Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    new-instance v10, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    invoke-direct {v10, v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 172
    .local v10, "P_":Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagProcessNoise:Z

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagMeasurementNoise:Z

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagInitializeMeasurementM:Z

    if-nez v4, :cond_3

    .line 173
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->TAG:Ljava/lang/String;

    const-string v5, "cannot execute MeasurementUpdate(), check initialization "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 178
    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->P_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->H:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    invoke-virtual {v8}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->transpose()Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->times(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILandroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 179
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->H:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    invoke-virtual {v8, v2}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->times(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v8

    move-object/from16 v3, v18

    invoke-virtual/range {v3 .. v8}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILandroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 180
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->R_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->plus(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v8

    move-object/from16 v3, v19

    invoke-virtual/range {v3 .. v8}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILandroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 181
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->inverse()Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->times(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v8

    move-object/from16 v3, v17

    invoke-virtual/range {v3 .. v8}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILandroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 184
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->H:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->X_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    invoke-virtual {v8, v11}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->times(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v8

    move-object/from16 v3, v20

    invoke-virtual/range {v3 .. v8}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILandroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 185
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->minus(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v8

    move-object/from16 v3, v21

    invoke-virtual/range {v3 .. v8}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILandroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 186
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->X_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->times(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->plus(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v8

    move-object v3, v9

    invoke-virtual/range {v3 .. v8}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILandroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 189
    new-instance v3, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 190
    .local v3, "debugMatrix":Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->times(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILandroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->X_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILandroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 209
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v12, v4, -0x1

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v14, v4, -0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->P_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->H:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->P_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    invoke-virtual {v5, v6}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->times(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->times(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->minus(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v15

    invoke-virtual/range {v10 .. v15}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILandroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 210
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->P_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v13, v4, -0x1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v15, v4, -0x1

    move-object/from16 v16, v10

    invoke-virtual/range {v11 .. v16}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILandroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 212
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method public TimePropagation(D)Z
    .locals 12
    .param p1, "delT"    # D

    .prologue
    const/4 v11, 0x1

    const/4 v1, 0x0

    .line 129
    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    invoke-direct {v0, v2, v11}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 130
    .local v0, "X_k_1":Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    new-instance v8, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    iget v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    invoke-direct {v8, v2, v3}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 131
    .local v8, "P_k_1":Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    new-instance v9, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    iget v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    invoke-direct {v9, v2, v3}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 132
    .local v9, "Temp1":Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    new-instance v10, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    iget v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    invoke-direct {v10, v2, v3}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 134
    .local v10, "Temp2":Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    iget-boolean v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagTransitionMatrix:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagInitializeState:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagProcessNoise:Z

    if-nez v2, :cond_1

    .line 135
    :cond_0
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->TAG:Ljava/lang/String;

    const-string v3, "cannot execute TimePropagation(), check initialization "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :goto_0
    return v1

    .line 140
    :cond_1
    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->F:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget-object v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->X_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    invoke-virtual {v3, v4}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->times(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v5

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILandroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 141
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->X_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v4, v3, -0x1

    move v3, v1

    move v5, v1

    move v6, v1

    move-object v7, v0

    invoke-virtual/range {v2 .. v7}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILandroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 144
    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v4, v2, -0x1

    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v6, v2, -0x1

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->F:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget-object v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->P_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    invoke-virtual {v2, v3}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->times(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v7

    move-object v2, v9

    move v3, v1

    move v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILandroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 145
    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v4, v2, -0x1

    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v6, v2, -0x1

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->F:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->inverse()Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->times(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v7

    move-object v2, v10

    move v3, v1

    move v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILandroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 146
    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v4, v2, -0x1

    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v6, v2, -0x1

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->Q_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    invoke-virtual {v10, v2}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->plus(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v7

    move-object v2, v8

    move v3, v1

    move v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILandroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 147
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->P_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v4, v3, -0x1

    iget v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v6, v3, -0x1

    move v3, v1

    move v5, v1

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILandroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)V

    move v1, v11

    .line 153
    goto :goto_0
.end method

.method public getCurrentState()[D
    .locals 4

    .prologue
    .line 216
    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    new-array v1, v2, [D

    .line 218
    .local v1, "mState":[D
    const/4 v0, 0x0

    .local v0, "inx":I
    :goto_0
    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-ge v0, v2, :cond_0

    .line 219
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->X_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    :cond_0
    return-object v1
.end method

.method public setInitialCovariance([[D)Z
    .locals 6
    .param p1, "mMatrix"    # [[D

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    aget-object v4, p1, v2

    array-length v4, v4

    iget v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-eq v4, v5, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v2

    .line 46
    :cond_1
    array-length v4, p1

    iget v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-ne v4, v5, :cond_0

    .line 49
    const/4 v0, 0x0

    .local v0, "inx1":I
    :goto_1
    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-ge v0, v2, :cond_3

    .line 50
    const/4 v1, 0x0

    .local v1, "inx2":I
    :goto_2
    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-ge v1, v2, :cond_2

    .line 51
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->P_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    aget-object v4, p1, v0

    aget-wide v4, v4, v1

    invoke-virtual {v2, v0, v1, v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 49
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 54
    .end local v1    # "inx2":I
    :cond_3
    iput-boolean v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagProcessNoise:Z

    move v2, v3

    .line 55
    goto :goto_0
.end method

.method public setInitialState([D)Z
    .locals 6
    .param p1, "vector"    # [D

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 31
    array-length v3, p1

    iget v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-eq v3, v4, :cond_0

    .line 39
    :goto_0
    return v1

    .line 34
    :cond_0
    const/4 v0, 0x0

    .local v0, "inx":I
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 35
    iget-object v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->X_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    aget-wide v4, p1, v0

    invoke-virtual {v3, v0, v1, v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 37
    :cond_1
    iput-boolean v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagInitializeState:Z

    move v1, v2

    .line 39
    goto :goto_0
.end method

.method public setMeasurementMatrix([[D)Z
    .locals 6
    .param p1, "mMatrix"    # [[D

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    aget-object v4, p1, v2

    array-length v4, v4

    iget v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-eq v4, v5, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v2

    .line 79
    :cond_1
    array-length v4, p1

    iget v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    if-ne v4, v5, :cond_0

    .line 83
    const/4 v0, 0x0

    .local v0, "inx1":I
    :goto_1
    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    if-ge v0, v2, :cond_3

    .line 84
    const/4 v1, 0x0

    .local v1, "inx2":I
    :goto_2
    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-ge v1, v2, :cond_2

    .line 86
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->H:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    aget-object v4, p1, v0

    aget-wide v4, v4, v1

    invoke-virtual {v2, v0, v1, v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 83
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 90
    .end local v1    # "inx2":I
    :cond_3
    iput-boolean v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagInitializeMeasurementM:Z

    move v2, v3

    .line 91
    goto :goto_0
.end method

.method public setMeasurementNoise([[D)Z
    .locals 6
    .param p1, "mMatrix"    # [[D

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 112
    aget-object v4, p1, v2

    array-length v4, v4

    iget v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    if-eq v4, v5, :cond_1

    .line 125
    :cond_0
    :goto_0
    return v2

    .line 115
    :cond_1
    array-length v4, p1

    iget v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    if-ne v4, v5, :cond_0

    .line 118
    const/4 v0, 0x0

    .local v0, "inx1":I
    :goto_1
    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    if-ge v0, v2, :cond_3

    .line 119
    const/4 v1, 0x0

    .local v1, "inx2":I
    :goto_2
    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    if-ge v1, v2, :cond_2

    .line 120
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->R_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    aget-object v4, p1, v0

    aget-wide v4, v4, v1

    invoke-virtual {v2, v0, v1, v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 118
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 124
    .end local v1    # "inx2":I
    :cond_3
    iput-boolean v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagMeasurementNoise:Z

    move v2, v3

    .line 125
    goto :goto_0
.end method

.method public setProcessNoise([[D)Z
    .locals 6
    .param p1, "mMatrix"    # [[D

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 95
    aget-object v4, p1, v2

    array-length v4, v4

    iget v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-eq v4, v5, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v2

    .line 98
    :cond_1
    array-length v4, p1

    iget v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-ne v4, v5, :cond_0

    .line 101
    const/4 v0, 0x0

    .local v0, "inx1":I
    :goto_1
    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-ge v0, v2, :cond_3

    .line 102
    const/4 v1, 0x0

    .local v1, "inx2":I
    :goto_2
    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-ge v1, v2, :cond_2

    .line 103
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->Q_k:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    aget-object v4, p1, v0

    aget-wide v4, v4, v1

    invoke-virtual {v2, v0, v1, v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 101
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 107
    .end local v1    # "inx2":I
    :cond_3
    iput-boolean v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagProcessNoise:Z

    move v2, v3

    .line 108
    goto :goto_0
.end method

.method public setTransitionMatrix([[D)Z
    .locals 6
    .param p1, "mMatrix"    # [[D

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    aget-object v4, p1, v2

    array-length v4, v4

    iget v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-eq v4, v5, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v2

    .line 62
    :cond_1
    array-length v4, p1

    iget v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-ne v4, v5, :cond_0

    .line 65
    const/4 v0, 0x0

    .local v0, "inx1":I
    :goto_1
    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-ge v0, v2, :cond_3

    .line 66
    const/4 v1, 0x0

    .local v1, "inx2":I
    :goto_2
    iget v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-ge v1, v2, :cond_2

    .line 67
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->F:Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    aget-object v4, p1, v0

    aget-wide v4, v4, v1

    invoke-virtual {v2, v0, v1, v4, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 65
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 71
    .end local v1    # "inx2":I
    :cond_3
    iput-boolean v3, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagTransitionMatrix:Z

    move v2, v3

    .line 72
    goto :goto_0
.end method
