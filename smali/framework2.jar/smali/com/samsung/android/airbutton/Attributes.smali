.class public final Lcom/samsung/android/airbutton/Attributes;
.super Ljava/lang/Object;
.source "Attributes.java"


# static fields
.field public static final AUTO:I = -0x1


# instance fields
.field public UIType:I

.field public dataType:I

.field public density:F

.field public direction:I

.field public gravity:I

.field public headItemIdx:I

.field public itemSize:I

.field public itemSizePixel:I

.field public listItemTilt:F

.field public maxDisplayItemCnt:I

.field public multipleSelection:Z

.field public parentViewHeight:I

.field public parentViewWidth:I

.field public parentViewX:I

.field public parentViewY:I

.field public scrollable:Z

.field public statusbarHeight:I

.field public widgetDistanceFromHoveredView:I

.field public widgetDistanceFromHoveredViewPixel:I

.field public windowHeight:I

.field public windowWidth:I

.field public withBounceEffect:Z

.field public x:I

.field public xPixel:I

.field public y:I

.field public yPixel:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x780

    const/16 v3, 0x500

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v2, p0, Lcom/samsung/android/airbutton/Attributes;->UIType:I

    .line 23
    iput v2, p0, Lcom/samsung/android/airbutton/Attributes;->dataType:I

    .line 24
    iput v2, p0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    .line 25
    iput v2, p0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    .line 26
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->maxDisplayItemCnt:I

    .line 27
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->density:F

    .line 28
    iput v1, p0, Lcom/samsung/android/airbutton/Attributes;->statusbarHeight:I

    .line 29
    iput v4, p0, Lcom/samsung/android/airbutton/Attributes;->windowWidth:I

    .line 30
    iput v3, p0, Lcom/samsung/android/airbutton/Attributes;->windowHeight:I

    .line 31
    iput v1, p0, Lcom/samsung/android/airbutton/Attributes;->parentViewX:I

    .line 32
    iput v1, p0, Lcom/samsung/android/airbutton/Attributes;->parentViewY:I

    .line 33
    iput v4, p0, Lcom/samsung/android/airbutton/Attributes;->parentViewWidth:I

    .line 34
    iput v3, p0, Lcom/samsung/android/airbutton/Attributes;->parentViewHeight:I

    .line 35
    iput v2, p0, Lcom/samsung/android/airbutton/Attributes;->x:I

    .line 36
    iput v1, p0, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    .line 37
    iput v2, p0, Lcom/samsung/android/airbutton/Attributes;->y:I

    .line 38
    iput v1, p0, Lcom/samsung/android/airbutton/Attributes;->yPixel:I

    .line 39
    iput v1, p0, Lcom/samsung/android/airbutton/Attributes;->widgetDistanceFromHoveredView:I

    .line 40
    iput v1, p0, Lcom/samsung/android/airbutton/Attributes;->widgetDistanceFromHoveredViewPixel:I

    .line 46
    iput-boolean v1, p0, Lcom/samsung/android/airbutton/Attributes;->multipleSelection:Z

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/Attributes;->scrollable:Z

    .line 48
    iput-boolean v1, p0, Lcom/samsung/android/airbutton/Attributes;->withBounceEffect:Z

    .line 49
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->listItemTilt:F

    .line 50
    iput v2, p0, Lcom/samsung/android/airbutton/Attributes;->itemSize:I

    .line 51
    iput v1, p0, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    .line 52
    iput v1, p0, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/airbutton/Attributes;)V
    .locals 5
    .param p1, "attributes"    # Lcom/samsung/android/airbutton/Attributes;

    .prologue
    const/16 v4, 0x780

    const/16 v3, 0x500

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v2, p0, Lcom/samsung/android/airbutton/Attributes;->UIType:I

    .line 23
    iput v2, p0, Lcom/samsung/android/airbutton/Attributes;->dataType:I

    .line 24
    iput v2, p0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    .line 25
    iput v2, p0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    .line 26
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->maxDisplayItemCnt:I

    .line 27
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->density:F

    .line 28
    iput v1, p0, Lcom/samsung/android/airbutton/Attributes;->statusbarHeight:I

    .line 29
    iput v4, p0, Lcom/samsung/android/airbutton/Attributes;->windowWidth:I

    .line 30
    iput v3, p0, Lcom/samsung/android/airbutton/Attributes;->windowHeight:I

    .line 31
    iput v1, p0, Lcom/samsung/android/airbutton/Attributes;->parentViewX:I

    .line 32
    iput v1, p0, Lcom/samsung/android/airbutton/Attributes;->parentViewY:I

    .line 33
    iput v4, p0, Lcom/samsung/android/airbutton/Attributes;->parentViewWidth:I

    .line 34
    iput v3, p0, Lcom/samsung/android/airbutton/Attributes;->parentViewHeight:I

    .line 35
    iput v2, p0, Lcom/samsung/android/airbutton/Attributes;->x:I

    .line 36
    iput v1, p0, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    .line 37
    iput v2, p0, Lcom/samsung/android/airbutton/Attributes;->y:I

    .line 38
    iput v1, p0, Lcom/samsung/android/airbutton/Attributes;->yPixel:I

    .line 39
    iput v1, p0, Lcom/samsung/android/airbutton/Attributes;->widgetDistanceFromHoveredView:I

    .line 40
    iput v1, p0, Lcom/samsung/android/airbutton/Attributes;->widgetDistanceFromHoveredViewPixel:I

    .line 46
    iput-boolean v1, p0, Lcom/samsung/android/airbutton/Attributes;->multipleSelection:Z

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/Attributes;->scrollable:Z

    .line 48
    iput-boolean v1, p0, Lcom/samsung/android/airbutton/Attributes;->withBounceEffect:Z

    .line 49
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->listItemTilt:F

    .line 50
    iput v2, p0, Lcom/samsung/android/airbutton/Attributes;->itemSize:I

    .line 51
    iput v1, p0, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    .line 52
    iput v1, p0, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    .line 63
    invoke-virtual {p0, p1}, Lcom/samsung/android/airbutton/Attributes;->copyFrom(Lcom/samsung/android/airbutton/Attributes;)V

    .line 64
    return-void
