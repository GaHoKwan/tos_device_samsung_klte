.class Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;
.super Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
.source "TwToolBoxFloatingViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ToolBoxCharacter"
.end annotation


# instance fields
.field backgroundOpen:Landroid/graphics/drawable/Drawable;

.field characterType:I

.field mainShadow:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Ljava/lang/String;)V
    .locals 2
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 601
    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .line 602
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Ljava/lang/String;)V

    .line 597
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;->characterType:I

    .line 603
    # getter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$3100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080caf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;->backgroundOpen:Landroid/graphics/drawable/Drawable;

    .line 604
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;->backgroundOpen:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    # setter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_WIDTH:I
    invoke-static {p1, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$3202(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;I)I

    .line 605
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;->backgroundOpen:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    # setter for: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_HEIGHT:I
    invoke-static {p1, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$3302(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;I)I

    .line 606
    return-void
.end method
