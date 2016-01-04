.class public Landroid/util/secutil/SmartParser;
.super Ljava/lang/Object;
.source "SmartParser.java"


# static fields
.field static final DEBUG:Z = true

.field static final TAG:Ljava/lang/String; = "SmartParser"


# instance fields
.field private dayOfToday:I

.field mContext:Landroid/content/Context;

.field private mDegree:I

.field private mParsingData:Landroid/util/secutil/SmartParsingData;

.field private mWorkStr:Ljava/lang/String;

.field private mWorkStrForMillis:Ljava/lang/String;

.field private monthOfToday:I

.field private today:Ljava/util/Calendar;

.field private yearOfToday:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p2, p0, Landroid/util/secutil/SmartParser;->mContext:Landroid/content/Context;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/secutil/SmartParser;->mDegree:I

    .line 36
    invoke-virtual {p0, p1}, Landroid/util/secutil/SmartParser;->init(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Landroid/util/secutil/SmartParser;->doParsing()V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;I)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "degree"    # I

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p2, p0, Landroid/util/secutil/SmartParser;->mContext:Landroid/content/Context;

    .line 42
    iput p3, p0, Landroid/util/secutil/SmartParser;->mDegree:I

    .line 44
    invoke-virtual {p0, p1}, Landroid/util/secutil/SmartParser;->init(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Landroid/util/secutil/SmartParser;->doParsing()V

    .line 46
    return-void
.end method

.method private convertDateToMillis(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .param p1, "dateStr"    # Ljava/lang/String;
    .param p2, "patternType"    # I

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 302
    new-instance v4, Landroid/text/format/Time;

    const-string v5, "UTC"

    invoke-direct {v4, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 313
    .local v4, "t":Landroid/text/format/Time;
    if-ne p2, v6, :cond_2

    .line 314
    :try_start_0
    const-string v5, "[[[:space:]]\\-\\/\\.\ufffd\ufffd\ufffd\ufffd\ufffd]+"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 315
    .local v3, "separated":[Ljava/lang/String;
    array-length v5, v3

    if-ne v5, v8, :cond_0

    .line 316
    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/text/format/Time;->year:I

    .line 317
    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Landroid/text/format/Time;->month:I

    .line 318
    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/text/format/Time;->monthDay:I

    .line 347
    :goto_0
    const/4 v5, 0x0

    iput v5, v4, Landroid/text/format/Time;->hour:I

    .line 348
    const/4 v5, 0x0

    iput v5, v4, Landroid/text/format/Time;->minute:I

    .line 349
    const/4 v5, 0x0

    iput v5, v4, Landroid/text/format/Time;->second:I

    .line 351
    const-string v5, "SmartParser"

    const-string v6, "convertDateToMillis() completed successfully"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const-string v5, "SmartParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "year:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/text/format/Time;->year:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", month:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/text/format/Time;->month:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", day:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", hour:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/text/format/Time;->hour:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", minute:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/text/format/Time;->minute:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", second:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/text/format/Time;->second:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    .line 355
    .local v1, "result":J
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 359
    .end local v1    # "result":J
    .end local v3    # "separated":[Ljava/lang/String;
    :goto_1
    return-object v5

    .line 319
    .restart local v3    # "separated":[Ljava/lang/String;
    :cond_0
    array-length v5, v3

    if-ne v5, v7, :cond_1

    .line 320
    iget v5, p0, Landroid/util/secutil/SmartParser;->yearOfToday:I

    iput v5, v4, Landroid/text/format/Time;->year:I

    .line 321
    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Landroid/text/format/Time;->month:I

    .line 322
    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/text/format/Time;->monthDay:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 357
    .end local v3    # "separated":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "SmartParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail convertDateToMillis() by exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const-string v5, ""

    goto :goto_1

    .line 324
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "separated":[Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v5, "SmartParser"

    const-string v6, "fail convertDateToMillis() by invalid length. (type:1)"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const-string v5, ""

    goto :goto_1

    .line 328
    .end local v3    # "separated":[Ljava/lang/String;
    :cond_2
    if-ne p2, v7, :cond_5

    .line 329
    const-string v5, "[[[:space:]]\\,\\.]+"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 330
    .restart local v3    # "separated":[Ljava/lang/String;
    array-length v5, v3

    if-ne v5, v8, :cond_3

    .line 331
    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/text/format/Time;->year:I

    .line 332
    sget-object v5, Landroid/util/secutil/SmartPatterns;->globalDateMap:Ljava/util/Map;

    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Landroid/text/format/Time;->month:I

    .line 333
    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-virtual {p0, v5}, Landroid/util/secutil/SmartParser;->convertDayToInteger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/text/format/Time;->monthDay:I

    goto/16 :goto_0

    .line 334
    :cond_3
    array-length v5, v3

    if-ne v5, v7, :cond_4

    .line 335
    iget v5, p0, Landroid/util/secutil/SmartParser;->yearOfToday:I

    iput v5, v4, Landroid/text/format/Time;->year:I

    .line 336
    sget-object v5, Landroid/util/secutil/SmartPatterns;->globalDateMap:Ljava/util/Map;

    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Landroid/text/format/Time;->month:I

    .line 337
    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-virtual {p0, v5}, Landroid/util/secutil/SmartParser;->convertDayToInteger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/text/format/Time;->monthDay:I

    goto/16 :goto_0

    .line 339
    :cond_4
    const-string v5, "SmartParser"

    const-string v6, "fail convertDateToMillis() by invalid length. (type:2)"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const-string v5, ""

    goto/16 :goto_1

    .line 343
    .end local v3    # "separated":[Ljava/lang/String;
    :cond_5
    const-string v5, "SmartParser"

    const-string v6, "fail convertDateToMillis() by invalid patternType : "

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const-string v5, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private convertTimeToMillis(Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "timeStr"    # Ljava/lang/String;

    .prologue
    .line 378
    new-instance v12, Landroid/text/format/Time;

    const-string v13, "UTC"

    invoke-direct {v12, v13}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 381
    .local v12, "t":Landroid/text/format/Time;
    :try_start_0
    const-string v13, "((Time|time|\ufffd\u00f0\ufffd)[[[:space:]]\\:\\;\\-]+)"

    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 382
    .local v8, "prefixPattern":Ljava/util/regex/Pattern;
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 383
    .local v7, "prefixMatcher":Ljava/util/regex/Matcher;
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 385
    const/4 v13, 0x2

    new-array v11, v13, [Ljava/lang/String;

    .line 386
    .local v11, "separated":[Ljava/lang/String;
    const-string/jumbo v1, "\ufffd\ufffd\ufffd\ufffd"

    .line 387
    .local v1, "amOfEachCountry":Ljava/lang/String;
    const-string/jumbo v6, "\ufffd\ufffd\ufffd\ufffd"

    .line 389
    .local v6, "pmOfEachCountry":Ljava/lang/String;
    const-string v13, "[0-9]+"

    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 390
    .local v5, "p":Ljava/util/regex/Pattern;
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 392
    .local v4, "m":Ljava/util/regex/Matcher;
    const/4 v3, 0x0

    .line 393
    .local v3, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 394
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v3

    .line 395
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 398
    :cond_0
    move-object/from16 v0, p0

    iget v13, v0, Landroid/util/secutil/SmartParser;->yearOfToday:I

    iput v13, v12, Landroid/text/format/Time;->year:I

    .line 399
    move-object/from16 v0, p0

    iget v13, v0, Landroid/util/secutil/SmartParser;->monthOfToday:I

    iput v13, v12, Landroid/text/format/Time;->month:I

    .line 400
    move-object/from16 v0, p0

    iget v13, v0, Landroid/util/secutil/SmartParser;->dayOfToday:I

    iput v13, v12, Landroid/text/format/Time;->monthDay:I

    .line 402
    const/4 v13, 0x0

    aget-object v13, v11, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v12, Landroid/text/format/Time;->hour:I

    .line 404
    const-string/jumbo v13, "pm"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    const-string v13, "PM"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 405
    :cond_1
    iget v13, v12, Landroid/text/format/Time;->hour:I

    const/16 v14, 0xc

    if-eq v13, v14, :cond_2

    .line 406
    iget v13, v12, Landroid/text/format/Time;->hour:I

    add-int/lit8 v13, v13, 0xc

    iput v13, v12, Landroid/text/format/Time;->hour:I

    .line 416
    :cond_2
    :goto_1
    const/4 v13, 0x1

    aget-object v13, v11, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v12, Landroid/text/format/Time;->minute:I

    .line 417
    const/4 v13, 0x0

    iput v13, v12, Landroid/text/format/Time;->second:I

    .line 419
    const-string v13, "SmartParser"

    const-string v14, "convertTimeToMillis() completed successfully"

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const-string v13, "SmartParser"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "year:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v12, Landroid/text/format/Time;->year:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", month:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v12, Landroid/text/format/Time;->month:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", day:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v12, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", hour:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v12, Landroid/text/format/Time;->hour:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", minute:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v12, Landroid/text/format/Time;->minute:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", second:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v12, Landroid/text/format/Time;->second:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    .line 423
    .local v9, "result":J
    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    .line 427
    .end local v1    # "amOfEachCountry":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "m":Ljava/util/regex/Matcher;
    .end local v5    # "p":Ljava/util/regex/Pattern;
    .end local v6    # "pmOfEachCountry":Ljava/lang/String;
    .end local v7    # "prefixMatcher":Ljava/util/regex/Matcher;
    .end local v8    # "prefixPattern":Ljava/util/regex/Pattern;
    .end local v9    # "result":J
    .end local v11    # "separated":[Ljava/lang/String;
    :goto_2
    return-object v13

    .line 408
    .restart local v1    # "amOfEachCountry":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "m":Ljava/util/regex/Matcher;
    .restart local v5    # "p":Ljava/util/regex/Pattern;
    .restart local v6    # "pmOfEachCountry":Ljava/lang/String;
    .restart local v7    # "prefixMatcher":Ljava/util/regex/Matcher;
    .restart local v8    # "prefixPattern":Ljava/util/regex/Pattern;
    .restart local v11    # "separated":[Ljava/lang/String;
    :cond_3
    const-string v13, "am"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    const-string v13, "AM"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 409
    :cond_4
    iget v13, v12, Landroid/text/format/Time;->hour:I

    const/16 v14, 0xc

    if-ne v13, v14, :cond_2

    .line 410
    const/4 v13, 0x0

    iput v13, v12, Landroid/text/format/Time;->hour:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 425
    .end local v1    # "amOfEachCountry":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "m":Ljava/util/regex/Matcher;
    .end local v5    # "p":Ljava/util/regex/Pattern;
    .end local v6    # "pmOfEachCountry":Ljava/lang/String;
    .end local v7    # "prefixMatcher":Ljava/util/regex/Matcher;
    .end local v8    # "prefixPattern":Ljava/util/regex/Pattern;
    .end local v11    # "separated":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 426
    .local v2, "e":Ljava/lang/Exception;
    const-string v13, "SmartParser"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "fail convertTimeToMillis() by exception : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const-string v13, ""

    goto :goto_2

    .line 413
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "amOfEachCountry":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "m":Ljava/util/regex/Matcher;
    .restart local v5    # "p":Ljava/util/regex/Pattern;
    .restart local v6    # "pmOfEachCountry":Ljava/lang/String;
    .restart local v7    # "prefixMatcher":Ljava/util/regex/Matcher;
    .restart local v8    # "prefixPattern":Ljava/util/regex/Pattern;
    .restart local v11    # "separated":[Ljava/lang/String;
    :cond_5
    const/4 v13, 0x0

    :try_start_1
    aget-object v13, v11, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v12, Landroid/text/format/Time;->hour:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private parsingDateInfo()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 131
    const-string v9, "(((19|20)(([02468][048])|([13579][26]))[\\-|\\/|\\.]0?2[\\-|\\/|\\.]29)|((((20[0-9][0-9])|(19[0-9][0-9]))[\\-|\\/|\\.])?(((0?[13578]|10|12)[\\-|\\/|\\.]31)|((0?[1,3-9]|1[0-2])[\\-|\\/|\\.](29|30))|((0?[1-9]|1[0-2])[\\-|\\/|\\.](1[0-9]|2[0-8]|0?[1-9])))[[:space:]]))"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 132
    .local v5, "p1":Ljava/util/regex/Pattern;
    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 133
    .local v1, "m1":Ljava/util/regex/Matcher;
    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    .line 135
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 136
    invoke-virtual {v1, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Landroid/util/secutil/SmartParser;->removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 137
    .local v4, "matchString":Ljava/lang/String;
    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    invoke-virtual {v9, v4, v13}, Landroid/util/secutil/SmartParsingData;->setInfo(Ljava/lang/String;I)V

    .line 139
    const-string v9, "SmartParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "add date(pattern type1): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 143
    .end local v4    # "matchString":Ljava/lang/String;
    :cond_0
    const-string v9, "(((Jan|January|Mar|March|May|Jul|July|Aug|August|Oct|October|Dec|December)(\\.[[:space:]]?|[[:space:]])((([1-2][0-9]|3[01])(th)?)|0?1(st)?|0?2(nd)?|0?3(rd)?|0?[4-9](th)?)((\\,[[:space:]]?|\\.[[:space:]]?|[[:space:]]?)((20[0-9][0-9])|(19[0-9][0-9]))?)?[[:space:]])|((Apr|April|Jun|June|Sep|September|Nov|November)(\\.[[:space:]]?|[[:space:]])((([1-2][0-9]|3[01])(th)?)|0?1(st)?|0?2(nd)?|0?3(rd)?|0?[4-9](th)?)((\\,[[:space:]]?|\\.[[:space:]]?|[[:space:]]?)((20[0-9][0-9])|(19[0-9][0-9]))?)?[[:space:]])|((Feb|February)(\\.[[:space:]]?|[[:space:]])((([1-2][0-9]|3[01])(th)?)|0?1(st)?|0?2(nd)?|0?3(rd)?|0?[4-9](th)?)((\\,[[:space:]]?|\\.[[:space:]]?|[[:space:]]?)((20[0-9][0-9])|(19[0-9][0-9]))?)?[[:space:]]))"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 144
    .local v6, "p2":Ljava/util/regex/Pattern;
    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 145
    .local v2, "m2":Ljava/util/regex/Matcher;
    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    .line 147
    :goto_1
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 148
    invoke-virtual {v2, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Landroid/util/secutil/SmartParser;->removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 149
    .restart local v4    # "matchString":Ljava/lang/String;
    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    invoke-virtual {v9, v4, v13}, Landroid/util/secutil/SmartParsingData;->setInfo(Ljava/lang/String;I)V

    .line 151
    const-string v9, "SmartParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "add date(pattern type2): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 155
    .end local v4    # "matchString":Ljava/lang/String;
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/util/secutil/SmartPatterns;->getCountryDateString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .local v8, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_2

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    const/16 v10, 0x7c

    if-ne v9, v10, :cond_2

    .line 157
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "countryDateString":Ljava/lang/String;
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 161
    .local v7, "p3":Ljava/util/regex/Pattern;
    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 162
    .local v3, "m3":Ljava/util/regex/Matcher;
    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    .line 164
    :goto_2
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 165
    invoke-virtual {v3, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Landroid/util/secutil/SmartParser;->removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 166
    .restart local v4    # "matchString":Ljava/lang/String;
    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    invoke-virtual {v9, v4, v13}, Landroid/util/secutil/SmartParsingData;->setInfo(Ljava/lang/String;I)V

    .line 168
    const-string v9, "SmartParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "add date(pattern type3, country): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 171
    .end local v0    # "countryDateString":Ljava/lang/String;
    .end local v3    # "m3":Ljava/util/regex/Matcher;
    .end local v4    # "matchString":Ljava/lang/String;
    .end local v7    # "p3":Ljava/util/regex/Pattern;
    :cond_2
    return-void
.end method

.method private parsingDateMillisInfo()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x6

    const/4 v12, 0x0

    .line 74
    const-string v9, "((((19|20)(([02468][048])|([13579][26]))[\\-|\\/|\\.]0?2[\\-|\\/|\\.]29)|((((20[0-9][0-9])|(19[0-9][0-9]))[\\-|\\/|\\.])?(((0?[13578]|10|12)[\\-|\\/|\\.]31)|((0?[1,3-9]|1[0-2])[\\-|\\/|\\.](29|30))|((0?[1-9]|1[0-2])[\\-|\\/|\\.](1[0-9]|2[0-8]|0?[1-9])))[[:space:]])))"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 76
    .local v5, "p1":Ljava/util/regex/Pattern;
    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mWorkStrForMillis:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 77
    .local v1, "m1":Ljava/util/regex/Matcher;
    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mWorkStrForMillis:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/util/secutil/SmartParser;->mWorkStrForMillis:Ljava/lang/String;

    .line 79
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 80
    invoke-virtual {v1, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Landroid/util/secutil/SmartParser;->removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, "matchString":Ljava/lang/String;
    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    invoke-direct {p0, v4, v14}, Landroid/util/secutil/SmartParser;->convertDateToMillis(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v13}, Landroid/util/secutil/SmartParsingData;->setInfo(Ljava/lang/String;I)V

    .line 82
    const-string v9, "SmartParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "add date for millis(type1): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 86
    .end local v4    # "matchString":Ljava/lang/String;
    :cond_0
    const-string v9, "((((Jan|January|Mar|March|May|Jul|July|Aug|August|Oct|October|Dec|December)(\\.[[:space:]]?|[[:space:]])((([1-2][0-9]|3[01])(th)?)|0?1(st)?|0?2(nd)?|0?3(rd)?|0?[4-9](th)?)((\\,[[:space:]]?|\\.[[:space:]]?|[[:space:]]?)((20[0-9][0-9])|(19[0-9][0-9]))?)?[[:space:]])|((Apr|April|Jun|June|Sep|September|Nov|November)(\\.[[:space:]]?|[[:space:]])((([1-2][0-9]|3[01])(th)?)|0?1(st)?|0?2(nd)?|0?3(rd)?|0?[4-9](th)?)((\\,[[:space:]]?|\\.[[:space:]]?|[[:space:]]?)((20[0-9][0-9])|(19[0-9][0-9]))?)?[[:space:]])|((Feb|February)(\\.[[:space:]]?|[[:space:]])((([1-2][0-9]|3[01])(th)?)|0?1(st)?|0?2(nd)?|0?3(rd)?|0?[4-9](th)?)((\\,[[:space:]]?|\\.[[:space:]]?|[[:space:]]?)((20[0-9][0-9])|(19[0-9][0-9]))?)?[[:space:]])))"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 88
    .local v6, "p2":Ljava/util/regex/Pattern;
    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mWorkStrForMillis:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 89
    .local v2, "m2":Ljava/util/regex/Matcher;
    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mWorkStrForMillis:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/util/secutil/SmartParser;->mWorkStrForMillis:Ljava/lang/String;

    .line 91
    :goto_1
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 92
    invoke-virtual {v2, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Landroid/util/secutil/SmartParser;->removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 93
    .restart local v4    # "matchString":Ljava/lang/String;
    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    const/4 v10, 0x2

    invoke-direct {p0, v4, v10}, Landroid/util/secutil/SmartParser;->convertDateToMillis(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v13}, Landroid/util/secutil/SmartParsingData;->setInfo(Ljava/lang/String;I)V

    .line 94
    const-string v9, "SmartParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "add date for millis(type2): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 98
    .end local v4    # "matchString":Ljava/lang/String;
    :cond_1
    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/util/secutil/SmartPatterns;->getCountryDateString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "countryDateString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x7c

    if-ne v9, v10, :cond_2

    .line 100
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .local v8, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 105
    .local v7, "p3":Ljava/util/regex/Pattern;
    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mWorkStrForMillis:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 106
    .local v3, "m3":Ljava/util/regex/Matcher;
    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mWorkStrForMillis:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/util/secutil/SmartParser;->mWorkStrForMillis:Ljava/lang/String;

    .line 108
    :goto_2
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 109
    invoke-virtual {v3, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Landroid/util/secutil/SmartParser;->removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 110
    .restart local v4    # "matchString":Ljava/lang/String;
    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    invoke-direct {p0, v4, v14}, Landroid/util/secutil/SmartParser;->convertDateToMillis(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v13}, Landroid/util/secutil/SmartParsingData;->setInfo(Ljava/lang/String;I)V

    .line 111
    const-string v9, "SmartParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "add date for millis(type3, country): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 114
    .end local v3    # "m3":Ljava/util/regex/Matcher;
    .end local v4    # "matchString":Ljava/lang/String;
    .end local v7    # "p3":Ljava/util/regex/Pattern;
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    return-void
.end method

.method private parsingEmailInfo()V
    .locals 7

    .prologue
    .line 214
    iget v4, p0, Landroid/util/secutil/SmartParser;->mDegree:I

    if-ltz v4, :cond_1

    .line 215
    sget-object v3, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    .line 219
    .local v3, "p":Ljava/util/regex/Pattern;
    :goto_0
    iget-object v4, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 221
    .local v1, "m":Ljava/util/regex/Matcher;
    iget v4, p0, Landroid/util/secutil/SmartParser;->mDegree:I

    if-ltz v4, :cond_0

    .line 222
    iget-object v4, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    .line 224
    :cond_0
    sget-object v0, Landroid/util/secutil/SmartPatterns;->HYPHEN:Ljava/util/regex/Pattern;

    .line 226
    .local v0, "hyphen":Ljava/util/regex/Pattern;
    :goto_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 227
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/util/secutil/SmartParser;->removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, "matchString":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 229
    iget-object v4, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    const/4 v5, 0x4

    invoke-virtual {v4, v2, v5}, Landroid/util/secutil/SmartParsingData;->setInfo(Ljava/lang/String;I)V

    .line 230
    const-string v4, "SmartParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add email address : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 217
    .end local v0    # "hyphen":Ljava/util/regex/Pattern;
    .end local v1    # "m":Ljava/util/regex/Matcher;
    .end local v2    # "matchString":Ljava/lang/String;
    .end local v3    # "p":Ljava/util/regex/Pattern;
    :cond_1
    sget-object v3, Landroid/util/secutil/SmartPatterns;->EMAIL_ADDRESS_WEAK:Ljava/util/regex/Pattern;

    .restart local v3    # "p":Ljava/util/regex/Pattern;
    goto :goto_0

    .line 232
    .restart local v0    # "hyphen":Ljava/util/regex/Pattern;
    .restart local v1    # "m":Ljava/util/regex/Matcher;
    :cond_2
    return-void
.end method

.method private parsingPhoneNumInfo()V
    .locals 7

    .prologue
    .line 188
    iget v4, p0, Landroid/util/secutil/SmartParser;->mDegree:I

    if-ltz v4, :cond_1

    .line 189
    sget-object v3, Landroid/util/secutil/SmartPatterns;->PHONE_NUMBER:Ljava/util/regex/Pattern;

    .line 193
    .local v3, "p":Ljava/util/regex/Pattern;
    :goto_0
    iget-object v4, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 194
    .local v1, "m":Ljava/util/regex/Matcher;
    iget-object v4, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    .line 196
    sget-object v0, Landroid/util/secutil/SmartPatterns;->HYPHEN:Ljava/util/regex/Pattern;

    .line 198
    .local v0, "hyphen":Ljava/util/regex/Pattern;
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 199
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/util/secutil/SmartParser;->removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "matchString":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x7

    if-lt v4, v5, :cond_0

    .line 204
    iget-object v4, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    const/4 v5, 0x3

    invoke-virtual {v4, v2, v5}, Landroid/util/secutil/SmartParsingData;->setInfo(Ljava/lang/String;I)V

    .line 205
    const-string v4, "SmartParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add tel number : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 191
    .end local v0    # "hyphen":Ljava/util/regex/Pattern;
    .end local v1    # "m":Ljava/util/regex/Matcher;
    .end local v2    # "matchString":Ljava/lang/String;
    .end local v3    # "p":Ljava/util/regex/Pattern;
    :cond_1
    sget-object v3, Landroid/util/secutil/SmartPatterns;->PHONE_NUMBER_WEAK:Ljava/util/regex/Pattern;

    .restart local v3    # "p":Ljava/util/regex/Pattern;
    goto :goto_0

    .line 209
    .restart local v0    # "hyphen":Ljava/util/regex/Pattern;
    .restart local v1    # "m":Ljava/util/regex/Matcher;
    :cond_2
    invoke-direct {p0}, Landroid/util/secutil/SmartParser;->refactoringPhoneNumber()V

    .line 210
    return-void
.end method

.method private parsingTimeInfo()V
    .locals 6

    .prologue
    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(((0[1-9]|1[1-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?(am|pm|AM|PM))|(([0-1][0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9]))"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/secutil/SmartParser;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/util/secutil/SmartPatterns;->getCountryTimeString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 175
    .local v2, "p":Ljava/util/regex/Pattern;
    iget-object v3, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 176
    .local v0, "m":Ljava/util/regex/Matcher;
    iget-object v3, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    .line 178
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 179
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/util/secutil/SmartParser;->removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "matchString":Ljava/lang/String;
    iget-object v3, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    const/4 v4, 0x2

    invoke-virtual {v3, v1, v4}, Landroid/util/secutil/SmartParsingData;->setInfo(Ljava/lang/String;I)V

    .line 182
    const-string v3, "SmartParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add time : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 184
    .end local v1    # "matchString":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private parsingTimeMillisInfo()V
    .locals 6

    .prologue
    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(((((0[1-9]|1[1-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?(am|pm|AM|PM))|(([0-1][0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9]))"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/secutil/SmartParser;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/util/secutil/SmartPatterns;->getCountryTimeString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "))"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 119
    .local v2, "p":Ljava/util/regex/Pattern;
    iget-object v3, p0, Landroid/util/secutil/SmartParser;->mWorkStrForMillis:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 120
    .local v0, "m":Ljava/util/regex/Matcher;
    iget-object v3, p0, Landroid/util/secutil/SmartParser;->mWorkStrForMillis:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/util/secutil/SmartParser;->mWorkStrForMillis:Ljava/lang/String;

    .line 122
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 123
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/util/secutil/SmartParser;->removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "matchString":Ljava/lang/String;
    iget-object v3, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    invoke-direct {p0, v1}, Landroid/util/secutil/SmartParser;->convertTimeToMillis(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x7

    invoke-virtual {v3, v4, v5}, Landroid/util/secutil/SmartParsingData;->setInfo(Ljava/lang/String;I)V

    .line 125
    const-string v3, "SmartParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add time for millis : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 127
    .end local v1    # "matchString":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private parsingURLInfo()V
    .locals 6

    .prologue
    .line 235
    sget-object v2, Landroid/util/Patterns;->WEB_URL_EX:Ljava/util/regex/Pattern;

    .line 236
    .local v2, "p":Ljava/util/regex/Pattern;
    iget-object v3, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 237
    .local v0, "m":Ljava/util/regex/Matcher;
    iget-object v3, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    .line 239
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 240
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/util/secutil/SmartParser;->removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, "matchString":Ljava/lang/String;
    iget-object v3, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    const/4 v4, 0x5

    invoke-virtual {v3, v1, v4}, Landroid/util/secutil/SmartParsingData;->setInfo(Ljava/lang/String;I)V

    .line 242
    const-string v3, "SmartParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add URL : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 244
    .end local v1    # "matchString":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private refactoringPhoneNumber()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 278
    iget-object v5, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    invoke-virtual {v5, v9}, Landroid/util/secutil/SmartParsingData;->getCount(I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 279
    iget-object v5, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    invoke-virtual {v5, v9}, Landroid/util/secutil/SmartParsingData;->getInfo(I)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 280
    .local v4, "str":Ljava/lang/String;
    const/4 v3, 0x0

    .line 282
    .local v3, "spaceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 283
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_0

    .line 284
    add-int/lit8 v3, v3, 0x1

    .line 282
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 288
    :cond_1
    if-lez v3, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    div-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x8

    if-le v5, v6, :cond_2

    .line 289
    sget-object v2, Landroid/util/secutil/SmartPatterns;->REFACTORING_PHONE_NUMBER:Ljava/util/regex/Pattern;

    .line 290
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 291
    .local v1, "m":Ljava/util/regex/Matcher;
    iget-object v5, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    invoke-virtual {v5, v8, v9}, Landroid/util/secutil/SmartParsingData;->deleteInfo(II)Z

    .line 293
    :goto_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 294
    iget-object v5, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v9}, Landroid/util/secutil/SmartParsingData;->setInfo(Ljava/lang/String;I)V

    .line 295
    const-string v5, "SmartParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add refactoring phone number : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 299
    .end local v0    # "i":I
    .end local v1    # "m":Ljava/util/regex/Matcher;
    .end local v2    # "p":Ljava/util/regex/Pattern;
    .end local v3    # "spaceCount":I
    .end local v4    # "str":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 251
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/util/secutil/SmartParser;->removeUnnecessary(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private removeUnnecessary(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "onlyStartEndCheck"    # Z

    .prologue
    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v2, ""

    .line 258
    .local v2, "result":Ljava/lang/String;
    const-string v4, "\n"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 259
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 262
    :cond_1
    const-string v4, "\n"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 263
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 266
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 268
    if-nez p2, :cond_4

    .line 269
    const-string v4, "[:space:]"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 270
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 274
    .end local v1    # "p":Ljava/util/regex/Pattern;
    .end local v2    # "result":Ljava/lang/String;
    .local v3, "result":Ljava/lang/String;
    :goto_0
    return-object v3

    .end local v3    # "result":Ljava/lang/String;
    .restart local v2    # "result":Ljava/lang/String;
    :cond_4
    move-object v3, v2

    .end local v2    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    invoke-virtual {v0}, Landroid/util/secutil/SmartParsingData;->clear()V

    .line 433
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    .line 434
    return-void
.end method

.method public convertDayToInteger(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "dayStr"    # Ljava/lang/String;

    .prologue
    .line 364
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 367
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "st"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "nd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "rd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "th"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 368
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 371
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 373
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local p1    # "dayStr":Ljava/lang/String;
    :cond_2
    return-object p1
.end method

.method public doParsing()V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/util/secutil/SmartParser;->parsingEmailInfo()V

    .line 62
    invoke-direct {p0}, Landroid/util/secutil/SmartParser;->parsingDateInfo()V

    .line 63
    invoke-direct {p0}, Landroid/util/secutil/SmartParser;->parsingTimeInfo()V

    .line 64
    invoke-direct {p0}, Landroid/util/secutil/SmartParser;->parsingPhoneNumInfo()V

    .line 65
    invoke-direct {p0}, Landroid/util/secutil/SmartParser;->parsingURLInfo()V

    .line 66
    invoke-direct {p0}, Landroid/util/secutil/SmartParser;->parsingDateMillisInfo()V

    .line 67
    invoke-direct {p0}, Landroid/util/secutil/SmartParser;->parsingTimeMillisInfo()V

    .line 69
    iget-object v0, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    iget-object v1, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/secutil/SmartParsingData;->setRemainData(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public getTotalData()Landroid/util/secutil/SmartParsingData;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    return-object v0
.end method

.method public init(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 49
    new-instance v0, Landroid/util/secutil/SmartParsingData;

    invoke-direct {v0}, Landroid/util/secutil/SmartParsingData;-><init>()V

    iput-object v0, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    .line 50
    iget-object v0, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    invoke-virtual {v0, p1}, Landroid/util/secutil/SmartParsingData;->setOriginalData(Ljava/lang/String;)V

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/util/secutil/SmartParser;->mWorkStrForMillis:Ljava/lang/String;

    .line 54
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/util/secutil/SmartParser;->today:Ljava/util/Calendar;

    .line 55
    iget-object v0, p0, Landroid/util/secutil/SmartParser;->today:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Landroid/util/secutil/SmartParser;->yearOfToday:I

    .line 56
    iget-object v0, p0, Landroid/util/secutil/SmartParser;->today:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Landroid/util/secutil/SmartParser;->monthOfToday:I

    .line 57
    iget-object v0, p0, Landroid/util/secutil/SmartParser;->today:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Landroid/util/secutil/SmartParser;->dayOfToday:I

    .line 58
    return-void
.end method
