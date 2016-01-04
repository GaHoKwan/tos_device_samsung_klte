.class final Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;
.super Ljava/lang/Object;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayDeviceInfo"
.end annotation


# instance fields
.field devType:I

.field deviceId:Ljava/lang/CharSequence;

.field deviceName:Ljava/lang/CharSequence;

.field displayIcon:Landroid/graphics/drawable/Drawable;

.field displayLabel:Ljava/lang/CharSequence;

.field netType:I

.field number:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;)V
    .locals 2
    .param p2, "pInitText"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1634
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1631
    iput v1, p0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->netType:I

    .line 1632
    iput v1, p0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->devType:I

    .line 1635
    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->displayLabel:Ljava/lang/CharSequence;

    .line 1636
    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->deviceName:Ljava/lang/CharSequence;

    .line 1637
    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->deviceId:Ljava/lang/CharSequence;

    .line 1638
    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->number:Ljava/lang/CharSequence;

    .line 1639
    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    .line 1640
    return-void
.end method

.method constructor <init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;II)V
    .locals 1
    .param p2, "pDeviceName"    # Ljava/lang/CharSequence;
    .param p3, "pLabel"    # Ljava/lang/CharSequence;
    .param p4, "pDeviceId"    # Ljava/lang/CharSequence;
    .param p5, "pNumber"    # Ljava/lang/CharSequence;
    .param p6, "pIcon"    # Landroid/graphics/drawable/Drawable;
    .param p7, "network"    # I
    .param p8, "device"    # I

    .prologue
    const/4 v0, 0x0

    .line 1642
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1631
    iput v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->netType:I

    .line 1632
    iput v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->devType:I

    .line 1643
    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->displayLabel:Ljava/lang/CharSequence;

    .line 1644
    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->deviceName:Ljava/lang/CharSequence;

    .line 1645
    iput-object p4, p0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->deviceId:Ljava/lang/CharSequence;

    .line 1646
    iput-object p5, p0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->number:Ljava/lang/CharSequence;

    .line 1647
    iput-object p6, p0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    .line 1648
    iput p7, p0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->netType:I

    .line 1649
    iput p8, p0, Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;->devType:I

    .line 1650
    return-void
.end method
