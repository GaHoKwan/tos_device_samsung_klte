.class public Landroid/util/fenghen/Lunar/FenghenLunar;
.super Ljava/lang/Object;
.source "FenghenLunar.java"


# static fields
.field public static final Animals:[Ljava/lang/String;

.field public static final Deqi:[Ljava/lang/String;

.field public static final Tianan:[Ljava/lang/String;

.field private static final lFtv:[Ljava/lang/String;

.field private static final lunarInfo:[I

.field public static final lunarString1:[Ljava/lang/String;

.field public static final lunarString2:[Ljava/lang/String;

.field private static final sFtv:[Ljava/lang/String;

.field private static final sReg:Ljava/util/regex/Pattern;

.field public static final solarTerm:[Ljava/lang/String;

.field private static final solarTermInfo:[I

.field private static utcCal:Ljava/util/GregorianCalendar;

.field private static wFtv:[Ljava/lang/String;

.field private static final wReg:Ljava/util/regex/Pattern;


# instance fields
.field private cyclicalDay:I

.field private cyclicalMonth:I

.field private cyclicalYear:I

.field private description:Ljava/lang/String;

.field private isFounded:Z

.field private isHoliday:Z

.field private isLFestival:Z

.field private isLeap:Z

.field private isLeapYear:Z

.field private isSFestival:Z

.field private lFestivalName:Ljava/lang/String;

.field private lunarDay:I

.field private lunarMonth:I

.field private lunarYear:I

.field private maxDayInMonth:I

.field private sFestivalName:Ljava/lang/String;

.field private solar:Ljava/util/Calendar;

.field private solarDay:I

.field private solarMonth:I

.field private solarYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xc9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/util/fenghen/Lunar/FenghenLunar;->lunarInfo:[I

    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/util/fenghen/Lunar/FenghenLunar;->solarTermInfo:[I

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "\u7532"

    aput-object v1, v0, v3

    const-string/jumbo v1, "\u4e59"

    aput-object v1, v0, v4

    const-string/jumbo v1, "\u4e19"

    aput-object v1, v0, v5

    const-string/jumbo v1, "\u4e01"

    aput-object v1, v0, v6

    const-string/jumbo v1, "\u620a"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "\u5df1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "\u5e9a"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "\u8f9b"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "\u58ec"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "\u7678"

    aput-object v2, v0, v1

    sput-object v0, Landroid/util/fenghen/Lunar/FenghenLunar;->Tianan:[Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "\u5b50"

    aput-object v1, v0, v3

    const-string/jumbo v1, "\u4e11"

    aput-object v1, v0, v4

    const-string/jumbo v1, "\u5bc5"

    aput-object v1, v0, v5

    const-string/jumbo v1, "\u536f"

    aput-object v1, v0, v6

    const-string/jumbo v1, "\u8fb0"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "\u5df3"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "\u5348"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "\u672a"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "\u7533"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "\u9149"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "\u620c"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "\u4ea5"

    aput-object v2, v0, v1

    sput-object v0, Landroid/util/fenghen/Lunar/FenghenLunar;->Deqi:[Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "\u9f20"

    aput-object v1, v0, v3

    const-string/jumbo v1, "\u725b"

    aput-object v1, v0, v4

    const-string/jumbo v1, "\u864e"

    aput-object v1, v0, v5

    const-string/jumbo v1, "\u5154"

    aput-object v1, v0, v6

    const-string/jumbo v1, "\u9f99"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "\u86c7"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "\u9a6c"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "\u7f8a"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "\u7334"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "\u9e21"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "\u72d7"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "\u732a"

    aput-object v2, v0, v1

    sput-object v0, Landroid/util/fenghen/Lunar/FenghenLunar;->Animals:[Ljava/lang/String;

    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "\u5c0f\u5bd2"

    aput-object v1, v0, v3

    const-string/jumbo v1, "\u5927\u5bd2"

    aput-object v1, v0, v4

    const-string/jumbo v1, "\u7acb\u6625"

    aput-object v1, v0, v5

    const-string/jumbo v1, "\u96e8\u6c34"

    aput-object v1, v0, v6

    const-string/jumbo v1, "\u60ca\u86f0"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "\u6625\u5206"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "\u6e05\u660e"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "\u8c37\u96e8"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "\u7acb\u590f"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "\u5c0f\u6ee1"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "\u8292\u79cd"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "\u590f\u81f3"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "\u5c0f\u6691"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "\u5927\u6691"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "\u7acb\u79cb"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "\u5904\u6691"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "\u767d\u9732"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "\u79cb\u5206"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "\u5bd2\u9732"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "\u971c\u964d"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "\u7acb\u51ac"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "\u5c0f\u96ea"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "\u5927\u96ea"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "\u51ac\u81f3"

    aput-object v2, v0, v1

    sput-object v0, Landroid/util/fenghen/Lunar/FenghenLunar;->solarTerm:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "\u96f6"

    aput-object v1, v0, v3

    const-string/jumbo v1, "\u4e00"

    aput-object v1, v0, v4

    const-string/jumbo v1, "\u4e8c"

    aput-object v1, v0, v5

    const-string/jumbo v1, "\u4e09"

    aput-object v1, v0, v6

    const-string/jumbo v1, "\u56db"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "\u4e94"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "\u516d"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "\u4e03"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "\u516b"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "\u4e5d"

    aput-object v2, v0, v1

    sput-object v0, Landroid/util/fenghen/Lunar/FenghenLunar;->lunarString1:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "\u521d"

    aput-object v1, v0, v3

    const-string/jumbo v1, "\u5341"

    aput-object v1, v0, v4

    const-string/jumbo v1, "\u5eff"

    aput-object v1, v0, v5

    const-string/jumbo v1, "\u5345"

    aput-object v1, v0, v6

    const-string/jumbo v1, "\u6b63"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "\u814a"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "\u51ac"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "\u95f0"

    aput-object v2, v0, v1

    sput-object v0, Landroid/util/fenghen/Lunar/FenghenLunar;->lunarString2:[Ljava/lang/String;

    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "0101*\u5143\u65e6"

    aput-object v1, v0, v3

    const-string v1, "0214 \u60c5\u4eba\u8282"

    aput-object v1, v0, v4

    const-string v1, "0308 \u5987\u5973\u8282"

    aput-object v1, v0, v5

    const-string v1, "0312 \u690d\u6811\u8282"

    aput-object v1, v0, v6

    const-string v1, "0315 \u6d88\u8d39\u8005\u6743\u76ca\u65e5"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "0401 \u611a\u4eba\u8282"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "0501*\u52b3\u52a8\u8282"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "0504 \u9752\u5e74\u8282"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "0509 \u90dd\u7ef4\u8282"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "0512 \u62a4\u58eb\u8282"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "0601 \u513f\u7ae5\u8282"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "0701 \u5efa\u515a\u8282 \u9999\u6e2f\u56de\u5f52\u7eaa\u5ff5"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "0801 \u5efa\u519b\u8282"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "0808 \u7236\u4eb2\u8282"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "0816 \u71d5\u8854\u6ce5\u8282"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "0909 \u6bdb\u6cfd\u4e1c\u901d\u4e16\u7eaa\u5ff5"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "0910 \u6559\u5e08\u8282"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "0928 \u5b54\u5b50\u8bde\u8fb0"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "1001*\u56fd\u5e86\u8282"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "1006 \u8001\u4eba\u8282"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "1024 \u8054\u5408\u56fd\u65e5"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "1111 \u5149\u68cd\u8282"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "1112 \u5b59\u4e2d\u5c71\u8bde\u8fb0\u7eaa\u5ff5"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "1220 \u6fb3\u95e8\u56de\u5f52\u7eaa\u5ff5"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "1225 \u5723\u8bde\u8282"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "1226 \u6bdb\u6cfd\u4e1c\u8bde\u8fb0\u7eaa\u5ff5"

    aput-object v2, v0, v1

    sput-object v0, Landroid/util/fenghen/Lunar/FenghenLunar;->sFtv:[Ljava/lang/String;

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "0101*\u6625\u8282\u3001\u5f25\u52d2\u4f5b\u8bde"

    aput-object v1, v0, v3

    const-string v1, "0106 \u5b9a\u5149\u4f5b\u8bde"

    aput-object v1, v0, v4

    const-string v1, "0115 \u5143\u5bb5\u8282"

    aput-object v1, v0, v5

    const-string v1, "0208 \u91ca\u8fe6\u725f\u5c3c\u4f5b\u51fa\u5bb6"

    aput-object v1, v0, v6

    const-string v1, "0215 \u91ca\u8fe6\u725f\u5c3c\u4f5b\u6d85\u69c3"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "0209 \u6d77\u7a7a\u4e0a\u5e08\u8bde"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "0219 \u89c2\u4e16\u97f3\u83e9\u8428\u8bde"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "0221 \u666e\u8d24\u83e9\u8428\u8bde"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "0316 \u51c6\u63d0\u83e9\u8428\u8bde"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "0404 \u6587\u6b8a\u83e9\u8428\u8bde"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "0408 \u91ca\u8fe6\u725f\u5c3c\u4f5b\u8bde"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "0415 \u4f5b\u5409\u7965\u65e5(\u536b\u585e\u8282)"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "0505 \u7aef\u5348\u8282"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "0513 \u4f3d\u84dd\u83e9\u8428\u8bde"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "0603 \u62a4\u6cd5\u97e6\u9a6e\u5c0a\u5929\u83e9\u8428\u8bde"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "0619 \u89c2\u4e16\u97f3\u83e9\u8428\u6210\u9053"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "0707 \u4e03\u5915\u60c5\u4eba\u8282"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "0713 \u5927\u52bf\u81f3\u83e9\u8428\u8bde"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "0715 \u4e2d\u5143\u8282"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "0724 \u9f99\u6811\u83e9\u8428\u8bde"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "0730 \u5730\u85cf\u83e9\u8428\u8bde"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "0815 \u4e2d\u79cb\u8282"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "0822 \u71c3\u706f\u4f5b\u8bde"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "0909 \u91cd\u9633\u8282"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "0919 \u89c2\u4e16\u97f3\u83e9\u8428\u51fa\u5bb6\u7eaa\u5ff5\u65e5"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "0930 \u836f\u5e08\u7409\u7483\u5149\u5982\u6765\u8bde"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "1005 \u8fbe\u6469\u7956\u5e08\u8bde"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "1107 \u963f\u5f25\u9640\u4f5b\u8bde"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "1208 \u91ca\u8fe6\u5982\u6765\u6210\u9053\u65e5 \u814a\u516b\u8282"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "1224 \u5c0f\u5e74"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "1229 \u534e\u4e25\u83e9\u8428\u8bde"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "0100*\u9664\u5915"

    aput-object v2, v0, v1

    sput-object v0, Landroid/util/fenghen/Lunar/FenghenLunar;->lFtv:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "0520 \u6bcd\u4eb2\u8282"

    aput-object v1, v0, v3

    const-string v1, "0716 \u5408\u4f5c\u8282"

    aput-object v1, v0, v4

    const-string v1, "0730 \u88ab\u5974\u5f79\u56fd\u5bb6\u5468"

    aput-object v1, v0, v5

    sput-object v0, Landroid/util/fenghen/Lunar/FenghenLunar;->wFtv:[Ljava/lang/String;

    const-string v0, "^(\\d{2})(\\d{2})([\\s\\*])(.+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/util/fenghen/Lunar/FenghenLunar;->sReg:Ljava/util/regex/Pattern;

    const-string v0, "^(\\d{2})(\\d)(\\d)([\\s\\*])(.+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/util/fenghen/Lunar/FenghenLunar;->wReg:Ljava/util/regex/Pattern;

    const/4 v0, 0x0

    sput-object v0, Landroid/util/fenghen/Lunar/FenghenLunar;->utcCal:Ljava/util/GregorianCalendar;

    return-void

    nop

    :array_0
    .array-data 4
        0x4bd8
        0x4ae0
        0xa570
        0x54d5
        0xd260
        0xd950
        0x5554
        0x56af
        0x9ad0
        0x55d2
        0x4ae0
        0xa5b6
        0xa4d0
        0xd250
        0xd295
        0xb54f
        0xd6a0
        0xada2
        0x95b0
        0x4977
        0x497f
        0xa4b0
        0xb4b5
        0x6a50
        0x6d40
        0xab54
        0x2b6f
        0x9570
        0x52f2
        0x4970
        0x6566
        0xd4a0
        0xea50
        0x6a95
        0x5adf
        0x2b60
        0x86e3
        0x92ef
        0xc8d7
        0xc95f
        0xd4a0
        0xd8a6
        0xb55f
        0x56a0
        0xa5b4
        0x25df
        0x92d0
        0xd2b2
        0xa950
        0xb557
        0x6ca0
        0xb550
        0x5355
        0x4daf
        0xa5b0
        0x4573
        0x52bf
        0xa9a8
        0xe950
        0x6aa0
        0xaea6
        0xab50
        0x4b60
        0xaae4
        0xa570
        0x5260
        0xf263
        0xd950
        0x5b57
        0x56a0
        0x96d0
        0x4dd5
        0x4ad0
        0xa4d0
        0xd4d4
        0xd250
        0xd558
        0xb540
        0xb6a0
        0x95a6
        0x95bf
        0x49b0
        0xa974
        0xa4b0
        0xb27a
        0x6a50
        0x6d40
        0xaf46
        0xab60
        0x9570
        0x4af5
        0x4970
        0x64b0
        0x74a3
        0xea50
        0x6b58
        0x5ac0
        0xab60
        0x96d5
        0x92e0
        0xc960
        0xd954
        0xd4a0
        0xda50
        0x7552
        0x56a0
        0xabb7
        0x25d0
        0x92d0
        0xcab5
        0xa950
        0xb4a0
        0xbaa4
        0xad50
        0x55d9
        0x4ba0
        0xa5b0
        0x5176
        0x52bf
        0xa930
        0x7954
        0x6aa0
        0xad50
        0x5b52
        0x4b60
        0xa6e6
        0xa4e0
        0xd260
        0xea65
        0xd530
        0x5aa0
        0x76a3
        0x96d0
        0x4afb
        0x4ad0
        0xa4d0
        0xd0b6
        0xd25f
        0xd520
        0xdd45
        0xb5a0
        0x56d0
        0x55b2
        0x49b0
        0xa577
        0xa4b0
        0xaa50
        0xb255
        0x6d2f
        0xada0
        0x4b63
        0x937f
        0x49f8
        0x4970
        0x64b0
        0x68a6
        0xea5f
        0x6b20
        0xa6c4
        0xaaef
        0x92e0
        0xd2e3
        0xc960
        0xd557
        0xd4a0
        0xda50
        0x5d55
        0x56a0
        0xa6d0
        0x55d4
        0x52d0
        0xa9b8
        0xa950
        0xb4a0
        0xb6a6
        0xad50
        0x55a0
        0xaba4
        0xa5b0
        0x52b0
        0xb273
        0x6930
        0x7337
        0x6aa0
        0xad50
        0x4b55
        0x4b6f
        0xa570
        0x54e4
        0xd260
        0xe968
        0xd520
        0xdaa0
        0x6aa6
        0x56df
        0x4ae0
        0xa9d4
        0xa4d0
        0xd150
        0xf252
        0xd520
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x52d8
        0xa5e3
        0xf95c
        0x14d59
        0x1a206
        0x1f763
        0x24d89
        0x2a45d
        0x2fbdf
        0x353d8
        0x3ac35
        0x404af
        0x45d25
        0x4b553
        0x50d19
        0x56446
        0x5bac6
        0x61087
        0x6658a
        0x6b9db
        0x70d90
        0x760cc
        0x7b3b6
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->isFounded:Z

    iput-boolean v1, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->isSFestival:Z

    iput-boolean v1, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->isLFestival:Z

    const-string v0, ""

    iput-object v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->sFestivalName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->lFestivalName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->description:Ljava/lang/String;

    iput-boolean v1, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->isHoliday:Z

    iput v1, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->cyclicalYear:I

    iput v1, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->cyclicalMonth:I

    iput v1, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->cyclicalDay:I

    const/16 v0, 0x1d

    iput v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->maxDayInMonth:I

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/util/fenghen/Lunar/FenghenLunar;->init(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->isFounded:Z

    iput-boolean v1, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->isSFestival:Z

    iput-boolean v1, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->isLFestival:Z

    const-string v0, ""

    iput-object v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->sFestivalName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->lFestivalName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->description:Ljava/lang/String;

    iput-boolean v1, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->isHoliday:Z

    iput v1, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->cyclicalYear:I

    iput v1, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->cyclicalMonth:I

    iput v1, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->cyclicalDay:I

    const/16 v0, 0x1d

    iput v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->maxDayInMonth:I

    invoke-direct {p0, p1, p2}, Landroid/util/fenghen/Lunar/FenghenLunar;->init(J)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->isFounded:Z

    iput-boolean v1, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->isSFestival:Z

    iput-boolean v1, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->isLFestival:Z

    const-string v0, ""

    iput-object v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->sFestivalName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->lFestivalName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->description:Ljava/lang/String;

    iput-boolean v1, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->isHoliday:Z

    iput v1, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->cyclicalYear:I

    iput v1, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->cyclicalMonth:I

    iput v1, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->cyclicalDay:I

    const/16 v0, 0x1d

    iput v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->maxDayInMonth:I

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/util/fenghen/Lunar/FenghenLunar;->init(J)V

    return-void
.end method

.method public static declared-synchronized UTC(IIIIII)J
    .locals 9

    const-class v7, Landroid/util/fenghen/Lunar/FenghenLunar;

    monitor-enter v7

    :try_start_0
    invoke-static {}, Landroid/util/fenghen/Lunar/FenghenLunar;->makeUTCCalendar()V

    sget-object v8, Landroid/util/fenghen/Lunar/FenghenLunar;->utcCal:Ljava/util/GregorianCalendar;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Landroid/util/fenghen/Lunar/FenghenLunar;->utcCal:Ljava/util/GregorianCalendar;

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->clear()V

    sget-object v0, Landroid/util/fenghen/Lunar/FenghenLunar;->utcCal:Ljava/util/GregorianCalendar;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    sget-object v0, Landroid/util/fenghen/Lunar/FenghenLunar;->utcCal:Ljava/util/GregorianCalendar;

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v0

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v7

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method private declared-synchronized findFestival()V
    .locals 13

    const/4 v12, 0x1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/util/fenghen/Lunar/FenghenLunar;->getSolarMonth()I

    move-result v6

    invoke-virtual {p0}, Landroid/util/fenghen/Lunar/FenghenLunar;->getSolarDay()I

    move-result v5

    invoke-virtual {p0}, Landroid/util/fenghen/Lunar/FenghenLunar;->getLunarMonth()I

    move-result v3

    invoke-virtual {p0}, Landroid/util/fenghen/Lunar/FenghenLunar;->getLunarDay()I

    move-result v2

    invoke-virtual {p0}, Landroid/util/fenghen/Lunar/FenghenLunar;->getSolarYear()I

    move-result v7

    const/4 v1, 0x0

    :goto_0
    sget-object v9, Landroid/util/fenghen/Lunar/FenghenLunar;->sFtv:[Ljava/lang/String;

    array-length v9, v9

    if-ge v1, v9, :cond_0

    sget-object v9, Landroid/util/fenghen/Lunar/FenghenLunar;->sReg:Ljava/util/regex/Pattern;

    sget-object v10, Landroid/util/fenghen/Lunar/FenghenLunar;->sFtv:[Ljava/lang/String;

    aget-object v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/util/fenghen/Lunar/FenghenLunar;->toInt(Ljava/lang/String;)I

    move-result v9

    if-ne v6, v9, :cond_3

    const/4 v9, 0x2

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/util/fenghen/Lunar/FenghenLunar;->toInt(Ljava/lang/String;)I

    move-result v9

    if-ne v5, v9, :cond_3

    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->isSFestival:Z

    const/4 v9, 0x4

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->sFestivalName:Ljava/lang/String;

    const-string v9, "*"

    const/4 v10, 0x3

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->isHoliday:Z

    :cond_0
    const/4 v1, 0x0

    :goto_1
    sget-object v9, Landroid/util/fenghen/Lunar/FenghenLunar;->lFtv:[Ljava/lang/String;

    array-length v9, v9

    if-ge v1, v9, :cond_1

    sget-object v9, Landroid/util/fenghen/Lunar/FenghenLunar;->sReg:Ljava/util/regex/Pattern;

    sget-object v10, Landroid/util/fenghen/Lunar/FenghenLunar;->lFtv:[Ljava/lang/String;

    aget-object v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/util/fenghen/Lunar/FenghenLunar;->toInt(Ljava/lang/String;)I

    move-result v9

    if-ne v3, v9, :cond_4

    const/4 v9, 0x2

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/util/fenghen/Lunar/FenghenLunar;->toInt(Ljava/lang/String;)I

    move-result v9

    if-ne v2, v9, :cond_4

    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->isLFestival:Z

    const/4 v9, 0x4

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->lFestivalName:Ljava/lang/String;

    const-string v9, "*"

    const/4 v10, 0x3

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->isHoliday:Z

    :cond_1
    const/4 v1, 0x0

    :goto_2
    sget-object v9, Landroid/util/fenghen/Lunar/FenghenLunar;->wFtv:[Ljava/lang/String;

    array-length v9, v9

    if-ge v1, v9, :cond_5

    sget-object v9, Landroid/util/fenghen/Lunar/FenghenLunar;->wReg:Ljava/util/regex/Pattern;

    sget-object v10, Landroid/util/fenghen/Lunar/FenghenLunar;->wFtv:[Ljava/lang/String;

    aget-object v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {p0}, Landroid/util/fenghen/Lunar/FenghenLunar;->getSolarMonth()I

    move-result v9

    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/util/fenghen/Lunar/FenghenLunar;->toInt(Ljava/lang/String;)I

    move-result v10

    if-ne v9, v10, :cond_2

    const/4 v9, 0x2

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/util/fenghen/Lunar/FenghenLunar;->toInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x3

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/util/fenghen/Lunar/FenghenLunar;->toInt(Ljava/lang/String;)I

    move-result v0

    iget-object v9, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->solar:Ljava/util/Calendar;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    if-ne v9, v8, :cond_2

    iget-object v9, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->solar:Ljava/util/Calendar;

    const/4 v10, 0x7

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    if-ne v9, v0, :cond_2

    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->isSFestival:Z

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->sFestivalName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x5

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->sFestivalName:Ljava/lang/String;

    const-string v9, "*"

    const/4 v10, 0x4

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->isHoliday:Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_5
    const/16 v9, 0x752

    if-le v7, v9, :cond_6

    const/16 v9, 0x775

    if-ge v7, v9, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\u5149\u7eea"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit16 v9, v7, -0x752

    if-ne v9, v12, :cond_a

    const-string/jumbo v9, "\u5143"

    :goto_3
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->description:Ljava/lang/String;

    :cond_6
    const/16 v9, 0x774

    if-le v7, v9, :cond_7

    const/16 v9, 0x778

    if-ge v7, v9, :cond_7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\u5ba3\u7edf"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit16 v9, v7, -0x774

    if-ne v9, v12, :cond_b

    const-string/jumbo v9, "\u5143"

    :goto_4
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->description:Ljava/lang/String;

    :cond_7
    const/16 v9, 0x777

    if-le v7, v9, :cond_8

    const/16 v9, 0x79e

    if-ge v7, v9, :cond_8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\u6c11\u56fd"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit16 v9, v7, -0x777

    if-ne v9, v12, :cond_c

    const-string/jumbo v9, "\u5143"

    :goto_5
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->description:Ljava/lang/String;

    :cond_8
    const/16 v9, 0x79d

    if-le v7, v9, :cond_9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\u5171\u548c\u56fd"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit16 v9, v7, -0x79d

    if-ne v9, v12, :cond_d

    const-string/jumbo v9, "\u5143"

    :goto_6
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->description:Ljava/lang/String;

    :cond_9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->description:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\u5e74"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->description:Ljava/lang/String;

    iget-object v9, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->sFestivalName:Ljava/lang/String;

    const-string v10, "^\\|"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->sFestivalName:Ljava/lang/String;

    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->isFounded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_a
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit16 v11, v7, -0x752

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_3

    :cond_b
    add-int/lit16 v9, v7, -0x774

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_4

    :cond_c
    add-int/lit16 v9, v7, -0x777

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    :cond_d
    add-int/lit16 v9, v7, -0x79d

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    goto :goto_6

    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method private static getChinaCalendarMsg(III)Ljava/lang/String;
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x7

    const/4 v3, 0x5

    const/4 v2, 0x2

    const/4 v1, 0x1

    const-string v0, ""

    if-ne p1, v1, :cond_1

    if-ne p2, v1, :cond_1

    const-string/jumbo v0, "\u6625\u8282"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-ne p1, v2, :cond_2

    if-ne p2, v2, :cond_2

    const-string/jumbo v0, "\u9f99\u62ac\u5934"

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_3

    const/16 v1, 0xf

    if-ne p2, v1, :cond_3

    const-string/jumbo v0, "\u5143\u5bb5"

    goto :goto_0

    :cond_3
    if-ne p1, v3, :cond_4

    if-ne p2, v3, :cond_4

    const-string/jumbo v0, "\u7aef\u5348"

    goto :goto_0

    :cond_4
    if-ne p1, v4, :cond_5

    if-ne p2, v4, :cond_5

    const-string/jumbo v0, "\u4e03\u5915"

    goto :goto_0

    :cond_5
    if-ne p1, v5, :cond_6

    const/16 v1, 0xf

    if-ne p2, v1, :cond_6

    const-string/jumbo v0, "\u4e2d\u79cb"

    goto :goto_0

    :cond_6
    const/16 v1, 0x9

    if-ne p1, v1, :cond_7

    const/16 v1, 0x9

    if-ne p2, v1, :cond_7

    const-string/jumbo v0, "\u91cd\u9633"

    goto :goto_0

    :cond_7
    const/16 v1, 0xc

    if-ne p1, v1, :cond_8

    if-ne p2, v5, :cond_8

    const-string/jumbo v0, "\u814a\u516b"

    goto :goto_0

    :cond_8
    const/16 v1, 0xc

    if-ne p1, v1, :cond_0

    invoke-static {p0, p1}, Landroid/util/fenghen/Lunar/FenghenLunar;->getLunarMonthDays(II)I

    move-result v1

    const/16 v2, 0x1d

    if-ne v1, v2, :cond_9

    const/16 v1, 0x1d

    if-eq p2, v1, :cond_a

    :cond_9
    invoke-static {p0, p1}, Landroid/util/fenghen/Lunar/FenghenLunar;->getLunarMonthDays(II)I

    move-result v1

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_a

    const/16 v1, 0x1e

    if-eq p2, v1, :cond_0

    :cond_a
    const-string/jumbo v0, "\u9664\u5915"

    goto :goto_0
.end method

.method private getCyclicalData()V
    .locals 11

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->solar:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->solarYear:I

    iget-object v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->solar:Ljava/util/Calendar;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->solarMonth:I

    iget-object v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->solar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->solarDay:I

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->solarYear:I

    invoke-static {v0, v4}, Landroid/util/fenghen/Lunar/FenghenLunar;->getSolarTermDay(II)I

    move-result v10

    iget v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->solarMonth:I

    if-lt v0, v2, :cond_0

    iget v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->solarMonth:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->solarDay:I

    if-ge v0, v10, :cond_1

    :cond_0
    iget v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->solarYear:I

    add-int/lit16 v0, v0, -0x76c

    add-int/lit8 v0, v0, 0x24

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v8, v0, 0x3c

    :goto_0
    iget v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->solarYear:I

    iget v1, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->solarMonth:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Landroid/util/fenghen/Lunar/FenghenLunar;->getSolarTermDay(II)I

    move-result v9

    iget v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->solarDay:I

    if-ge v0, v9, :cond_2

    iget v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->solarYear:I

    add-int/lit16 v0, v0, -0x76c

    mul-int/lit8 v0, v0, 0xc

    iget v1, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->solarMonth:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xc

    rem-int/lit8 v7, v0, 0x3c

    :goto_1
    iget v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->solarYear:I

    iget v1, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->solarMonth:I

    iget v2, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->solarDay:I

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/util/fenghen/Lunar/FenghenLunar;->UTC(IIIIII)J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    const-wide/16 v2, 0x63df

    add-long/2addr v0, v2

    const-wide/16 v2, 0xa

    add-long/2addr v0, v2

    long-to-int v0, v0

    rem-int/lit8 v6, v0, 0x3c

    iput v8, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->cyclicalYear:I

    iput v7, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->cyclicalMonth:I

    iput v6, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->cyclicalDay:I

    return-void

    :cond_1
    iget v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->solarYear:I

    add-int/lit16 v0, v0, -0x76c

    add-int/lit8 v0, v0, 0x24

    rem-int/lit8 v8, v0, 0x3c

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->solarYear:I

    add-int/lit16 v0, v0, -0x76c

    mul-int/lit8 v0, v0, 0xc

    iget v1, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->solarMonth:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xd

    rem-int/lit8 v7, v0, 0x3c

    goto :goto_1
.end method

.method private static getCyclicalString(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/util/fenghen/Lunar/FenghenLunar;->Tianan:[Ljava/lang/String;

    invoke-static {p0}, Landroid/util/fenghen/Lunar/FenghenLunar;->getTianan(I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/util/fenghen/Lunar/FenghenLunar;->Deqi:[Ljava/lang/String;

    invoke-static {p0}, Landroid/util/fenghen/Lunar/FenghenLunar;->getDeqi(I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDeqi(I)I
    .locals 1

    rem-int/lit8 v0, p0, 0xc

    return v0
.end method

.method private static getLunarDayString(I)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    if-lt p0, v6, :cond_0

    const/16 v4, 0x1e

    if-le p0, v4, :cond_1

    :cond_0
    const-string v4, ""

    :goto_0
    return-object v4

    :cond_1
    div-int/lit8 v2, p0, 0xa

    rem-int/lit8 v3, p0, 0xa

    sget-object v4, Landroid/util/fenghen/Lunar/FenghenLunar;->lunarString2:[Ljava/lang/String;

    aget-object v0, v4, v2

    sget-object v4, Landroid/util/fenghen/Lunar/FenghenLunar;->lunarString1:[Ljava/lang/String;

    aget-object v1, v4, v3

    const/16 v4, 0xb

    if-ge p0, v4, :cond_2

    sget-object v4, Landroid/util/fenghen/Lunar/FenghenLunar;->lunarString2:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v0, v4, v5

    :cond_2
    if-nez v3, :cond_3

    sget-object v4, Landroid/util/fenghen/Lunar/FenghenLunar;->lunarString2:[Ljava/lang/String;

    aget-object v1, v4, v6

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private static getLunarLeapDays(I)I
    .locals 2

    invoke-static {p0}, Landroid/util/fenghen/Lunar/FenghenLunar;->getLunarLeapMonth(I)I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Landroid/util/fenghen/Lunar/FenghenLunar;->lunarInfo:[I

    add-int/lit16 v1, p0, -0x76b

    aget v0, v0, v1

    and-int/lit8 v0, v0, 0xf

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    const/16 v0, 0x1e

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1d

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getLunarLeapMonth(I)I
    .locals 3

    sget-object v1, Landroid/util/fenghen/Lunar/FenghenLunar;->lunarInfo:[I

    add-int/lit16 v2, p0, -0x76c

    aget v1, v1, v2

    and-int/lit8 v0, v1, 0xf

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private static getLunarMonthDays(II)I
    .locals 3

    sget-object v1, Landroid/util/fenghen/Lunar/FenghenLunar;->lunarInfo:[I

    add-int/lit16 v2, p0, -0x76c

    aget v1, v1, v2

    const/high16 v2, 0x10000

    shr-int/2addr v2, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/16 v0, 0x1e

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1d

    goto :goto_0
.end method

.method private static getLunarMonthString(I)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    const-string v0, ""

    if-ne p0, v3, :cond_1

    sget-object v1, Landroid/util/fenghen/Lunar/FenghenLunar;->lunarString2:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v0, v1, v2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/16 v1, 0x9

    if-le p0, v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/util/fenghen/Lunar/FenghenLunar;->lunarString2:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    rem-int/lit8 v1, p0, 0xa

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/util/fenghen/Lunar/FenghenLunar;->lunarString1:[Ljava/lang/String;

    rem-int/lit8 v3, p0, 0xa

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getLunarYearDays(I)I
    .locals 4

    const/16 v0, 0x15c

    const v1, 0x8000

    :goto_0
    const/16 v2, 0x8

    if-le v1, v2, :cond_1

    sget-object v2, Landroid/util/fenghen/Lunar/FenghenLunar;->lunarInfo:[I

    add-int/lit16 v3, p0, -0x76c

    aget v2, v2, v3

    and-int/2addr v2, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    add-int/2addr v0, v2

    shr-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-static {p0}, Landroid/util/fenghen/Lunar/FenghenLunar;->getLunarLeapDays(I)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method private static getLunarYearString(I)Ljava/lang/String;
    .locals 1

    add-int/lit16 v0, p0, -0x76c

    add-int/lit8 v0, v0, 0x24

    invoke-static {v0}, Landroid/util/fenghen/Lunar/FenghenLunar;->getCyclicalString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSolarTermDay(II)I
    .locals 10

    const/4 v1, 0x0

    const-wide v2, 0x758f07a16L

    add-int/lit16 v0, p0, -0x76c

    int-to-long v4, v0

    mul-long/2addr v2, v4

    sget-object v0, Landroid/util/fenghen/Lunar/FenghenLunar;->solarTermInfo:[I

    aget v0, v0, p1

    int-to-long v4, v0

    const-wide/32 v8, 0xea60

    mul-long/2addr v4, v8

    add-long v6, v2, v4

    const/16 v0, 0x76c

    const/4 v2, 0x6

    const/4 v3, 0x2

    const/4 v4, 0x5

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/util/fenghen/Lunar/FenghenLunar;->UTC(IIIIII)J

    move-result-wide v0

    add-long/2addr v6, v0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Landroid/util/fenghen/Lunar/FenghenLunar;->getUTCDay(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method private static getTianan(I)I
    .locals 1

    rem-int/lit8 v0, p0, 0xa

    return v0
.end method

.method public static declared-synchronized getUTCDay(Ljava/util/Date;)I
    .locals 5

    const-class v1, Landroid/util/fenghen/Lunar/FenghenLunar;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/util/fenghen/Lunar/FenghenLunar;->makeUTCCalendar()V

    sget-object v2, Landroid/util/fenghen/Lunar/FenghenLunar;->utcCal:Ljava/util/GregorianCalendar;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Landroid/util/fenghen/Lunar/FenghenLunar;->utcCal:Ljava/util/GregorianCalendar;

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->clear()V

    sget-object v0, Landroid/util/fenghen/Lunar/FenghenLunar;->utcCal:Ljava/util/GregorianCalendar;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    sget-object v0, Landroid/util/fenghen/Lunar/FenghenLunar;->utcCal:Ljava/util/GregorianCalendar;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private init(J)V
    .locals 13

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    iput-object v9, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->solar:Ljava/util/Calendar;

    iget-object v9, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->solar:Ljava/util/Calendar;

    invoke-virtual {v9, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    new-instance v0, Ljava/util/GregorianCalendar;

    const/16 v9, 0x76c

    const/4 v10, 0x0

    const/16 v11, 0x1f

    invoke-direct {v0, v9, v10, v11}, Ljava/util/GregorianCalendar;-><init>(III)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    sub-long v9, p1, v9

    const-wide/32 v11, 0x5265c00

    div-long v7, v9, v11

    const/16 v9, 0x76c

    iput v9, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->lunarYear:I

    iget v9, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->lunarYear:I

    invoke-static {v9}, Landroid/util/fenghen/Lunar/FenghenLunar;->getLunarYearDays(I)I

    move-result v2

    :goto_0
    iget v9, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->lunarYear:I

    const/16 v10, 0x834

    if-ge v9, v10, :cond_0

    int-to-long v9, v2

    cmp-long v9, v7, v9

    if-ltz v9, :cond_0

    int-to-long v9, v2

    sub-long/2addr v7, v9

    iget v9, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->lunarYear:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->lunarYear:I

    invoke-static {v9}, Landroid/util/fenghen/Lunar/FenghenLunar;->getLunarYearDays(I)I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v6, 0x1

    iget v9, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->lunarYear:I

    invoke-static {v9}, Landroid/util/fenghen/Lunar/FenghenLunar;->getLunarLeapMonth(I)I

    move-result v5

    if-lez v5, :cond_2

    const/4 v9, 0x1

    :goto_1
    iput-boolean v9, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->isLeapYear:Z

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_2
    const/16 v9, 0xd

    if-ge v6, v9, :cond_1

    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-lez v9, :cond_1

    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    iget v9, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->lunarYear:I

    invoke-static {v9}, Landroid/util/fenghen/Lunar/FenghenLunar;->getLunarLeapDays(I)I

    move-result v1

    const/4 v4, 0x0

    :goto_3
    int-to-long v9, v1

    cmp-long v9, v7, v9

    if-gez v9, :cond_4

    :cond_1
    iput v1, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->maxDayInMonth:I

    iput v6, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->lunarMonth:I

    if-ne v6, v5, :cond_6

    if-eqz v3, :cond_6

    const/4 v9, 0x1

    :goto_4
    iput-boolean v9, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->isLeap:Z

    long-to-int v9, v7

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->lunarDay:I

    invoke-direct {p0}, Landroid/util/fenghen/Lunar/FenghenLunar;->getCyclicalData()V

    return-void

    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    :cond_3
    iget v9, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->lunarYear:I

    invoke-static {v9, v6}, Landroid/util/fenghen/Lunar/FenghenLunar;->getLunarMonthDays(II)I

    move-result v1

    goto :goto_3

    :cond_4
    int-to-long v9, v1

    sub-long/2addr v7, v9

    if-ne v5, v6, :cond_5

    if-nez v3, :cond_5

    const/4 v4, 0x1

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    const/4 v9, 0x0

    goto :goto_4
.end method

.method private static isNullOrEmpty(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static declared-synchronized makeUTCCalendar()V
    .locals 3

    const-class v1, Landroid/util/fenghen/Lunar/FenghenLunar;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/util/fenghen/Lunar/FenghenLunar;->utcCal:Ljava/util/GregorianCalendar;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/GregorianCalendar;

    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    sput-object v0, Landroid/util/fenghen/Lunar/FenghenLunar;->utcCal:Ljava/util/GregorianCalendar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static toInt(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method public AddLunarDate(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/util/fenghen/Lunar/FenghenLunar;->getAnimalString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u5e74"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/util/fenghen/Lunar/FenghenLunar;->getLunarMonthString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u6708"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/util/fenghen/Lunar/FenghenLunar;->getLunarDayString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/util/fenghen/Lunar/FenghenLunar;->getChinaCalendarMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/util/fenghen/Lunar/FenghenLunar;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/util/fenghen/Lunar/FenghenLunar;->getTermString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getAnimalString()Ljava/lang/String;
    .locals 2

    sget-object v0, Landroid/util/fenghen/Lunar/FenghenLunar;->Animals:[Ljava/lang/String;

    iget v1, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->lunarYear:I

    add-int/lit8 v1, v1, -0x4

    rem-int/lit8 v1, v1, 0xc

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getChinaCalendarMsg()Ljava/lang/String;
    .locals 3

    iget v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->lunarYear:I

    iget v1, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->lunarMonth:I

    iget v2, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->lunarDay:I

    invoke-static {v0, v1, v2}, Landroid/util/fenghen/Lunar/FenghenLunar;->getChinaCalendarMsg(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCyclicaDay()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->cyclicalDay:I

    invoke-static {v0}, Landroid/util/fenghen/Lunar/FenghenLunar;->getCyclicalString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCyclicaMonth()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->cyclicalMonth:I

    invoke-static {v0}, Landroid/util/fenghen/Lunar/FenghenLunar;->getCyclicalString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCyclicaYear()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->cyclicalYear:I

    invoke-static {v0}, Landroid/util/fenghen/Lunar/FenghenLunar;->getCyclicalString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCyclicalDateString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/util/fenghen/Lunar/FenghenLunar;->getCyclicaYear()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u5e74"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/util/fenghen/Lunar/FenghenLunar;->getCyclicaMonth()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u6708"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/util/fenghen/Lunar/FenghenLunar;->getCyclicaDay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u65e5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfWeek()I
    .locals 2

    iget-object v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->solar:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getDeqiD()I
    .locals 1

    iget v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->cyclicalDay:I

    invoke-static {v0}, Landroid/util/fenghen/Lunar/FenghenLunar;->getDeqi(I)I

    move-result v0

    return v0
.end method

.method public getDeqiM()I
    .locals 1

    iget v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->cyclicalMonth:I

    invoke-static {v0}, Landroid/util/fenghen/Lunar/FenghenLunar;->getDeqi(I)I

    move-result v0

    return v0
.end method

.method public getDeqiY()I
    .locals 1

    iget v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->cyclicalYear:I

    invoke-static {v0}, Landroid/util/fenghen/Lunar/FenghenLunar;->getDeqi(I)I

    move-result v0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->isFounded:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/util/fenghen/Lunar/FenghenLunar;->findFestival()V

    :cond_0
    iget-object v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getLFestivalName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->lFestivalName:Ljava/lang/String;

    return-object v0
.end method

.method public getLunarDateString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/util/fenghen/Lunar/FenghenLunar;->getLunarYearString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u5e74"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/util/fenghen/Lunar/FenghenLunar;->getLunarMonthString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u6708"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/util/fenghen/Lunar/FenghenLunar;->getLunarDayString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLunarDay()I
    .locals 1

    iget v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->lunarDay:I

    return v0
.end method

.method public getLunarDayString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->lunarDay:I

    invoke-static {v0}, Landroid/util/fenghen/Lunar/FenghenLunar;->getLunarDayString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLunarMonth()I
    .locals 1

    iget v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->lunarMonth:I

    return v0
.end method

.method public getLunarMonthString()Ljava/lang/String;
    .locals 2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/util/fenghen/Lunar/FenghenLunar;->isLeap()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u95f0"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->lunarMonth:I

    invoke-static {v1}, Landroid/util/fenghen/Lunar/FenghenLunar;->getLunarMonthString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getLunarYear()I
    .locals 1

    iget v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->lunarYear:I

    return v0
.end method

.method public getLunarYearString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->lunarYear:I

    invoke-static {v0}, Landroid/util/fenghen/Lunar/FenghenLunar;->getLunarYearString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxDayInMonth()I
    .locals 1

    iget v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->maxDayInMonth:I

    return v0
.end method

.method public getSFestivalName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->sFestivalName:Ljava/lang/String;

    return-object v0
.end method

.method public getSolarDay()I
    .locals 1

    iget v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->solarDay:I

    return v0
.end method

.method public getSolarMonth()I
    .locals 1

    iget v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->solarMonth:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getSolarYear()I
    .locals 1

    iget v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->solarYear:I

    return v0
.end method

.method public getTermString()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    iget v1, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->solarYear:I

    iget v2, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->solarMonth:I

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Landroid/util/fenghen/Lunar/FenghenLunar;->getSolarTermDay(II)I

    move-result v1

    iget v2, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->solarDay:I

    if-ne v1, v2, :cond_1

    sget-object v1, Landroid/util/fenghen/Lunar/FenghenLunar;->solarTerm:[Ljava/lang/String;

    iget v2, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->solarMonth:I

    mul-int/lit8 v2, v2, 0x2

    aget-object v0, v1, v2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget v1, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->solarYear:I

    iget v2, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->solarMonth:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Landroid/util/fenghen/Lunar/FenghenLunar;->getSolarTermDay(II)I

    move-result v1

    iget v2, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->solarDay:I

    if-ne v1, v2, :cond_0

    sget-object v1, Landroid/util/fenghen/Lunar/FenghenLunar;->solarTerm:[Ljava/lang/String;

    iget v2, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->solarMonth:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-object v0, v1, v2

    goto :goto_0
.end method

.method public getTiananD()I
    .locals 1

    iget v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->cyclicalDay:I

    invoke-static {v0}, Landroid/util/fenghen/Lunar/FenghenLunar;->getTianan(I)I

    move-result v0

    return v0
.end method

.method public getTiananM()I
    .locals 1

    iget v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->cyclicalMonth:I

    invoke-static {v0}, Landroid/util/fenghen/Lunar/FenghenLunar;->getTianan(I)I

    move-result v0

    return v0
.end method

.method public getTiananY()I
    .locals 1

    iget v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->cyclicalYear:I

    invoke-static {v0}, Landroid/util/fenghen/Lunar/FenghenLunar;->getTianan(I)I

    move-result v0

    return v0
.end method

.method public isBigMonth()Z
    .locals 2

    invoke-virtual {p0}, Landroid/util/fenghen/Lunar/FenghenLunar;->getMaxDayInMonth()I

    move-result v0

    const/16 v1, 0x1d

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBlackFriday()Z
    .locals 2

    invoke-virtual {p0}, Landroid/util/fenghen/Lunar/FenghenLunar;->getSolarDay()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->solar:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFestival()Z
    .locals 1

    invoke-virtual {p0}, Landroid/util/fenghen/Lunar/FenghenLunar;->isSFestival()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/util/fenghen/Lunar/FenghenLunar;->isLFestival()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHoliday()Z
    .locals 1

    iget-boolean v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->isFounded:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/util/fenghen/Lunar/FenghenLunar;->findFestival()V

    :cond_0
    iget-boolean v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->isHoliday:Z

    return v0
.end method

.method public isLFestival()Z
    .locals 1

    iget-boolean v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->isFounded:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/util/fenghen/Lunar/FenghenLunar;->findFestival()V

    :cond_0
    iget-boolean v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->isLFestival:Z

    return v0
.end method

.method public isLeap()Z
    .locals 1

    iget-boolean v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->isLeap:Z

    return v0
.end method

.method public isLeapYear()Z
    .locals 1

    iget-boolean v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->isLeapYear:Z

    return v0
.end method

.method public isSFestival()Z
    .locals 1

    iget-boolean v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->isFounded:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/util/fenghen/Lunar/FenghenLunar;->findFestival()V

    :cond_0
    iget-boolean v0, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->isSFestival:Z

    return v0
.end method

.method public isToday()Z
    .locals 4

    const/4 v1, 0x1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget v3, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->solarYear:I

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget v3, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->solarMonth:I

    if-ne v2, v3, :cond_0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget v3, p0, Landroid/util/fenghen/Lunar/FenghenLunar;->solarDay:I

    if-ne v2, v3, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toMultiLineString()Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/util/fenghen/Lunar/FenghenLunar;->getLunarMonthString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u6708"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/util/fenghen/Lunar/FenghenLunar;->getLunarDayString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/util/fenghen/Lunar/FenghenLunar;->getTermString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/util/fenghen/Lunar/FenghenLunar;->isSFestival()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/util/fenghen/Lunar/FenghenLunar;->getSFestivalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/util/fenghen/Lunar/FenghenLunar;->isLFestival()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/util/fenghen/Lunar/FenghenLunar;->getLFestivalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/util/fenghen/Lunar/FenghenLunar;->getCyclicaYear()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/util/fenghen/Lunar/FenghenLunar;->getAnimalString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u5e74"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/util/fenghen/Lunar/FenghenLunar;->getLunarMonthString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u6708"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/util/fenghen/Lunar/FenghenLunar;->getLunarDayString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/util/fenghen/Lunar/FenghenLunar;->getChinaCalendarMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/util/fenghen/Lunar/FenghenLunar;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/util/fenghen/Lunar/FenghenLunar;->getTermString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
