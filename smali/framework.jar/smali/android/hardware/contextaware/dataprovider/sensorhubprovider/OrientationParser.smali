.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/OrientationParser;
.super Ljava/lang/Object;
.source "OrientationParser.java"

# interfaces
.implements Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final parse([BI)I
    .locals 1
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    .line 31
    const/4 v0, -0x1

    return v0
.end method