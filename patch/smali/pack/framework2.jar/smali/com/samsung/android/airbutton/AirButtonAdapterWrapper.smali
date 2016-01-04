.class public Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;
.super Ljava/lang/Object;
.source "AirButtonAdapterWrapper.java"


# instance fields
.field private mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

.field private mAttrs:Lcom/samsung/android/airbutton/Attributes;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsParentThemeDeviceDefault:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;Lcom/samsung/android/airbutton/Attributes;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
    .param p3, "attrs"    # Lcom/samsung/android/airbutton/Attributes;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    .line 24
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    .line 25
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    .line 26
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mContext:Landroid/content/Context;

    .line 27
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mIsParentThemeDeviceDefault:Z

    .line 35
    iput-object p1, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    .line 37
    iput-object p3, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    .line 39
    if-eqz p1, :cond_0

    .line 40
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    .line 42
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 43
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101046c

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 44
    iget v1, v0, Landroid/util/TypedValue;->data:I

    if-eqz v1, :cond_0

    .line 45
    iput-boolean v3, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mIsParentThemeDeviceDefault:Z

    .line 47
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_0
    return-void
.end method

.method private getDummyView()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 228
    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 229
    .local v0, "dummyTextView":Landroid/widget/TextView;
    const-string v2, "You set wrong data for this UI type"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 231
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    return-object v0
.end method

