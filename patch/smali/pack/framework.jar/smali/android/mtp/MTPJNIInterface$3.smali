.class Landroid/mtp/MTPJNIInterface$3;
.super Ljava/lang/Object;
.source "MTPJNIInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/mtp/MTPJNIInterface;->sendkiesmessage(IILjava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/mtp/MTPJNIInterface;

.field final synthetic val$logLevel:I

.field final synthetic val$logPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/mtp/MTPJNIInterface;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1573
    iput-object p1, p0, Landroid/mtp/MTPJNIInterface$3;->this$0:Landroid/mtp/MTPJNIInterface;

    iput-object p2, p0, Landroid/mtp/MTPJNIInterface$3;->val$logPath:Ljava/lang/String;

    iput p3, p0, Landroid/mtp/MTPJNIInterface$3;->val$logLevel:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1575
    const-string v2, "MTPJNIInterface"

    const-string v3, "run dumpstate"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Landroid/mtp/MTPJNIInterface$3;->val$logPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1577
    .local v0, "dataLogDirectory":Ljava/io/File;
    iget-object v2, p0, Landroid/mtp/MTPJNIInterface$3;->this$0:Landroid/mtp/MTPJNIInterface;

    # invokes: Landroid/mtp/MTPJNIInterface;->getTimeToString()Ljava/lang/String;
    invoke-static {v2}, Landroid/mtp/MTPJNIInterface;->access$100(Landroid/mtp/MTPJNIInterface;)Ljava/lang/String;

    move-result-object v1

    .line 1579
    .local v1, "sDate":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1580
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1582
    :cond_0
    iget v2, p0, Landroid/mtp/MTPJNIInterface$3;->val$logLevel:I

    if-nez v2, :cond_2

    .line 1583
    iget-object v2, p0, Landroid/mtp/MTPJNIInterface$3;->this$0:Landroid/mtp/MTPJNIInterface;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bugreport > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/mtp/MTPJNIInterface$3;->val$logPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/.bugReport_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".log"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Landroid/mtp/MTPJNIInterface;->DoShellCmd(Ljava/lang/String;)I
    invoke-static {v2, v3}, Landroid/mtp/MTPJNIInterface;->access$200(Landroid/mtp/MTPJNIInterface;Ljava/lang/String;)I

    .line 1584
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/mtp/MTPJNIInterface$3;->val$logPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/.bugReport_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".log"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/mtp/MTPJNIInterface$3;->val$logPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/bugReport_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".log"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1585
    iget-object v2, p0, Landroid/mtp/MTPJNIInterface$3;->this$0:Landroid/mtp/MTPJNIInterface;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/mtp/MTPJNIInterface$3;->val$logPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/bugReport_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".log"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/mtp/MTPJNIInterface;->sendObjectPropChanged(Ljava/lang/String;)V

    .line 1589
    :cond_1
    :goto_0
    return-void

    .line 1586
    :cond_2
    iget v2, p0, Landroid/mtp/MTPJNIInterface$3;->val$logLevel:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1587
    iget-object v2, p0, Landroid/mtp/MTPJNIInterface$3;->this$0:Landroid/mtp/MTPJNIInterface;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "logcat -v threadtime -d -f "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/mtp/MTPJNIInterface$3;->val$logPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/logcat_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".log"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Landroid/mtp/MTPJNIInterface;->DoShellCmd(Ljava/lang/String;)I
    invoke-static {v2, v3}, Landroid/mtp/MTPJNIInterface;->access$200(Landroid/mtp/MTPJNIInterface;Ljava/lang/String;)I

    goto :goto_0
.end method
