.class Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider$1;
.super Ljava/lang/Object;
.source "RawSensorProvider.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;


# direct methods
.method constructor <init>(Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider$1;->this$0:Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 74
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 86
    iget-object v3, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider$1;->this$0:Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;

    # invokes: Landroid/hardware/contextaware/manager/ContextComponent;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;
    invoke-static {v3}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;->access$000(Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;)Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const-string v4, "SystemTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 88
    iget-object v3, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider$1;->this$0:Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;

    # invokes: Landroid/hardware/contextaware/manager/ContextComponent;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;
    invoke-static {v3}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;->access$100(Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;)Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const-string v4, "TimeStamp"

    iget-wide v5, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 89
    iget-object v3, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider$1;->this$0:Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;

    # invokes: Landroid/hardware/contextaware/manager/ContextComponent;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;
    invoke-static {v3}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;->access$200(Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;)Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const-string v4, "Accuracy"

    iget v5, p1, Landroid/hardware/SensorEvent;->accuracy:I

    invoke-virtual {v3, v4, v5}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 91
    iget-object v3, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider$1;->this$0:Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;

    invoke-virtual {v3}, Landroid/hardware/contextaware/manager/ContextProvider;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "names":[Ljava/lang/String;
    array-length v3, v1

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 94
    .local v2, "valueLength":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 95
    iget-object v3, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider$1;->this$0:Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;

    # invokes: Landroid/hardware/contextaware/manager/ContextComponent;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;
    invoke-static {v3}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;->access$300(Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;)Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v1, v0

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_0
    iget-object v3, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider$1;->this$0:Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;

    invoke-virtual {v3}, Landroid/hardware/contextaware/manager/ContextComponent;->notifyObserver()V

    .line 99
    return-void
.end method
