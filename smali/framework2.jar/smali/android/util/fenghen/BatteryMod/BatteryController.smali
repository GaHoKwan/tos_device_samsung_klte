.class public Landroid/util/fenghen/BatteryMod/BatteryController;
.super Landroid/content/BroadcastReceiver;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/fenghen/BatteryMod/BatteryController$BatteryStateChangeCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StatusBar.BatteryController"


# instance fields
.field public Receiver:Landroid/content/Intent;

.field public anim:I

.field clicks:I

.field ctx:Landroid/content/Context;

.field lastClick:J

.field private mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/fenghen/BatteryMod/BatteryController$BatteryStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field res:Landroid/content/res/Resources;

.field public val:Ljava/lang/String;

.field public vis:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/util/fenghen/BatteryMod/BatteryController;->mIconViews:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/util/fenghen/BatteryMod/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/util/fenghen/BatteryMod/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    const/4 v2, -0x1

    iput v2, p0, Landroid/util/fenghen/BatteryMod/BatteryController;->anim:I

    const/16 v2, 0x8

    iput v2, p0, Landroid/util/fenghen/BatteryMod/BatteryController;->vis:I

    const-string v2, "Default"

    iput-object v2, p0, Landroid/util/fenghen/BatteryMod/BatteryController;->val:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/util/fenghen/BatteryMod/BatteryController;->lastClick:J

    iput-object p1, p0, Landroid/util/fenghen/BatteryMod/BatteryController;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/util/fenghen/BatteryMod/DataController;

    invoke-direct {v2, p1, p0}, Landroid/util/fenghen/BatteryMod/DataController;-><init>(Landroid/content/Context;Landroid/util/fenghen/BatteryMod/BatteryController;)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Landroid/util/fenghen/BatteryMod/BatteryController;->Receiver:Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Landroid/util/fenghen/BatteryMod/BatteryController;->mContext:Landroid/content/Context;

    const-string v3, "com.fenghen.battery"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Landroid/util/fenghen/BatteryMod/BatteryController;->ctx:Landroid/content/Context;

    iget-object v2, p0, Landroid/util/fenghen/BatteryMod/BatteryController;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Landroid/util/fenghen/BatteryMod/BatteryController;->res:Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "OGMod"

    const-string v3, "com.fenghen.battery not found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private CheckValue(I)I
    .locals 3

    const/4 v0, 0x0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "stat_sys_battery_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/util/fenghen/BatteryMod/BatteryController;->val:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/fenghen/BatteryMod/BatteryController;->getImgID(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    :cond_1
    if-nez v0, :cond_2

    const/16 v1, 0x64

    if-le p1, v1, :cond_0

    :cond_2
    return p1
.end method