.method private getListView(I)Landroid/view/View;
    .locals 12
    .param p1, "idx"    # I

    .prologue
    .line 70
    const/4 v3, 0x0

    .line 72
    .local v3, "rootView":Landroid/view/View;
    iget-object v9, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    if-nez v9, :cond_0

    move-object v4, v3

    .line 156
    .end local v3    # "rootView":Landroid/view/View;
    .local v4, "rootView":Landroid/view/View;
    :goto_0
    return-object v4

    .line 77
    .end local v4    # "rootView":Landroid/view/View;
    .restart local v3    # "rootView":Landroid/view/View;
    :cond_0
    iget-object v9, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v9, v9, Lcom/samsung/android/airbutton/Attributes;->dataType:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    .line 78
    rem-int/lit8 v9, p1, 0x2

    if-nez v9, :cond_2

    .line 79
    iget-object v9, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x1090025

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 83
    :goto_1
    const v9, 0x10202db

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 84
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    .line 85
    iget-object v9, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v9, p1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getItem(I)Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    :cond_1
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v2, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 88
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .end local v0    # "imageView":Landroid/widget/ImageView;
    :goto_2
    move-object v4, v3

    .line 156
    .end local v3    # "rootView":Landroid/view/View;
    .restart local v4    # "rootView":Landroid/view/View;
    goto :goto_0

    .line 81
    .end local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "rootView":Landroid/view/View;
    .restart local v3    # "rootView":Landroid/view/View;
    :cond_2
    iget-object v9, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x1090026

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto :goto_1

    .line 91
    :cond_3
    iget-object v9, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v9, v9, Lcom/samsung/android/airbutton/Attributes;->dataType:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    .line 92
    rem-int/lit8 v9, p1, 0x2

    if-nez v9, :cond_5

    .line 93
    iget-object v9, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x109002e

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 97
    :goto_3
    const v9, 0x10202e3

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 98
    .local v6, "textView":Landroid/widget/TextView;
    if-eqz v6, :cond_4

    .line 99
    iget-object v9, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v9, p1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getItem(I)Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :cond_4
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v2, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 102
    .restart local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 95
    .end local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v6    # "textView":Landroid/widget/TextView;
    :cond_5
    iget-object v9, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x109002d

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto :goto_3

    .line 105
    :cond_6
    iget-object v9, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v9, v9, Lcom/samsung/android/airbutton/Attributes;->dataType:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_f

    .line 106
    rem-int/lit8 v9, p1, 0x2

    if-nez v9, :cond_b

    .line 107
    iget-object v9, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x109002b

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 111
    :goto_4
    iget-object v9, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v9, p1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getItem(I)Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    move-result-object v1

    .line 113
    .local v1, "item":Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;
    const v9, 0x10202df

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 114
    .restart local v0    # "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_7

    .line 115
    invoke-virtual {v1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    :cond_7
    const v9, 0x10202e0

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 118
    .restart local v6    # "textView":Landroid/widget/TextView;
    const v9, 0x10202e1

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 119
    .local v7, "textViewMain":Landroid/widget/TextView;
    const v9, 0x10202e2

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 120
    .local v8, "textViewSub":Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getSubDescription()Ljava/lang/String;

    move-result-object v5

    .line 122
    .local v5, "subDescription":Ljava/lang/String;
    if-eqz v5, :cond_c

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_c

    .line 123
    if-eqz v7, :cond_8

    .line 124
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 125
    invoke-virtual {v1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 129
    :cond_8
    if-eqz v8, :cond_9

    .line 130
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 131
    invoke-virtual {v1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getSubDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 135
    :cond_9
    if-eqz v6, :cond_a

    .line 136
    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 150
    :cond_a
    :goto_5
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v2, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 151
    .restart local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 109
    .end local v0    # "imageView":Landroid/widget/ImageView;
    .end local v1    # "item":Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;
    .end local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v5    # "subDescription":Ljava/lang/String;
    .end local v6    # "textView":Landroid/widget/TextView;
    .end local v7    # "textViewMain":Landroid/widget/TextView;
    .end local v8    # "textViewSub":Landroid/widget/TextView;
    :cond_b
    iget-object v9, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x109002c

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto :goto_4

    .line 138
    .restart local v0    # "imageView":Landroid/widget/ImageView;
    .restart local v1    # "item":Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;
    .restart local v5    # "subDescription":Ljava/lang/String;
    .restart local v6    # "textView":Landroid/widget/TextView;
    .restart local v7    # "textViewMain":Landroid/widget/TextView;
    .restart local v8    # "textViewSub":Landroid/widget/TextView;
    :cond_c
    if-eqz v6, :cond_d

    .line 139
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 140
    invoke-virtual {v1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 144
    :cond_d
    if-eqz v7, :cond_e

    .line 145
    const/16 v9, 0x8

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 146
    :cond_e
    if-eqz v8, :cond_a

    .line 147
    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 153
    .end local v0    # "imageView":Landroid/widget/ImageView;
    .end local v1    # "item":Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;
    .end local v5    # "subDescription":Ljava/lang/String;
    .end local v6    # "textView":Landroid/widget/TextView;
    .end local v7    # "textViewMain":Landroid/widget/TextView;
    .end local v8    # "textViewSub":Landroid/widget/TextView;
    :cond_f
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "You set wrong data type. You should set correct data set for this UI type"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method private getMenuView(I)Landroid/view/View;
    .locals 13
    .param p1, "idx"    # I

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x8

    const/4 v10, 0x0

    const/4 v9, -0x2

    .line 160
    const/4 v4, 0x0

    .line 162
    .local v4, "rootView":Landroid/view/View;
    iget-object v7, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    if-nez v7, :cond_0

    move-object v5, v4

    .line 224
    .end local v4    # "rootView":Landroid/view/View;
    .local v5, "rootView":Landroid/view/View;
    :goto_0
    return-object v5

    .line 173
    .end local v5    # "rootView":Landroid/view/View;
    .restart local v4    # "rootView":Landroid/view/View;
    :cond_0
    iget-object v7, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v7, v7, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 174
    iget-object v7, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x1090029

    invoke-virtual {v7, v8, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 178
    :goto_1
    const v7, 0x10202de

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 179
    .local v1, "imageViewOnly":Landroid/widget/ImageView;
    const v7, 0x10202dc

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 180
    .local v0, "imageView":Landroid/widget/ImageView;
    const v7, 0x10202dd

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 182
    .local v6, "textView":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v7, p1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getItem(I)Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    move-result-object v2

    .line 183
    .local v2, "item":Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;
    invoke-virtual {v2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getSubDescription()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 184
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "You set wrong data type. You can\'t use SubDescription for UI_MENU_TYPE"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 176
    .end local v0    # "imageView":Landroid/widget/ImageView;
    .end local v1    # "imageViewOnly":Landroid/widget/ImageView;
    .end local v2    # "item":Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;
    .end local v6    # "textView":Landroid/widget/TextView;
    :cond_1
    iget-object v7, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x109002a

    invoke-virtual {v7, v8, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    .line 186
    .restart local v0    # "imageView":Landroid/widget/ImageView;
    .restart local v1    # "imageViewOnly":Landroid/widget/ImageView;
    .restart local v2    # "item":Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;
    .restart local v6    # "textView":Landroid/widget/TextView;
    :cond_2
    iget-object v7, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v7, v7, Lcom/samsung/android/airbutton/Attributes;->dataType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_6

    .line 187
    if-eqz v0, :cond_3

    .line 188
    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    :cond_3
    if-eqz v6, :cond_4

    .line 191
    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 193
    :cond_4
    if-eqz v1, :cond_5

    .line 194
    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 195
    invoke-virtual {v2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 198
    :cond_5
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 199
    .local v3, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    move-object v5, v4

    .line 224
    .end local v4    # "rootView":Landroid/view/View;
    .restart local v5    # "rootView":Landroid/view/View;
    goto :goto_0

    .line 200
    .end local v3    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v5    # "rootView":Landroid/view/View;
    .restart local v4    # "rootView":Landroid/view/View;
    :cond_6
    iget-object v7, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v7, v7, Lcom/samsung/android/airbutton/Attributes;->dataType:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_a

    .line 201
    if-eqz v1, :cond_7

    .line 202
    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 204
    :cond_7
    if-eqz v0, :cond_8

    .line 205
    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 206
    invoke-virtual {v2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 212
    :cond_8
    if-eqz v6, :cond_9

    .line 213
    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 214
    invoke-virtual {v2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 218
    :cond_9
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 219
    .restart local v3    # "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 221
    .end local v3    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_a
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "You set wrong data type. You can\'t use only text data for UI_MENU_TYPE"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getView(I)Landroid/view/View;
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->UIType:I

    packed-switch v0, :pswitch_data_0

    .line 65
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 61
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->getListView(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 63
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->getMenuView(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
