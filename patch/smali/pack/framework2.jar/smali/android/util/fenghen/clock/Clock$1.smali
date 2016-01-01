.class Landroid/util/fenghen/clock/Clock$1;
.super Landroid/content/BroadcastReceiver;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/fenghen/clock/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/util/fenghen/clock/Clock;


# direct methods
.method constructor <init>(Landroid/util/fenghen/clock/Clock;)V
    .locals 0

    iput-object p1, p0, Landroid/util/fenghen/clock/Clock$1;->this$0:Landroid/util/fenghen/clock/Clock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "time-zone"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/util/fenghen/clock/Clock$1;->this$0:Landroid/util/fenghen/clock/Clock;

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, v2, Landroid/util/fenghen/clock/Clock;->mCalendar:Ljava/util/Calendar;

    iget-object v2, p0, Landroid/util/fenghen/clock/Clock$1;->this$0:Landroid/util/fenghen/clock/Clock;

    iget-object v2, v2, Landroid/util/fenghen/clock/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/util/fenghen/clock/Clock$1;->this$0:Landroid/util/fenghen/clock/Clock;

    iget-object v2, v2, Landroid/util/fenghen/clock/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Landroid/util/fenghen/clock/Clock$1;->this$0:Landroid/util/fenghen/clock/Clock;

    iget-object v3, v3, Landroid/util/fenghen/clock/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/util/fenghen/clock/Clock$1;->this$0:Landroid/util/fenghen/clock/Clock;

    invoke-virtual {v2}, Landroid/util/fenghen/clock/Clock;->updateClock()V

    return-void

    :cond_1
    const-string v2, "com.legendk.systemui.UPDATE_CLOCK_VISIBILITY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/util/fenghen/clock/Clock$1;->this$0:Landroid/util/fenghen/clock/Clock;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "isVisible"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/fenghen/clock/Clock;->setClockVisible(Z)V

    goto :goto_0
.end method
