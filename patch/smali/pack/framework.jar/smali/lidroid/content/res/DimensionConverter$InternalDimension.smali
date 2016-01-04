.class Llidroid/content/res/DimensionConverter$InternalDimension;
.super Ljava/lang/Object;
.source "DimensionConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llidroid/content/res/DimensionConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalDimension"
.end annotation


# instance fields
.field unit:I

.field value:F


# direct methods
.method public constructor <init>(FI)V
    .locals 0
    .param p1, "value"    # F
    .param p2, "unit"    # I

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput p1, p0, Llidroid/content/res/DimensionConverter$InternalDimension;->value:F

    .line 95
    iput p2, p0, Llidroid/content/res/DimensionConverter$InternalDimension;->unit:I

    .line 96
    return-void
.end method
