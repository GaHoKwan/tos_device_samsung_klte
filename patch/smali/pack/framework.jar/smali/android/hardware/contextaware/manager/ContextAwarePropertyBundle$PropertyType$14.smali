.class final enum Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType$14;
.super Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;
.source "ContextAwarePropertyBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 366
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle$PropertyType;-><init>(Ljava/lang/String;ILandroid/hardware/contextaware/manager/ContextAwarePropertyBundle$1;)V

    return-void
.end method


# virtual methods
.method getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()TE;"
        }
    .end annotation

    .prologue
    .line 376
    # getter for: Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->longArrayListVal:Ljava/util/ArrayList;
    invoke-static {}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->access$1400()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method setValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 370
    .local p1, "value":Ljava/lang/Object;, "TT;"
    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "value":Ljava/lang/Object;, "TT;"
    # setter for: Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->longArrayListVal:Ljava/util/ArrayList;
    invoke-static {p1}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->access$1402(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 371
    return-void
.end method
