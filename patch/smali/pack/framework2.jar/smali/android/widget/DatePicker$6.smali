.class Landroid/widget/DatePicker$6;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DatePicker;


# direct methods
.method constructor <init>(Landroid/widget/DatePicker;)V
    .locals 0

    .prologue
    .line 1269
    iput-object p1, p0, Landroid/widget/DatePicker$6;->this$0:Landroid/widget/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1271
    const/16 v0, 0x270f

    if-ne p2, v0, :cond_0

    .line 1272
    iget-object v0, p0, Landroid/widget/DatePicker$6;->this$0:Landroid/widget/DatePicker;

    const-string v1, "EditorAction 9999 arrived"

    # invokes: Landroid/widget/DatePicker;->twLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/widget/DatePicker;->access$2000(Landroid/widget/DatePicker;Ljava/lang/String;)V

    .line 1273
    iget-object v0, p0, Landroid/widget/DatePicker$6;->this$0:Landroid/widget/DatePicker;

    const/4 v1, 0x1

    # setter for: Landroid/widget/DatePicker;->isMonthJan:Z
    invoke-static {v0, v1}, Landroid/widget/DatePicker;->access$2102(Landroid/widget/DatePicker;Z)Z

    .line 1275
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
