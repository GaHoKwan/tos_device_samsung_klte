.class Lcom/android/server/ssrm/settings/LevelsModelReader;
.super Ljava/lang/Object;
.source "LevelsModelReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/settings/LevelsModelReader$1;,
        Lcom/android/server/ssrm/settings/LevelsModelReader$TagActionFactory;,
        Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;,
        Lcom/android/server/ssrm/settings/LevelsModelReader$ConditionTagAction;,
        Lcom/android/server/ssrm/settings/LevelsModelReader$WriterTagAction;,
        Lcom/android/server/ssrm/settings/LevelsModelReader$StepTagAction;,
        Lcom/android/server/ssrm/settings/LevelsModelReader$TagAction;
    }
.end annotation


# static fields
.field private static final BATTERY_TAG:Ljava/lang/String; = "battery"

.field private static final CONDITIONS_TAG:Ljava/lang/String; = "conditions"

.field private static final CONDITION_TAG:Ljava/lang/String; = "condition"

.field private static final DEBUG:Z = false

.field private static final DEBUG_TAG:Ljava/lang/String; = "LevelsModelReader"

.field private static final DEPENDS_ON_CONDITIONS_TAG:Ljava/lang/String; = "DependsOnConditions"

.field private static final LEVELS_TAG:Ljava/lang/String; = "levels"

.field private static final LEVEL_TAG:Ljava/lang/String; = "level"

.field private static final ROOT_TAG:Ljava/lang/String; = "LevelsModel"

.field private static final SETTINGS_TAG:Ljava/lang/String; = "settings"

.field private static final SETTING_TAG:Ljava/lang/String; = "setting"

.field private static final STATE_TAG:Ljava/lang/String; = "state"

.field private static final STEPS_TAG:Ljava/lang/String; = "steps"

.field private static final STEP_TAG:Ljava/lang/String; = "step"

.field private static TAG_PARENTS:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final WRITERS_TAG:Ljava/lang/String; = "writers"

.field private static final WRITER_TAG:Ljava/lang/String; = "writer"


# instance fields
.field private final mConditionNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mController:Lcom/android/server/ssrm/settings/MainController;

.field private final mModelIs:Ljava/io/InputStream;

.field private final mRegistredConditions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/ssrm/settings/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private final mSteps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTagActionFactory:Lcom/android/server/ssrm/settings/LevelsModelReader$TagActionFactory;

.field private final mTagStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWriterNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWriters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/ssrm/settings/SettingWriter",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 73
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/server/ssrm/settings/LevelsModelReader;->TAG_PARENTS:Ljava/util/HashMap;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "LevelsModel"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v1, Lcom/android/server/ssrm/settings/LevelsModelReader;->TAG_PARENTS:Ljava/util/HashMap;

    const-string/jumbo v2, "steps"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v1, "steps"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v1, Lcom/android/server/ssrm/settings/LevelsModelReader;->TAG_PARENTS:Ljava/util/HashMap;

    const-string/jumbo v2, "step"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "LevelsModel"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v1, Lcom/android/server/ssrm/settings/LevelsModelReader;->TAG_PARENTS:Ljava/util/HashMap;

    const-string/jumbo v2, "writers"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v1, "writers"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v1, Lcom/android/server/ssrm/settings/LevelsModelReader;->TAG_PARENTS:Ljava/util/HashMap;

    const-string/jumbo v2, "writer"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "LevelsModel"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v1, Lcom/android/server/ssrm/settings/LevelsModelReader;->TAG_PARENTS:Ljava/util/HashMap;

    const-string v2, "conditions"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "conditions"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    const-string v1, "level"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    const-string v1, "DependsOnConditions"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v1, Lcom/android/server/ssrm/settings/LevelsModelReader;->TAG_PARENTS:Ljava/util/HashMap;

    const-string v2, "condition"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "LevelsModel"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v1, Lcom/android/server/ssrm/settings/LevelsModelReader;->TAG_PARENTS:Ljava/util/HashMap;

    const-string v2, "levels"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "levels"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v1, Lcom/android/server/ssrm/settings/LevelsModelReader;->TAG_PARENTS:Ljava/util/HashMap;

    const-string v2, "level"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "level"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v1, Lcom/android/server/ssrm/settings/LevelsModelReader;->TAG_PARENTS:Ljava/util/HashMap;

    const-string v2, "battery"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "battery"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v1, Lcom/android/server/ssrm/settings/LevelsModelReader;->TAG_PARENTS:Ljava/util/HashMap;

    const-string/jumbo v2, "state"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    sget-object v1, Lcom/android/server/ssrm/settings/LevelsModelReader;->TAG_PARENTS:Ljava/util/HashMap;

    const-string/jumbo v2, "settings"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v1, "settings"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    sget-object v1, Lcom/android/server/ssrm/settings/LevelsModelReader;->TAG_PARENTS:Ljava/util/HashMap;

    const-string/jumbo v2, "setting"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "level"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    sget-object v1, Lcom/android/server/ssrm/settings/LevelsModelReader;->TAG_PARENTS:Ljava/util/HashMap;

    const-string v2, "DependsOnConditions"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    return-void
