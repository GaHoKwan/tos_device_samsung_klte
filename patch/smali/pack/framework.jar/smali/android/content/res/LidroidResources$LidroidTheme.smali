.class public final Landroid/content/res/LidroidResources$LidroidTheme;
.super Landroid/content/res/Resources$Theme;
.source "LidroidResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/LidroidResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LidroidTheme"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/res/LidroidResources;


# direct methods
.method public constructor <init>(Landroid/content/res/LidroidResources;)V
    .locals 0

    .prologue
    .line 667
    iput-object p1, p0, Landroid/content/res/LidroidResources$LidroidTheme;->this$0:Landroid/content/res/LidroidResources;

    .line 668
    invoke-direct {p0, p1}, Landroid/content/res/Resources$Theme;-><init>(Landroid/content/res/Resources;)V

    .line 669
    return-void
.end method


# virtual methods
.method public obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;
    .locals 2
    .param p1, "resid"    # I
    .param p2, "attrs"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 673
    iget-object v0, p0, Landroid/content/res/LidroidResources$LidroidTheme;->this$0:Landroid/content/res/LidroidResources;

    invoke-super {p0, p1, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    # invokes: Landroid/content/res/LidroidResources;->replaceTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;
    invoke-static {v0, v1}, Landroid/content/res/LidroidResources;->access$000(Landroid/content/res/LidroidResources;Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    .locals 2
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attrs"    # [I
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 677
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 679
    .local v0, "retval":Landroid/content/res/TypedArray;
    iget-object v1, p0, Landroid/content/res/LidroidResources$LidroidTheme;->this$0:Landroid/content/res/LidroidResources;

    # invokes: Landroid/content/res/LidroidResources;->replaceTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;
    invoke-static {v1, v0}, Landroid/content/res/LidroidResources;->access$000(Landroid/content/res/LidroidResources;Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;

    move-result-object v1

    return-object v1
.end method

.method public obtainStyledAttributes([I)Landroid/content/res/TypedArray;
    .locals 2
    .param p1, "attrs"    # [I

    .prologue
    .line 683
    iget-object v0, p0, Landroid/content/res/LidroidResources$LidroidTheme;->this$0:Landroid/content/res/LidroidResources;

    invoke-super {p0, p1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    # invokes: Landroid/content/res/LidroidResources;->replaceTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;
    invoke-static {v0, v1}, Landroid/content/res/LidroidResources;->access$000(Landroid/content/res/LidroidResources;Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method