.end method


# virtual methods
.method public calculatePixelValue()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 121
    iget v0, p0, Lcom/samsung/android/airbutton/Attributes;->x:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/airbutton/Attributes;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    .line 122
    iget v0, p0, Lcom/samsung/android/airbutton/Attributes;->y:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/airbutton/Attributes;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->yPixel:I

    .line 124
    iget v0, p0, Lcom/samsung/android/airbutton/Attributes;->widgetDistanceFromHoveredView:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/airbutton/Attributes;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->widgetDistanceFromHoveredViewPixel:I

    .line 125
    iget v0, p0, Lcom/samsung/android/airbutton/Attributes;->itemSize:I

    if-ne v0, v2, :cond_0

    .line 126
    iput v2, p0, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    .line 129
    :goto_0
    return-void

    .line 128
    :cond_0
    iget v0, p0, Lcom/samsung/android/airbutton/Attributes;->itemSize:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/airbutton/Attributes;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    goto :goto_0
.end method

.method public clone()Lcom/samsung/android/airbutton/Attributes;
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0, p0}, Lcom/samsung/android/airbutton/Attributes;->clone(Lcom/samsung/android/airbutton/Attributes;)Lcom/samsung/android/airbutton/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public clone(Lcom/samsung/android/airbutton/Attributes;)Lcom/samsung/android/airbutton/Attributes;
    .locals 1
    .param p1, "attributes"    # Lcom/samsung/android/airbutton/Attributes;

    .prologue
    .line 115
    new-instance v0, Lcom/samsung/android/airbutton/Attributes;

    invoke-direct {v0, p1}, Lcom/samsung/android/airbutton/Attributes;-><init>(Lcom/samsung/android/airbutton/Attributes;)V

    .line 117
    .local v0, "newAttribute":Lcom/samsung/android/airbutton/Attributes;
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/Attributes;->clone()Lcom/samsung/android/airbutton/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public copyFrom(Lcom/samsung/android/airbutton/Attributes;)V
    .locals 1
    .param p1, "attributes"    # Lcom/samsung/android/airbutton/Attributes;

    .prologue
    .line 76
    if-nez p1, :cond_0

    .line 108
    :goto_0
    return-void

    .line 79
    :cond_0
    iget v0, p1, Lcom/samsung/android/airbutton/Attributes;->UIType:I

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->UIType:I

    .line 80
    iget v0, p1, Lcom/samsung/android/airbutton/Attributes;->dataType:I

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->dataType:I

    .line 81
    iget v0, p1, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    .line 82
    iget v0, p1, Lcom/samsung/android/airbutton/Attributes;->direction:I

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    .line 83
    iget v0, p1, Lcom/samsung/android/airbutton/Attributes;->maxDisplayItemCnt:I

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->maxDisplayItemCnt:I

    .line 84
    iget v0, p1, Lcom/samsung/android/airbutton/Attributes;->statusbarHeight:I

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->statusbarHeight:I

    .line 85
    iget v0, p1, Lcom/samsung/android/airbutton/Attributes;->windowWidth:I

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->windowWidth:I

    .line 86
    iget v0, p1, Lcom/samsung/android/airbutton/Attributes;->windowHeight:I

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->windowHeight:I

    .line 87
    iget v0, p1, Lcom/samsung/android/airbutton/Attributes;->parentViewX:I

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->parentViewX:I

    .line 88
    iget v0, p1, Lcom/samsung/android/airbutton/Attributes;->parentViewY:I

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->parentViewY:I

    .line 89
    iget v0, p1, Lcom/samsung/android/airbutton/Attributes;->parentViewWidth:I

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->parentViewWidth:I

    .line 90
    iget v0, p1, Lcom/samsung/android/airbutton/Attributes;->parentViewHeight:I

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->parentViewHeight:I

    .line 91
    iget v0, p1, Lcom/samsung/android/airbutton/Attributes;->density:F

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->density:F

    .line 93
    iget v0, p1, Lcom/samsung/android/airbutton/Attributes;->x:I

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->x:I

    .line 94
    iget v0, p1, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    .line 95
    iget v0, p1, Lcom/samsung/android/airbutton/Attributes;->y:I

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->y:I

    .line 96
    iget v0, p1, Lcom/samsung/android/airbutton/Attributes;->yPixel:I

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->yPixel:I

    .line 98
    iget v0, p1, Lcom/samsung/android/airbutton/Attributes;->widgetDistanceFromHoveredView:I

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->widgetDistanceFromHoveredView:I

    .line 99
    iget v0, p1, Lcom/samsung/android/airbutton/Attributes;->widgetDistanceFromHoveredViewPixel:I

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->widgetDistanceFromHoveredViewPixel:I

    .line 101
    iget-boolean v0, p1, Lcom/samsung/android/airbutton/Attributes;->multipleSelection:Z

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/Attributes;->multipleSelection:Z

    .line 102
    iget-boolean v0, p1, Lcom/samsung/android/airbutton/Attributes;->scrollable:Z

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/Attributes;->scrollable:Z

    .line 103
    iget-boolean v0, p1, Lcom/samsung/android/airbutton/Attributes;->withBounceEffect:Z

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/Attributes;->withBounceEffect:Z

    .line 104
    iget v0, p1, Lcom/samsung/android/airbutton/Attributes;->listItemTilt:F

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->listItemTilt:F

    .line 105
    iget v0, p1, Lcom/samsung/android/airbutton/Attributes;->itemSize:I

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->itemSize:I

    .line 106
    iget v0, p1, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    .line 107
    iget v0, p1, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    iput v0, p0, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    goto :goto_0
.end method
