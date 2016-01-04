.class public Landroid/widget/SeekBar;
.super Landroid/widget/AbsSeekBar;
.source "SeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SeekBar$OnSeekBarChangeKeyListener;,
        Landroid/widget/SeekBar$OnSeekBarHoverListener;,
        Landroid/widget/SeekBar$OnSeekBarChangeListener;
    }
.end annotation


# instance fields
.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field private mOnSeekBarChangeKeyListener:Landroid/widget/SeekBar$OnSeekBarChangeKeyListener;

.field private mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mOnSeekBarHoverListener:Landroid/widget/SeekBar$OnSeekBarHoverListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 84
    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SeekBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 89
    return-void
.end method


# virtual methods
.method onHoverChanged(III)V
    .locals 2
    .param p1, "hoverLevel"    # I
    .param p2, "posX"    # I
    .param p3, "posY"    # I

    .prologue
    .line 193
    iget-object v0, p0, Landroid/widget/SeekBar;->mOnSeekBarHoverListener:Landroid/widget/SeekBar$OnSeekBarHoverListener;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Landroid/widget/SeekBar;->mOnSeekBarHoverListener:Landroid/widget/SeekBar$OnSeekBarHoverListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, p1, v1}, Landroid/widget/SeekBar$OnSeekBarHoverListener;->onHoverChanged(Landroid/widget/SeekBar;IZ)V

    .line 196
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsSeekBar;->onHoverChanged(III)V

    .line 197
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/widget/AbsSeekBar;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 136
    const-class v0, Landroid/widget/SeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 137
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 141
    invoke-super {p0, p1}, Landroid/widget/AbsSeekBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 142
    const-class v0, Landroid/widget/SeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 143
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 227
    iget-object v0, p0, Landroid/widget/SeekBar;->mOnSeekBarChangeKeyListener:Landroid/widget/SeekBar$OnSeekBarChangeKeyListener;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Landroid/widget/SeekBar;->mOnSeekBarChangeKeyListener:Landroid/widget/SeekBar$OnSeekBarChangeKeyListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/SeekBar$OnSeekBarChangeKeyListener;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 230
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSeekBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method onProgressRefresh(FZ)V
    .locals 2
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z

    .prologue
    .line 93
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSeekBar;->onProgressRefresh(FZ)V

    .line 95
    iget-object v0, p0, Landroid/widget/SeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Landroid/widget/SeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    invoke-interface {v0, p0, v1, p2}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 98
    :cond_0
    return-void
.end method

.method onStartTrackingHover(III)V
    .locals 1
    .param p1, "hoverLevel"    # I
    .param p2, "posX"    # I
    .param p3, "posY"    # I

    .prologue
    .line 177
    iget-object v0, p0, Landroid/widget/SeekBar;->mOnSeekBarHoverListener:Landroid/widget/SeekBar$OnSeekBarHoverListener;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Landroid/widget/SeekBar;->mOnSeekBarHoverListener:Landroid/widget/SeekBar$OnSeekBarHoverListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/SeekBar$OnSeekBarHoverListener;->onStartTrackingHover(Landroid/widget/SeekBar;I)V

    .line 180
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsSeekBar;->onStartTrackingHover(III)V

    .line 181
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 116
    iget-boolean v0, p0, Landroid/widget/SeekBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    .line 117
    const/16 v0, 0x5078

    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 120
    :cond_0
    iget-object v0, p0, Landroid/widget/SeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Landroid/widget/SeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 123
    :cond_1
    return-void
.end method

.method onStopTrackingHover()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Landroid/widget/SeekBar;->mOnSeekBarHoverListener:Landroid/widget/SeekBar$OnSeekBarHoverListener;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Landroid/widget/SeekBar;->mOnSeekBarHoverListener:Landroid/widget/SeekBar$OnSeekBarHoverListener;

    invoke-interface {v0, p0}, Landroid/widget/SeekBar$OnSeekBarHoverListener;->onStopTrackingHover(Landroid/widget/SeekBar;)V

    .line 188
    :cond_0
    invoke-super {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingHover()V

    .line 189
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .prologue
    .line 127
    invoke-super {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 128
    iget-object v0, p0, Landroid/widget/SeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Landroid/widget/SeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 131
    :cond_0
    return-void
.end method

.method public setOnSeekBarChangeKeyListener(Landroid/widget/SeekBar$OnSeekBarChangeKeyListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/SeekBar$OnSeekBarChangeKeyListener;

    .prologue
    .line 218
    iput-object p1, p0, Landroid/widget/SeekBar;->mOnSeekBarChangeKeyListener:Landroid/widget/SeekBar$OnSeekBarChangeKeyListener;

    .line 219
    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .prologue
    .line 109
    iput-object p1, p0, Landroid/widget/SeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 110
    return-void
.end method

.method public setOnSeekBarHoverListener(Landroid/widget/SeekBar$OnSeekBarHoverListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/SeekBar$OnSeekBarHoverListener;

    .prologue
    .line 172
    iput-object p1, p0, Landroid/widget/SeekBar;->mOnSeekBarHoverListener:Landroid/widget/SeekBar$OnSeekBarHoverListener;

    .line 173
    return-void
.end method
