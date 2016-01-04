.class public Landroid/view/animation/AnimationUtils;
.super Ljava/lang/Object;
.source "AnimationUtils.java"


# static fields
.field private static final SEQUENTIALLY:I = 0x1

.field private static final TOGETHER:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Animation;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Landroid/view/animation/AnimationUtils;->createAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/view/animation/AnimationSet;Landroid/util/AttributeSet;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method private static createAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/view/animation/AnimationSet;Landroid/util/AttributeSet;)Landroid/view/animation/Animation;
    .locals 7
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "parent"    # Landroid/view/animation/AnimationSet;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    const/4 v0, 0x0

    .line 102
    .local v0, "anim":Landroid/view/animation/Animation;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 105
    .local v1, "depth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_b

    :cond_1
    const/4 v4, 0x1

    if-eq v3, v4, :cond_b

    .line 107
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 111
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v4, "set"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 114
    new-instance v0, Landroid/view/animation/AnimationSet;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    invoke-direct {v0, p0, p3}, Landroid/view/animation/AnimationSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0    # "anim":Landroid/view/animation/Animation;
    move-object v4, v0

    .line 115
    check-cast v4, Landroid/view/animation/AnimationSet;

    invoke-static {p0, p1, v4, p3}, Landroid/view/animation/AnimationUtils;->createAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/view/animation/AnimationSet;Landroid/util/AttributeSet;)Landroid/view/animation/Animation;

    .line 141
    :goto_1
    if-eqz p2, :cond_0

    .line 142
    invoke-virtual {p2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 116
    :cond_2
    const-string v4, "alpha"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 117
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    invoke-direct {v0, p0, p3}, Landroid/view/animation/AlphaAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_1

    .line 118
    :cond_3
    const-string/jumbo v4, "scale"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 119
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    invoke-direct {v0, p0, p3}, Landroid/view/animation/ScaleAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_1

    .line 120
    :cond_4
    const-string/jumbo v4, "rotate"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 121
    new-instance v0, Landroid/view/animation/RotateAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    invoke-direct {v0, p0, p3}, Landroid/view/animation/RotateAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_1

    .line 122
    :cond_5
    const-string/jumbo v4, "translate"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 123
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    invoke-direct {v0, p0, p3}, Landroid/view/animation/TranslateAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_1

    .line 126
    :cond_6
    const-string/jumbo v4, "rotate3d"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 127
    new-instance v0, Landroid/view/animation/RotateAnimation3D;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    invoke-direct {v0, p0, p3}, Landroid/view/animation/RotateAnimation3D;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_1

    .line 128
    :cond_7
    const-string/jumbo v4, "scale3D"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 129
    new-instance v0, Landroid/view/animation/ScaleAnimation3D;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    invoke-direct {v0, p0, p3}, Landroid/view/animation/ScaleAnimation3D;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_1

    .line 130
    :cond_8
    const-string/jumbo v4, "translate3d"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 131
    new-instance v0, Landroid/view/animation/TranslateAnimation3D;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    invoke-direct {v0, p0, p3}, Landroid/view/animation/TranslateAnimation3D;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_1

    .line 132
    :cond_9
    const-string/jumbo v4, "shader3d"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 133
    new-instance v0, Landroid/view/animation/AdvancedShader3D;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    invoke-direct {v0, p0, p3}, Landroid/view/animation/AdvancedShader3D;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_1

    .line 138
    :cond_a
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown animation name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 146
    .end local v2    # "name":Ljava/lang/String;
    :cond_b
    return-object v0
.end method

.method private static createInterpolatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Interpolator;
    .locals 8
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 305
    const/4 v2, 0x0

    .line 309
    .local v2, "interpolator":Landroid/view/animation/Interpolator;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 312
    .local v1, "depth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, "type":I
    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v1, :cond_33

    :cond_1
    const/4 v5, 0x1

    if-eq v4, v5, :cond_33

    .line 314
    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 318
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 320
    .local v0, "attrs":Landroid/util/AttributeSet;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 323
    .local v3, "name":Ljava/lang/String;
    const-string v5, "linearInterpolator"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 324
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/LinearInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 325
    :cond_2
    const-string v5, "accelerateInterpolator"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 326
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/AccelerateInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 327
    :cond_3
    const-string v5, "decelerateInterpolator"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 328
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 329
    :cond_4
    const-string v5, "accelerateDecelerateInterpolator"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 330
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 331
    :cond_5
    const-string v5, "cycleInterpolator"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 332
    new-instance v2, Landroid/view/animation/CycleInterpolator;

    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/CycleInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 333
    :cond_6
    const-string v5, "anticipateInterpolator"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 334
    new-instance v2, Landroid/view/animation/AnticipateInterpolator;

    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/AnticipateInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 335
    :cond_7
    const-string/jumbo v5, "overshootInterpolator"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 336
    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/OvershootInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_0

    .line 337
    :cond_8
    const-string v5, "anticipateOvershootInterpolator"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 338
    new-instance v2, Landroid/view/animation/AnticipateOvershootInterpolator;

    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto/16 :goto_0

    .line 339
    :cond_9
    const-string v5, "bounceInterpolator"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 340
    new-instance v2, Landroid/view/animation/BounceInterpolator;

    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/BounceInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto/16 :goto_0

    .line 341
    :cond_a
    const-string v5, "backEaseIn"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 342
    new-instance v2, Landroid/view/animation/interpolator/BackEaseIn;

    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/interpolator/BackEaseIn;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto/16 :goto_0

    .line 343
    :cond_b
    const-string v5, "backEaseOut"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 344
    new-instance v2, Landroid/view/animation/interpolator/BackEaseOut;

    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/interpolator/BackEaseOut;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto/16 :goto_0

    .line 345
    :cond_c
    const-string v5, "backEaseInOut"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 346
    new-instance v2, Landroid/view/animation/interpolator/BackEaseInOut;

    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/interpolator/BackEaseInOut;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto/16 :goto_0

    .line 347
    :cond_d
    const-string v5, "bounceEaseIn"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 348
    new-instance v2, Landroid/view/animation/interpolator/BounceEaseIn;

    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/interpolator/BounceEaseIn;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto/16 :goto_0

    .line 349
    :cond_e
    const-string v5, "bounceEaseOut"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 350
    new-instance v2, Landroid/view/animation/interpolator/BounceEaseOut;

    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/interpolator/BounceEaseOut;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto/16 :goto_0

    .line 351
    :cond_f
    const-string v5, "bounceEaseInOut"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 352
    new-instance v2, Landroid/view/animation/interpolator/BounceEaseInOut;

    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/interpolator/BounceEaseInOut;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto/16 :goto_0

    .line 353
    :cond_10
    const-string v5, "circEaseIn"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 354
    new-instance v2, Landroid/view/animation/interpolator/CircEaseIn;

    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/interpolator/CircEaseIn;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto/16 :goto_0

    .line 355
    :cond_11
    const-string v5, "circEaseOut"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 356
    new-instance v2, Landroid/view/animation/interpolator/CircEaseOut;

    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/interpolator/CircEaseOut;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto/16 :goto_0

    .line 357
    :cond_12
    const-string v5, "circEaseInOut"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 358
    new-instance v2, Landroid/view/animation/interpolator/CircEaseInOut;

    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/interpolator/CircEaseInOut;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto/16 :goto_0

    .line 359
    :cond_13
    const-string v5, "cubicEaseIn"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 360
    new-instance v2, Landroid/view/animation/interpolator/CubicEaseIn;

    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/interpolator/CubicEaseIn;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto/16 :goto_0

    .line 361
    :cond_14
    const-string v5, "cubicEaseOut"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 362
    new-instance v2, Landroid/view/animation/interpolator/CubicEaseOut;

    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/interpolator/CubicEaseOut;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto/16 :goto_0

    .line 363
    :cond_15
    const-string v5, "cubicEaseInOut"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 364
    new-instance v2, Landroid/view/animation/interpolator/CubicEaseInOut;

    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/interpolator/CubicEaseInOut;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto/16 :goto_0

    .line 365
    :cond_16
    const-string v5, "elasticEaseIn"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 366
    new-instance v2, Landroid/view/animation/interpolator/ElasticEaseIn;

    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/interpolator/ElasticEaseIn;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto/16 :goto_0

    .line 367
    :cond_17
    const-string v5, "elasticEaseOut"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 368
    new-instance v2, Landroid/view/animation/interpolator/ElasticEaseOut;

    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/interpolator/ElasticEaseOut;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto/16 :goto_0

    .line 369
    :cond_18
    const-string v5, "elasticEaseInOut"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 370
    new-instance v2, Landroid/view/animation/interpolator/ElasticEaseInOut;

    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/interpolator/ElasticEaseInOut;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto/16 :goto_0

    .line 371
    :cond_19
    const-string v5, "expoEaseIn"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 372
    new-instance v2, Landroid/view/animation/interpolator/ExpoEaseIn;

    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/interpolator/ExpoEaseIn;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto/16 :goto_0

    .line 373
    :cond_1a
    const-string v5, "expoEaseOut"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 374
    new-instance v2, Landroid/view/animation/interpolator/ExpoEaseOut;

    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/interpolator/ExpoEaseOut;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto/16 :goto_0

    .line 375
    :cond_1b
    const-string v5, "expoEaseInOut"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 376
    new-instance v2, Landroid/view/animation/interpolator/ExpoEaseInOut;

    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/interpolator/ExpoEaseInOut;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto/16 :goto_0

    .line 377
    :cond_1c
    const-string/jumbo v5, "quadEaseIn"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 378
    new-instance v2, Landroid/view/animation/interpolator/QuadEaseIn;

    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/interpolator/QuadEaseIn;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto/16 :goto_0

    .line 379
    :cond_1d
    const-string/jumbo v5, "quadEaseOut"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 380
    new-instance v2, Landroid/view/animation/interpolator/QuadEaseOut;

    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/interpolator/QuadEaseOut;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto/16 :goto_0

    .line 381
    :cond_1e
    const-string/jumbo v5, "quadEaseInOut"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 382
    new-instance v2, Landroid/view/animation/interpolator/QuadEaseInOut;

    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/interpolator/QuadEaseInOut;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto/16 :goto_0

    .line 383
    :cond_1f
    const-string/jumbo v5, "quartEaseIn"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 384
    new-instance v2, Landroid/view/animation/interpolator/QuartEaseIn;

    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/interpolator/QuartEaseIn;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto/16 :goto_0

    .line 385
    :cond_20
    const-string/jumbo v5, "quartEaseOut"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 386
    new-instance v2, Landroid/view/animation/interpolator/QuartEaseOut;

    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/interpolator/QuartEaseOut;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto/16 :goto_0

    .line 387
    :cond_21
    const-string/jumbo v5, "quartEaseInOut"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 388
    new-instance v2, Landroid/view/animation/interpolator/QuartEaseInOut;

    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/interpolator/QuartEaseInOut;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto/16 :goto_0

    .line 389
    :cond_22
    const-string/jumbo v5, "quintEaseIn"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 390
    new-instance v2, Landroid/view/animation/interpolator/QuintEaseIn;

    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/interpolator/QuintEaseIn;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto/16 :goto_0

    .line 391
    :cond_23
    const-string/jumbo v5, "quintEaseOut"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 392
    new-instance v2, Landroid/view/animation/interpolator/QuintEaseOut;

    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/interpolator/QuintEaseOut;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto/16 :goto_0

    .line 393
    :cond_24
    const-string/jumbo v5, "quintEaseInOut"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 394
    new-instance v2, Landroid/view/animation/interpolator/QuintEaseInOut;

    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/interpolator/QuintEaseInOut;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto/16 :goto_0

    .line 395
    :cond_25
    const-string/jumbo v5, "sineEaseIn"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 396
    new-instance v2, Landroid/view/animation/interpolator/SineEaseIn;

    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/interpolator/SineEaseIn;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto/16 :goto_0

    .line 397
    :cond_26
    const-string/jumbo v5, "sineEaseOut"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 398
    new-instance v2, Landroid/view/animation/interpolator/SineEaseOut;

    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/interpolator/SineEaseOut;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto/16 :goto_0

    .line 399
    :cond_27
    const-string/jumbo v5, "sineEaseInOut"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 400
    new-instance v2, Landroid/view/animation/interpolator/SineEaseInOut;

    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/interpolator/SineEaseInOut;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto/16 :goto_0

    .line 401
    :cond_28
    const-string/jumbo v5, "quintOut50"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 402
    new-instance v2, Landroid/view/animation/interpolator/QuintOut50;

    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/interpolator/QuintOut50;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto/16 :goto_0

    .line 403
    :cond_29
    const-string/jumbo v5, "quintOut80"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 404
    new-instance v2, Landroid/view/animation/interpolator/QuintOut80;

    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/interpolator/QuintOut80;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto/16 :goto_0

    .line 405
    :cond_2a
    const-string/jumbo v5, "sineIn33"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 406
    new-instance v2, Landroid/view/animation/interpolator/SineIn33;

    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/interpolator/SineIn33;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto/16 :goto_0

    .line 407
    :cond_2b
    const-string/jumbo v5, "sineInOut33"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 408
    new-instance v2, Landroid/view/animation/interpolator/SineInOut33;

    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/interpolator/SineInOut33;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto/16 :goto_0

    .line 409
    :cond_2c
    const-string/jumbo v5, "sineInOut50"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 410
    new-instance v2, Landroid/view/animation/interpolator/SineInOut50;

    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/interpolator/SineInOut50;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto/16 :goto_0

    .line 411
    :cond_2d
    const-string/jumbo v5, "sineInOut60"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 412
    new-instance v2, Landroid/view/animation/interpolator/SineInOut60;

    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/interpolator/SineInOut60;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto/16 :goto_0

    .line 413
    :cond_2e
    const-string/jumbo v5, "sineInOut70"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 414
    new-instance v2, Landroid/view/animation/interpolator/SineInOut70;

    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/interpolator/SineInOut70;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto/16 :goto_0

    .line 415
    :cond_2f
    const-string/jumbo v5, "sineInOut80"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 416
    new-instance v2, Landroid/view/animation/interpolator/SineInOut80;

    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/interpolator/SineInOut80;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto/16 :goto_0

    .line 417
    :cond_30
    const-string/jumbo v5, "sineInOut90"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 418
    new-instance v2, Landroid/view/animation/interpolator/SineInOut90;

    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/interpolator/SineInOut90;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto/16 :goto_0

    .line 419
    :cond_31
    const-string/jumbo v5, "sineOut33"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 420
    new-instance v2, Landroid/view/animation/interpolator/SineOut33;

    .end local v2    # "interpolator":Landroid/view/animation/Interpolator;
    invoke-direct {v2, p0, v0}, Landroid/view/animation/interpolator/SineOut33;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/Interpolator;
    goto/16 :goto_0

    .line 422
    :cond_32
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown interpolator name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 427
    .end local v0    # "attrs":Landroid/util/AttributeSet;
    .end local v3    # "name":Ljava/lang/String;
    :cond_33
    return-object v2
.end method

.method private static createLayoutAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/LayoutAnimationController;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/view/animation/AnimationUtils;->createLayoutAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/view/animation/LayoutAnimationController;

    move-result-object v0

    return-object v0
.end method

.method private static createLayoutAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/view/animation/LayoutAnimationController;
    .locals 7
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    const/4 v0, 0x0

    .line 192
    .local v0, "controller":Landroid/view/animation/LayoutAnimationController;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 195
    .local v1, "depth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_4

    :cond_1
    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    .line 197
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 201
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, "name":Ljava/lang/String;
    const-string v4, "layoutAnimation"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 204
    new-instance v0, Landroid/view/animation/LayoutAnimationController;

    .end local v0    # "controller":Landroid/view/animation/LayoutAnimationController;
    invoke-direct {v0, p0, p2}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0    # "controller":Landroid/view/animation/LayoutAnimationController;
    goto :goto_0

    .line 205
    :cond_2
    const-string v4, "gridLayoutAnimation"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 206
    new-instance v0, Landroid/view/animation/GridLayoutAnimationController;

    .end local v0    # "controller":Landroid/view/animation/LayoutAnimationController;
    invoke-direct {v0, p0, p2}, Landroid/view/animation/GridLayoutAnimationController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0    # "controller":Landroid/view/animation/LayoutAnimationController;
    goto :goto_0

    .line 208
    :cond_3
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown layout animation name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 212
    .end local v2    # "name":Ljava/lang/String;
    :cond_4
    return-object v0
.end method

.method public static currentAnimationTimeMillis()J
    .locals 2

    .prologue
    .line 56
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 70
    const/4 v1, 0x0

    .line 72
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 73
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->createAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Animation;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 85
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    return-object v3

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 77
    .local v2, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 78
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    .end local v0    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    throw v3

    .line 79
    :catch_1
    move-exception v0

    .line 80
    .local v0, "ex":Ljava/io/IOException;
    :try_start_2
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 82
    .restart local v2    # "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 83
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public static loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 282
    const/4 v1, 0x0

    .line 284
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 285
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->createInterpolatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Interpolator;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 297
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    return-object v3

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 289
    .local v2, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 290
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    .end local v0    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    throw v3

    .line 291
    :catch_1
    move-exception v0

    .line 292
    .local v0, "ex":Ljava/io/IOException;
    :try_start_2
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 294
    .restart local v2    # "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 295
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public static loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 161
    const/4 v1, 0x0

    .line 163
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 164
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->createLayoutAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/LayoutAnimationController;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 176
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    return-object v3

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 168
    .local v2, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 169
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    .end local v0    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    throw v3

    .line 170
    :catch_1
    move-exception v0

    .line 171
    .local v0, "ex":Ljava/io/IOException;
    :try_start_2
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 173
    .restart local v2    # "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 174
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public static makeInAnimation(Landroid/content/Context;Z)Landroid/view/animation/Animation;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "fromLeft"    # Z

    .prologue
    .line 225
    if-eqz p1, :cond_0

    .line 226
    const v1, 0x10a0002

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 231
    .local v0, "a":Landroid/view/animation/Animation;
    :goto_0
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 232
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 233
    return-object v0

    .line 228
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_0
    const v1, 0x10a0089

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .restart local v0    # "a":Landroid/view/animation/Animation;
    goto :goto_0
.end method

.method public static makeInChildBottomAnimation(Landroid/content/Context;)Landroid/view/animation/Animation;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 267
    const v1, 0x10a0088

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 268
    .local v0, "a":Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 269
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 270
    return-object v0
.end method

.method public static makeOutAnimation(Landroid/content/Context;Z)Landroid/view/animation/Animation;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "toRight"    # Z

    .prologue
    .line 246
    if-eqz p1, :cond_0

    .line 247
    const v1, 0x10a0003

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 252
    .local v0, "a":Landroid/view/animation/Animation;
    :goto_0
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 253
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 254
    return-object v0

    .line 249
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_0
    const v1, 0x10a008c

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .restart local v0    # "a":Landroid/view/animation/Animation;
    goto :goto_0
.end method
