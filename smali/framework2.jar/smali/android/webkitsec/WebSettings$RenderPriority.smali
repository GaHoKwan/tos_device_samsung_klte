.class public final enum Landroid/webkitsec/WebSettings$RenderPriority;
.super Ljava/lang/Enum;
.source "WebSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RenderPriority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/webkitsec/WebSettings$RenderPriority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/webkitsec/WebSettings$RenderPriority;

.field public static final enum HIGH:Landroid/webkitsec/WebSettings$RenderPriority;

.field public static final enum LOW:Landroid/webkitsec/WebSettings$RenderPriority;

.field public static final enum NORMAL:Landroid/webkitsec/WebSettings$RenderPriority;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 169
    new-instance v0, Landroid/webkitsec/WebSettings$RenderPriority;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Landroid/webkitsec/WebSettings$RenderPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/webkitsec/WebSettings$RenderPriority;->NORMAL:Landroid/webkitsec/WebSettings$RenderPriority;

    .line 170
    new-instance v0, Landroid/webkitsec/WebSettings$RenderPriority;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v3}, Landroid/webkitsec/WebSettings$RenderPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/webkitsec/WebSettings$RenderPriority;->HIGH:Landroid/webkitsec/WebSettings$RenderPriority;

    .line 171
    new-instance v0, Landroid/webkitsec/WebSettings$RenderPriority;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v4}, Landroid/webkitsec/WebSettings$RenderPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/webkitsec/WebSettings$RenderPriority;->LOW:Landroid/webkitsec/WebSettings$RenderPriority;

    .line 168
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/webkitsec/WebSettings$RenderPriority;

    sget-object v1, Landroid/webkitsec/WebSettings$RenderPriority;->NORMAL:Landroid/webkitsec/WebSettings$RenderPriority;

    aput-object v1, v0, v2

    sget-object v1, Landroid/webkitsec/WebSettings$RenderPriority;->HIGH:Landroid/webkitsec/WebSettings$RenderPriority;

    aput-object v1, v0, v3

    sget-object v1, Landroid/webkitsec/WebSettings$RenderPriority;->LOW:Landroid/webkitsec/WebSettings$RenderPriority;

    aput-object v1, v0, v4

    sput-object v0, Landroid/webkitsec/WebSettings$RenderPriority;->$VALUES:[Landroid/webkitsec/WebSettings$RenderPriority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 168
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/webkitsec/WebSettings$RenderPriority;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 168
    const-class v0, Landroid/webkitsec/WebSettings$RenderPriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/webkitsec/WebSettings$RenderPriority;

    return-object v0
.end method

.method public static values()[Landroid/webkitsec/WebSettings$RenderPriority;
    .locals 1

    .prologue
    .line 168
    sget-object v0, Landroid/webkitsec/WebSettings$RenderPriority;->$VALUES:[Landroid/webkitsec/WebSettings$RenderPriority;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/webkitsec/WebSettings$RenderPriority;

    return-object v0
.end method
