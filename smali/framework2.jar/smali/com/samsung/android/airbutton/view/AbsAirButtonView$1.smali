.class Lcom/samsung/android/airbutton/view/AbsAirButtonView$1;
.super Ljava/lang/Object;
.source "AbsAirButtonView.java"

# interfaces
.implements Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/airbutton/view/AbsAirButtonView;-><init>(Landroid/content/Context;Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;Lcom/samsung/android/airbutton/Attributes;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/airbutton/view/AbsAirButtonView;


# direct methods
.method constructor <init>(Lcom/samsung/android/airbutton/view/AbsAirButtonView;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView$1;->this$0:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSideButtonClicked(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView$1;->this$0:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    invoke-virtual {v0}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->onFinishing()V

    .line 101
    return-void
.end method
