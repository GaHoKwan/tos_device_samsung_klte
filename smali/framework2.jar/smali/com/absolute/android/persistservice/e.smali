.class final Lcom/absolute/android/persistservice/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/absolute/android/persistservice/ABTPersistenceService;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/absolute/android/persistence/IABTDownloadReceiver;

.field private h:I

.field private i:Z


# direct methods
.method constructor <init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTDownloadReceiver;IZ)V
    .locals 0

    .prologue
    .line 3186
    iput-object p1, p0, Lcom/absolute/android/persistservice/e;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3187
    iput-object p2, p0, Lcom/absolute/android/persistservice/e;->b:Ljava/lang/String;

    .line 3188
    iput p3, p0, Lcom/absolute/android/persistservice/e;->c:I

    .line 3189
    iput-object p4, p0, Lcom/absolute/android/persistservice/e;->d:Ljava/lang/String;

    .line 3190
    iput-object p5, p0, Lcom/absolute/android/persistservice/e;->e:Ljava/lang/String;

    .line 3191
    iput-object p6, p0, Lcom/absolute/android/persistservice/e;->f:Ljava/lang/String;

    .line 3192
    iput-object p7, p0, Lcom/absolute/android/persistservice/e;->g:Lcom/absolute/android/persistence/IABTDownloadReceiver;

    .line 3193
    iput p8, p0, Lcom/absolute/android/persistservice/e;->h:I

    .line 3194
    iput-boolean p9, p0, Lcom/absolute/android/persistservice/e;->i:Z

    .line 3195
    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 3149
    iget-object v0, p0, Lcom/absolute/android/persistservice/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/absolute/android/persistservice/e;)I
    .locals 1

    .prologue
    .line 3149
    iget v0, p0, Lcom/absolute/android/persistservice/e;->c:I

    return v0
.end method

.method static synthetic c(Lcom/absolute/android/persistservice/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 3149
    iget-object v0, p0, Lcom/absolute/android/persistservice/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/absolute/android/persistservice/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 3149
    iget-object v0, p0, Lcom/absolute/android/persistservice/e;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/absolute/android/persistservice/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 3149
    iget-object v0, p0, Lcom/absolute/android/persistservice/e;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/absolute/android/persistservice/e;)Lcom/absolute/android/persistence/IABTDownloadReceiver;
    .locals 1

    .prologue
    .line 3149
    iget-object v0, p0, Lcom/absolute/android/persistservice/e;->g:Lcom/absolute/android/persistence/IABTDownloadReceiver;

    return-object v0
.end method

.method static synthetic g(Lcom/absolute/android/persistservice/e;)I
    .locals 1

    .prologue
    .line 3149
    iget v0, p0, Lcom/absolute/android/persistservice/e;->h:I

    return v0
.end method

.method static synthetic h(Lcom/absolute/android/persistservice/e;)Z
    .locals 1

    .prologue
    .line 3149
    iget-boolean v0, p0, Lcom/absolute/android/persistservice/e;->i:Z

    return v0
.end method
