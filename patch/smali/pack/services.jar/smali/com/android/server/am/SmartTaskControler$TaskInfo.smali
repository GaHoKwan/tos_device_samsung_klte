.class Lcom/android/server/am/SmartTaskControler$TaskInfo;
.super Ljava/lang/Object;
.source "SmartTaskControler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SmartTaskControler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskInfo"
.end annotation


# instance fields
.field numActivities:I

.field numRunning:I

.field task:Lcom/android/server/am/TaskRecord;

.field final synthetic this$0:Lcom/android/server/am/SmartTaskControler;


# direct methods
.method constructor <init>(Lcom/android/server/am/SmartTaskControler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/SmartTaskControler$TaskInfo;->this$0:Lcom/android/server/am/SmartTaskControler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
