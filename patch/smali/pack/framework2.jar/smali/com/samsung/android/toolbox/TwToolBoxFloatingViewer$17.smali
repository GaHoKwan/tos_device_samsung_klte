.class Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$17;
.super Ljava/lang/Object;
.source "TwToolBoxFloatingViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;


# direct methods
.method constructor <init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0

    .prologue
    .line 1076
    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$17;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$17;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    # invokes: Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playAnimationEnter()V
    invoke-static {v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->access$4100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    .line 1079
    return-void
.end method
