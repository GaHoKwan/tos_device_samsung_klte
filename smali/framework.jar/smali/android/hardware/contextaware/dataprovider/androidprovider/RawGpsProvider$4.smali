.class Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider$4;
.super Ljava/lang/Object;
.source "RawGpsProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->disable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;


# direct methods
.method constructor <init>(Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider$4;->this$0:Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider$4;->this$0:Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-virtual {v0}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->unregisterGpsListener()V

    .line 253
    return-void
.end method
