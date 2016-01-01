.class Landroid/hardware/motion/MotionRecognitionFlipCover$3;
.super Ljava/lang/Object;
.source "MotionRecognitionFlipCover.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/MotionRecognitionFlipCover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/motion/MotionRecognitionFlipCover;


# direct methods
.method constructor <init>(Landroid/hardware/motion/MotionRecognitionFlipCover;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionFlipCover$3;->this$0:Landroid/hardware/motion/MotionRecognitionFlipCover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 199
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 261
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 263
    .local v0, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 265
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionFlipCover$3;->this$0:Landroid/hardware/motion/MotionRecognitionFlipCover;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    float-to-int v2, v2

    # setter for: Landroid/hardware/motion/MotionRecognitionFlipCover;->mPostProxVal:I
    invoke-static {v1, v2}, Landroid/hardware/motion/MotionRecognitionFlipCover;->access$502(Landroid/hardware/motion/MotionRecognitionFlipCover;I)I

    .line 266
    const-string v1, "MotionRecognitionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prox val = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionFlipCover$3;->this$0:Landroid/hardware/motion/MotionRecognitionFlipCover;

    # getter for: Landroid/hardware/motion/MotionRecognitionFlipCover;->mPostProxVal:I
    invoke-static {v3}, Landroid/hardware/motion/MotionRecognitionFlipCover;->access$500(Landroid/hardware/motion/MotionRecognitionFlipCover;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionFlipCover$3;->this$0:Landroid/hardware/motion/MotionRecognitionFlipCover;

    # getter for: Landroid/hardware/motion/MotionRecognitionFlipCover;->mPostProxVal:I
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionFlipCover;->access$500(Landroid/hardware/motion/MotionRecognitionFlipCover;)I

    move-result v1

    if-nez v1, :cond_1

    .line 269
    const-string v1, "MotionRecognitionService"

    const-string v2, "Prox [ close ]"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionFlipCover$3;->this$0:Landroid/hardware/motion/MotionRecognitionFlipCover;

    # setter for: Landroid/hardware/motion/MotionRecognitionFlipCover;->mProxClosed:Z
    invoke-static {v1, v5}, Landroid/hardware/motion/MotionRecognitionFlipCover;->access$402(Landroid/hardware/motion/MotionRecognitionFlipCover;Z)Z

    .line 271
    invoke-virtual {p0, v4}, Landroid/hardware/motion/MotionRecognitionFlipCover$3;->setInputKeys(Z)V

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    const-string v1, "MotionRecognitionService"

    const-string v2, "Prox [ far ]"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionFlipCover$3;->this$0:Landroid/hardware/motion/MotionRecognitionFlipCover;

    # getter for: Landroid/hardware/motion/MotionRecognitionFlipCover;->mProxEnabled:Z
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionFlipCover;->access$100(Landroid/hardware/motion/MotionRecognitionFlipCover;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionFlipCover$3;->this$0:Landroid/hardware/motion/MotionRecognitionFlipCover;

    # getter for: Landroid/hardware/motion/MotionRecognitionFlipCover;->mProxClosed:Z
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionFlipCover;->access$400(Landroid/hardware/motion/MotionRecognitionFlipCover;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionFlipCover$3;->this$0:Landroid/hardware/motion/MotionRecognitionFlipCover;

    # getter for: Landroid/hardware/motion/MotionRecognitionFlipCover;->mIsLightSensorExist:Z
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionFlipCover;->access$600(Landroid/hardware/motion/MotionRecognitionFlipCover;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 276
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionFlipCover$3;->this$0:Landroid/hardware/motion/MotionRecognitionFlipCover;

    # getter for: Landroid/hardware/motion/MotionRecognitionFlipCover;->sensorManager:Landroid/hardware/SensorManager;
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionFlipCover;->access$300(Landroid/hardware/motion/MotionRecognitionFlipCover;)Landroid/hardware/SensorManager;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionFlipCover$3;->this$0:Landroid/hardware/motion/MotionRecognitionFlipCover;

    # getter for: Landroid/hardware/motion/MotionRecognitionFlipCover;->sensorProxListener:Landroid/hardware/SensorEventListener;
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionFlipCover;->access$200(Landroid/hardware/motion/MotionRecognitionFlipCover;)Landroid/hardware/SensorEventListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 277
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionFlipCover$3;->this$0:Landroid/hardware/motion/MotionRecognitionFlipCover;

    # setter for: Landroid/hardware/motion/MotionRecognitionFlipCover;->mProxEnabled:Z
    invoke-static {v1, v4}, Landroid/hardware/motion/MotionRecognitionFlipCover;->access$102(Landroid/hardware/motion/MotionRecognitionFlipCover;Z)Z

    .line 278
    const-string v1, "MotionRecognitionService"

    const-string v2, " Proximity unReg "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_2
    invoke-virtual {p0, v5}, Landroid/hardware/motion/MotionRecognitionFlipCover$3;->setInputKeys(Z)V

    goto :goto_0
.end method

.method public setInputKeys(Z)V
    .locals 10
    .param p1, "bool"    # Z

    .prologue
    .line 203
    const/4 v4, 0x0

    .line 204
    .local v4, "out":Ljava/io/FileWriter;
    const/4 v2, 0x0

    .line 205
    .local v2, "input":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 209
    .local v6, "result":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/FileWriter;

    const-string v7, "/sys/class/sec/tsp/cmd"

    invoke-direct {v5, v7}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v4    # "out":Ljava/io/FileWriter;
    .local v5, "out":Ljava/io/FileWriter;
    move-object v4, v5

    .line 213
    .end local v5    # "out":Ljava/io/FileWriter;
    .restart local v4    # "out":Ljava/io/FileWriter;
    :goto_0
    if-nez v4, :cond_2

    .line 214
    :try_start_1
    const-string v7, "MotionRecognitionService"

    const-string v8, "Output file is null!"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 228
    :goto_1
    :try_start_2
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    const-string v8, "/sys/class/sec/tsp/cmd_result"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v2    # "input":Ljava/io/BufferedReader;
    .local v3, "input":Ljava/io/BufferedReader;
    move-object v2, v3

    .line 232
    .end local v3    # "input":Ljava/io/BufferedReader;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    :goto_2
    if-nez v2, :cond_4

    .line 233
    :try_start_3
    const-string v7, "MotionRecognitionService"

    const-string v8, "Input file is null!"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :goto_3
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v7, "MotionRecognitionService"

    const-string v8, "File not found!"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 239
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 240
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 241
    if-eqz v4, :cond_0

    .line 243
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 249
    :cond_0
    :goto_4
    if-eqz v2, :cond_1

    .line 251
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 256
    :cond_1
    :goto_5
    const-string v7, "MotionRecognitionService"

    const-string v8, "File write fail!!"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 216
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    if-nez p1, :cond_3

    .line 218
    :try_start_6
    const-string v7, "flip_cover_enable,1"

    invoke-virtual {v4, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 219
    const-string v7, "MotionRecognitionService"

    const-string v8, "Disable Touch flip_cover_enable, 1"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :goto_6
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V

    goto :goto_1

    .line 221
    :cond_3
    const-string v7, "flip_cover_enable,0"

    invoke-virtual {v4, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 222
    const-string v7, "MotionRecognitionService"

    const-string v8, "flip_cover_enable, 0"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 229
    :catch_2
    move-exception v0

    .line 230
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v7, "MotionRecognitionService"

    const-string v8, "File not found!"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 235
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 236
    const-string v7, "MotionRecognitionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " Read cmd_result"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    .line 244
    .local v0, "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 245
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 252
    .end local v1    # "err":Ljava/lang/Exception;
    :catch_4
    move-exception v1

    .line 253
    .restart local v1    # "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method
