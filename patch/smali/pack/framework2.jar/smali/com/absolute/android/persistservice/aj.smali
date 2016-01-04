.class public final Lcom/absolute/android/persistservice/aj;
.super Lcom/absolute/android/persistence/IABTPersistenceLog$Stub;
.source "SourceFile"


# instance fields
.field private a:Lcom/absolute/android/persistservice/aa;


# direct methods
.method constructor <init>(Lcom/absolute/android/persistservice/aa;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/absolute/android/persistence/IABTPersistenceLog$Stub;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/absolute/android/persistservice/aj;->a:Lcom/absolute/android/persistservice/aa;

    .line 28
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/absolute/android/persistservice/aj;->a:Lcom/absolute/android/persistservice/aa;

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/aa;->a()V

    .line 56
    return-void
.end method

.method public final getIterator(I)Lcom/absolute/android/persistence/IABTLogIterator;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/absolute/android/persistservice/aj;->a:Lcom/absolute/android/persistservice/aa;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/aa;->a(I)Lcom/absolute/android/persistence/IABTLogIterator;

    move-result-object v0

    return-object v0
.end method

.method public final getMaxLogSizeKB()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/absolute/android/persistservice/aj;->a:Lcom/absolute/android/persistservice/aa;

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/aa;->c()I

    move-result v0

    return v0
.end method

.method public final getNumberOfLogs()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/absolute/android/persistservice/aj;->a:Lcom/absolute/android/persistservice/aa;

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/aa;->b()I

    move-result v0

    return v0
.end method

.method public final logMessage(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/absolute/android/persistservice/aj;->a:Lcom/absolute/android/persistservice/aa;

    invoke-virtual {v0, p1, p2, p3}, Lcom/absolute/android/persistservice/aa;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public final setSize(II)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/absolute/android/persistservice/aj;->a:Lcom/absolute/android/persistservice/aa;

    invoke-virtual {v0, p1, p2}, Lcom/absolute/android/persistservice/aa;->a(II)V

    .line 49
    return-void
.end method
