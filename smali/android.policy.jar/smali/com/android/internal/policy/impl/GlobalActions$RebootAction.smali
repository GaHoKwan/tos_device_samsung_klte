.class Lcom/android/internal/policy/impl/GlobalActions$RebootAction;
.super Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RebootAction"
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1387
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$RebootAction;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    .line 1388
    const v0, 0x5020008

    const v1, 0x509002c

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;-><init>(II)V

    .line 1384
    const-string v0, "now"

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$RebootAction;->action:Ljava/lang/String;

    .line 1391
    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions$RebootAction;->mContext:Landroid/content/Context;

    .line 1392
    return-void
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/GlobalActions$RebootAction;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions$RebootAction;

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$RebootAction;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/GlobalActions$RebootAction;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions$RebootAction;

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$RebootAction;->action:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/internal/policy/impl/GlobalActions$RebootAction;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/GlobalActions$RebootAction;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1383
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$RebootAction;->action:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public onPress()V
    .locals 5

    .prologue
    .line 1407
    const-string v2, "now"

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$RebootAction;->action:Ljava/lang/String;

    .line 1408
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$RebootAction;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1410
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1411
    const v2, 0x5090003

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1413
    const/high16 v2, 0x5050000

    const/4 v3, 0x0

    new-instance v4, Lcom/android/internal/policy/impl/GlobalActions$RebootAction$1;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/GlobalActions$RebootAction$1;-><init>(Lcom/android/internal/policy/impl/GlobalActions$RebootAction;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1420
    const v2, 0x104000a

    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$RebootAction$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlobalActions$RebootAction$2;-><init>(Lcom/android/internal/policy/impl/GlobalActions$RebootAction;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1427
    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/internal/policy/impl/GlobalActions$RebootAction$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/GlobalActions$RebootAction$3;-><init>(Lcom/android/internal/policy/impl/GlobalActions$RebootAction;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1433
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1434
    .local v1, "dlg":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 1435
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1436
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 1399
    const/4 v0, 0x1

    return v0
.end method

.method public showConditional()Z
    .locals 1

    .prologue
    .line 1403
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 1395
    const/4 v0, 0x1

    return v0
.end method
