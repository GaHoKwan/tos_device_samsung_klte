.class public Landroid/preference/CheckBoxPreference;
.super Landroid/preference/TwoStatePreference;
.source "CheckBoxPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    sget-object v1, Lcom/android/internal/R$styleable;->CheckBoxPreference:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 43
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/TwoStatePreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 44
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/TwoStatePreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 45
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/preference/TwoStatePreference;->setDisableDependentsState(Z)V

    .line 47
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 48
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 62
    const v1, 0x1020001

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 63
    .local v0, "checkboxView":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/Checkable;

    if-eqz v1, :cond_0

    .line 64
    instance-of v1, v0, Landroid/widget/AnimatedCheckable;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 65
    check-cast v1, Landroid/widget/AnimatedCheckable;

    iget-boolean v2, p0, Landroid/preference/TwoStatePreference;->mChecked:Z

    iget-boolean v3, p0, Landroid/preference/TwoStatePreference;->mCheckedStateChanged:Z

    invoke-interface {v1, v2, v3}, Landroid/widget/AnimatedCheckable;->setChecked(ZZ)V

    .line 66
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/preference/TwoStatePreference;->mCheckedStateChanged:Z

    .line 70
    :goto_0
    invoke-virtual {p0, v0}, Landroid/preference/TwoStatePreference;->sendAccessibilityEvent(Landroid/view/View;)V

    .line 73
    :cond_0
    invoke-virtual {p0, p1}, Landroid/preference/TwoStatePreference;->syncSummaryView(Landroid/view/View;)V

    .line 74
    return-void

    :cond_1
    move-object v1, v0

    .line 68
    check-cast v1, Landroid/widget/Checkable;

    iget-boolean v2, p0, Landroid/preference/TwoStatePreference;->mChecked:Z

    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_0
.end method

.method public setCheckedAnimated(ZZ)V
    .locals 0
    .param p1, "checked"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 86
    iput-boolean p2, p0, Landroid/preference/TwoStatePreference;->mCheckedStateChanged:Z

    .line 87
    return-void
.end method
