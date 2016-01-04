.class abstract Lcom/android/server/ssrm/settings/LevelsModelReader$TagAction;
.super Ljava/lang/Object;
.source "LevelsModelReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/settings/LevelsModelReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "TagAction"
.end annotation


# instance fields
.field private final mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/ssrm/settings/LevelsModelReader;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/settings/LevelsModelReader;Ljava/lang/String;)V
    .locals 0
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$TagAction;->this$0:Lcom/android/server/ssrm/settings/LevelsModelReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    iput-object p2, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$TagAction;->mTag:Ljava/lang/String;

    .line 290
    return-void
.end method


# virtual methods
.method doAction(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 293
    iget-object v4, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$TagAction;->mTag:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 294
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Tag is null."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 297
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/settings/LevelsModelReader$TagAction;->handleStartTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 299
    const/4 v2, 0x0

    .line 302
    .local v2, "isActionCompleted":Z
    :cond_1
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 303
    .local v1, "eventType":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 304
    .local v3, "tag":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 328
    :goto_0
    if-eqz v2, :cond_1

    .line 337
    .end local v1    # "eventType":I
    .end local v3    # "tag":Ljava/lang/String;
    :goto_1
    return-void

    .line 309
    .restart local v1    # "eventType":I
    .restart local v3    # "tag":Ljava/lang/String;
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$TagAction;->this$0:Lcom/android/server/ssrm/settings/LevelsModelReader;

    # invokes: Lcom/android/server/ssrm/settings/LevelsModelReader;->enterTag(Ljava/lang/String;)V
    invoke-static {v4, v3}, Lcom/android/server/ssrm/settings/LevelsModelReader;->access$100(Lcom/android/server/ssrm/settings/LevelsModelReader;Ljava/lang/String;)V

    .line 310
    invoke-virtual {p0, v3, p1}, Lcom/android/server/ssrm/settings/LevelsModelReader$TagAction;->handleStartNestedTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 332
    .end local v1    # "eventType":I
    .end local v3    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_1

    .line 316
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1    # "eventType":I
    .restart local v3    # "tag":Ljava/lang/String;
    :pswitch_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$TagAction;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 317
    invoke-virtual {p0}, Lcom/android/server/ssrm/settings/LevelsModelReader$TagAction;->handleEndTag()V

    .line 318
    const/4 v2, 0x1

    .line 322
    :goto_2
    iget-object v4, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$TagAction;->this$0:Lcom/android/server/ssrm/settings/LevelsModelReader;

    # invokes: Lcom/android/server/ssrm/settings/LevelsModelReader;->leaveTag(Ljava/lang/String;)V
    invoke-static {v4, v3}, Lcom/android/server/ssrm/settings/LevelsModelReader;->access$200(Lcom/android/server/ssrm/settings/LevelsModelReader;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 334
    .end local v1    # "eventType":I
    .end local v3    # "tag":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 335
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 320
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "eventType":I
    .restart local v3    # "tag":Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-virtual {p0, v3, p1}, Lcom/android/server/ssrm/settings/LevelsModelReader$TagAction;->handleEndNestedTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 304
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method handleEndNestedTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 348
    return-void
.end method

.method handleEndTag()V
    .locals 0

    .prologue
    .line 342
    return-void
.end method

.method handleStartNestedTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 345
    return-void
.end method

.method abstract handleStartTag(Lorg/xmlpull/v1/XmlPullParser;)V
.end method