.method static synthetic access$0(Landroid/util/fenghen/BatteryMod/BatteryController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/util/fenghen/BatteryMod/BatteryController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private setChargeImage(Landroid/widget/ImageView;I)V
    .locals 12

    const/16 v11, 0x3e8

    const/4 v10, 0x0

    iget v7, p0, Landroid/util/fenghen/BatteryMod/BatteryController;->anim:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    iget-object v7, p0, Landroid/util/fenghen/BatteryMod/BatteryController;->res:Landroid/content/res/Resources;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "stat_sys_battery_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Landroid/util/fenghen/BatteryMod/BatteryController;->val:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_charge_anim"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/util/fenghen/BatteryMod/BatteryController;->getImgID(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v7, p0, Landroid/util/fenghen/BatteryMod/BatteryController;->anim:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    invoke-direct {p0, p2}, Landroid/util/fenghen/BatteryMod/BatteryController;->CheckValue(I)I

    move-result p2

    iget-object v7, p0, Landroid/util/fenghen/BatteryMod/BatteryController;->res:Landroid/content/res/Resources;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "stat_sys_battery_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Landroid/util/fenghen/BatteryMod/BatteryController;->val:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/util/fenghen/BatteryMod/BatteryController;->getImgID(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    const/16 v7, 0x7d0

    invoke-virtual {v0, v2, v7}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const/16 v4, 0x28

    const/4 v6, 0x0

    :goto_1
    const/16 v7, 0x64

    if-le v6, v7, :cond_2

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v10}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v7, p0, Landroid/util/fenghen/BatteryMod/BatteryController;->res:Landroid/content/res/Resources;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "stat_sys_battery_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Landroid/util/fenghen/BatteryMod/BatteryController;->val:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_charge_anim"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/util/fenghen/BatteryMod/BatteryController;->getImgID(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catch_0
    move-exception v5

    const/16 v4, 0x50

    goto :goto_2

    :cond_3
    iget v7, p0, Landroid/util/fenghen/BatteryMod/BatteryController;->anim:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    iget-object v7, p0, Landroid/util/fenghen/BatteryMod/BatteryController;->res:Landroid/content/res/Resources;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "stat_sys_battery_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Landroid/util/fenghen/BatteryMod/BatteryController;->val:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/util/fenghen/BatteryMod/BatteryController;->getImgID(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v7, p0, Landroid/util/fenghen/BatteryMod/BatteryController;->res:Landroid/content/res/Resources;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "stat_sys_battery_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Landroid/util/fenghen/BatteryMod/BatteryController;->val:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_charge_anim"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/util/fenghen/BatteryMod/BatteryController;->getImgID(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    invoke-virtual {v0, v2, v11}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v0, v3, v11}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v10}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_0
.end method

.method private setImage(Landroid/widget/ImageView;I)V
    .locals 4

    invoke-direct {p0, p2}, Landroid/util/fenghen/BatteryMod/BatteryController;->CheckValue(I)I

    move-result p2

    iget-object v1, p0, Landroid/util/fenghen/BatteryMod/BatteryController;->res:Landroid/content/res/Resources;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "stat_sys_battery_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/util/fenghen/BatteryMod/BatteryController;->val:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/util/fenghen/BatteryMod/BatteryController;->getImgID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public DoWork(Landroid/content/Intent;)V
    .locals 14

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v9, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "level"

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string/jumbo v9, "plugged"

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_1

    const/4 v7, 0x1

    :goto_0
    if-eqz v7, :cond_2

    const/4 v5, 0x1

    :goto_1
    iget-object v9, p0, Landroid/util/fenghen/BatteryMod/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_2
    if-lt v4, v0, :cond_3

    iget-object v9, p0, Landroid/util/fenghen/BatteryMod/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_3
    if-lt v4, v0, :cond_6

    iget-object v9, p0, Landroid/util/fenghen/BatteryMod/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_7

    :cond_0
    return-void

    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    iget-object v9, p0, Landroid/util/fenghen/BatteryMod/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    if-nez v5, :cond_4

    invoke-direct {p0, v8, v6}, Landroid/util/fenghen/BatteryMod/BatteryController;->setImage(Landroid/widget/ImageView;I)V

    :goto_5
    iget-object v9, p0, Landroid/util/fenghen/BatteryMod/BatteryController;->mContext:Landroid/content/Context;

    const-string v10, "accessibility_battery_level"

    const-string/jumbo v11, "string"

    invoke-virtual {p0, v10, v11}, Landroid/util/fenghen/BatteryMod/BatteryController;->getResID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v9, 0x1

    if-ne v5, v9, :cond_5

    invoke-direct {p0, v8, v6}, Landroid/util/fenghen/BatteryMod/BatteryController;->setChargeImage(Landroid/widget/ImageView;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v3

    const-string v9, "OGMod"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "DoWork Error- "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Landroid/util/fenghen/BatteryMod/BatteryController;->val:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Landroid/util/fenghen/BatteryMod/BatteryController;->anim:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Landroid/util/fenghen/BatteryMod/BatteryController;->vis:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_6
    invoke-virtual {v3}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v9

    array-length v9, v9

    if-ge v4, v9, :cond_0

    const-string v9, "OGMod"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "DoWork Error1 - "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v11

    aget-object v11, v11, v4

    invoke-virtual {v11}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "OGMod"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "DoWork Error2 - "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v11

    aget-object v11, v11, v4

    invoke-virtual {v11}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_5
    :try_start_1
    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto/16 :goto_5

    :cond_6
    iget-object v9, p0, Landroid/util/fenghen/BatteryMod/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget v9, p0, Landroid/util/fenghen/BatteryMod/BatteryController;->vis:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v9, p0, Landroid/util/fenghen/BatteryMod/BatteryController;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "status_bar_settings_battery_meter_format"

    const-string/jumbo v11, "string"

    invoke-virtual {p0, v10, v11}, Landroid/util/fenghen/BatteryMod/BatteryController;->getResID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/fenghen/BatteryMod/BatteryController$BatteryStateChangeCallback;

    invoke-interface {v2, v6, v7}, Landroid/util/fenghen/BatteryMod/BatteryController$BatteryStateChangeCallback;->onBatteryLevelChanged(IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method

.method public addIconView(Landroid/widget/ImageView;)V
    .locals 1

    iget-object v0, p0, Landroid/util/fenghen/BatteryMod/BatteryController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/util/fenghen/BatteryMod/BatteryController;->Receiver:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/util/fenghen/BatteryMod/BatteryController;->DoWork(Landroid/content/Intent;)V

    new-instance v0, Landroid/util/fenghen/BatteryMod/BatteryController$1;

    invoke-direct {v0, p0}, Landroid/util/fenghen/BatteryMod/BatteryController$1;-><init>(Landroid/util/fenghen/BatteryMod/BatteryController;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public addLabelView(Landroid/widget/TextView;)V
    .locals 1

    iget-object v0, p0, Landroid/util/fenghen/BatteryMod/BatteryController;->mLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/util/fenghen/BatteryMod/BatteryController;->Receiver:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/util/fenghen/BatteryMod/BatteryController;->DoWork(Landroid/content/Intent;)V

    return-void
.end method

.method public addStateChangedCallback(Landroid/util/fenghen/BatteryMod/BatteryController$BatteryStateChangeCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/util/fenghen/BatteryMod/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getImgID(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Landroid/util/fenghen/BatteryMod/BatteryController;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    iget-object v2, p0, Landroid/util/fenghen/BatteryMod/BatteryController;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getResID(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Landroid/util/fenghen/BatteryMod/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Landroid/util/fenghen/BatteryMod/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iput-object p2, p0, Landroid/util/fenghen/BatteryMod/BatteryController;->Receiver:Landroid/content/Intent;

    invoke-virtual {p0, p2}, Landroid/util/fenghen/BatteryMod/BatteryController;->DoWork(Landroid/content/Intent;)V

    return-void
.end method