.end method

.method public constructor <init>(Lcom/android/server/ssrm/settings/MainController;Ljava/io/InputStream;Ljava/util/List;)V
    .locals 4
    .param p1, "controller"    # Lcom/android/server/ssrm/settings/MainController;
    .param p2, "modelIs"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/ssrm/settings/MainController;",
            "Ljava/io/InputStream;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/ssrm/settings/SettingWriter",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p3, "writers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ssrm/settings/SettingWriter<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mWriterNames:Ljava/util/Set;

    .line 163
    if-nez p2, :cond_0

    .line 164
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "modelIs is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 167
    :cond_0
    iput-object p1, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mController:Lcom/android/server/ssrm/settings/MainController;

    .line 168
    iput-object p2, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mModelIs:Ljava/io/InputStream;

    .line 169
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mTagStack:Ljava/util/Stack;

    .line 170
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mSteps:Ljava/util/HashMap;

    .line 171
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mConditionNames:Ljava/util/List;

    .line 172
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mRegistredConditions:Ljava/util/HashSet;

    .line 173
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mWriters:Ljava/util/HashMap;

    .line 174
    if-eqz p3, :cond_1

    .line 175
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/settings/SettingWriter;

    .line 176
    .local v1, "writer":Lcom/android/server/ssrm/settings/SettingWriter;, "Lcom/android/server/ssrm/settings/SettingWriter<*>;"
    iget-object v2, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mWriters:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/server/ssrm/settings/SettingWriter;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 179
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "writer":Lcom/android/server/ssrm/settings/SettingWriter;, "Lcom/android/server/ssrm/settings/SettingWriter<*>;"
    :cond_1
    new-instance v2, Lcom/android/server/ssrm/settings/LevelsModelReader$TagActionFactory;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/ssrm/settings/LevelsModelReader$TagActionFactory;-><init>(Lcom/android/server/ssrm/settings/LevelsModelReader;Lcom/android/server/ssrm/settings/LevelsModelReader$1;)V

    iput-object v2, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mTagActionFactory:Lcom/android/server/ssrm/settings/LevelsModelReader$TagActionFactory;

    .line 180
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/ssrm/settings/LevelsModelReader;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ssrm/settings/LevelsModelReader;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/server/ssrm/settings/LevelsModelReader;->enterTag(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/ssrm/settings/LevelsModelReader;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ssrm/settings/LevelsModelReader;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/server/ssrm/settings/LevelsModelReader;->leaveTag(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/ssrm/settings/LevelsModelReader;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ssrm/settings/LevelsModelReader;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mSteps:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/ssrm/settings/LevelsModelReader;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ssrm/settings/LevelsModelReader;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mWriterNames:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/ssrm/settings/LevelsModelReader;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ssrm/settings/LevelsModelReader;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mWriters:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/ssrm/settings/LevelsModelReader;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ssrm/settings/LevelsModelReader;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mConditionNames:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/ssrm/settings/LevelsModelReader;)Lcom/android/server/ssrm/settings/MainController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ssrm/settings/LevelsModelReader;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mController:Lcom/android/server/ssrm/settings/MainController;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/ssrm/settings/LevelsModelReader;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ssrm/settings/LevelsModelReader;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mRegistredConditions:Ljava/util/HashSet;

    return-object v0
.end method

.method private enterTag(Ljava/lang/String;)V
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 253
    const/4 v1, 0x0

    .line 254
    .local v1, "isValid":Z
    const-string v0, "Malformed model: invalid root tag"

    .line 256
    .local v0, "errorMsg":Ljava/lang/String;
    const-string v3, "LevelsModel"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 257
    const/4 v1, 0x1

    .line 272
    :cond_0
    :goto_0
    if-eqz v1, :cond_4

    .line 273
    iget-object v3, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v3, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    return-void

    .line 258
    :cond_1
    iget-object v3, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 259
    sget-object v3, Lcom/android/server/ssrm/settings/LevelsModelReader;->TAG_PARENTS:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 260
    .local v2, "parents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_3

    .line 261
    iget-object v3, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 262
    const/4 v1, 0x1

    goto :goto_0

    .line 264
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed model: <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> has wrong parent <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 268
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed model: invalid tag <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 275
    .end local v2    # "parents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private leaveTag(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 283
    :cond_0
    return-void
.end method


# virtual methods
.method processModel()V
    .locals 7

    .prologue
    .line 184
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 185
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v5, Ljava/io/InputStreamReader;

    iget-object v6, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mModelIs:Ljava/io/InputStream;

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 187
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 188
    .local v2, "eventType":I
    :goto_0
    const/4 v5, 0x1

    if-eq v2, v5, :cond_3

    .line 189
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 190
    .local v4, "tag":Ljava/lang/String;
    packed-switch v2, :pswitch_data_0

    .line 216
    :cond_0
    :goto_1
    :pswitch_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 217
    goto :goto_0

    .line 200
    :pswitch_1
    invoke-direct {p0, v4}, Lcom/android/server/ssrm/settings/LevelsModelReader;->enterTag(Ljava/lang/String;)V

    .line 201
    iget-object v5, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mTagActionFactory:Lcom/android/server/ssrm/settings/LevelsModelReader$TagActionFactory;

    invoke-virtual {v5, v4}, Lcom/android/server/ssrm/settings/LevelsModelReader$TagActionFactory;->getAction(Ljava/lang/String;)Lcom/android/server/ssrm/settings/LevelsModelReader$TagAction;

    move-result-object v0

    .line 202
    .local v0, "action":Lcom/android/server/ssrm/settings/LevelsModelReader$TagAction;
    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0, v3}, Lcom/android/server/ssrm/settings/LevelsModelReader$TagAction;->doAction(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 218
    .end local v0    # "action":Lcom/android/server/ssrm/settings/LevelsModelReader$TagAction;
    .end local v2    # "eventType":I
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 219
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Malformed model."

    invoke-direct {v5, v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v5

    .line 224
    :try_start_2
    iget-object v6, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mModelIs:Ljava/io/InputStream;

    if-eqz v6, :cond_1

    .line 225
    iget-object v6, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mModelIs:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 223
    :cond_1
    :goto_2
    throw v5

    .line 210
    .restart local v2    # "eventType":I
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "tag":Ljava/lang/String;
    :pswitch_2
    :try_start_3
    invoke-direct {p0, v4}, Lcom/android/server/ssrm/settings/LevelsModelReader;->leaveTag(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 220
    .end local v2    # "eventType":I
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "tag":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 221
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Loading of model failed."

    invoke-direct {v5, v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 227
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "eventType":I
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v1

    .line 228
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 250
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    return-void

    .line 227
    .end local v2    # "eventType":I
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_3
    move-exception v1

    .line 228
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 224
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "eventType":I
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_3
    :try_start_5
    iget-object v5, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mModelIs:Ljava/io/InputStream;

    if-eqz v5, :cond_2

    .line 225
    iget-object v5, p0, Lcom/android/server/ssrm/settings/LevelsModelReader;->mModelIs:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
