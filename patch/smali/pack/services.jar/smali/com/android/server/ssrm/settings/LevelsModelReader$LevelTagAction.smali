.class Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;
.super Lcom/android/server/ssrm/settings/LevelsModelReader$TagAction;
.source "LevelsModelReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/settings/LevelsModelReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LevelTagAction"
.end annotation


# instance fields
.field private mCurrentBatteryState:Lcom/android/server/ssrm/settings/BatteryState;

.field private mIsCompoundLevel:Z

.field private mIsDefaultLevel:Z

.field private mLevel:Lcom/android/server/ssrm/settings/Level;

.field private mLevelConditionName:Ljava/lang/String;

.field private final mLevelConditions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/ssrm/settings/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private mStateFactory:Lcom/android/server/ssrm/settings/BatteryControllerFactory;

.field final synthetic this$0:Lcom/android/server/ssrm/settings/LevelsModelReader;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/settings/LevelsModelReader;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->this$0:Lcom/android/server/ssrm/settings/LevelsModelReader;

    const-string v0, "level"

    invoke-direct {p0, p1, v0}, Lcom/android/server/ssrm/settings/LevelsModelReader$TagAction;-><init>(Lcom/android/server/ssrm/settings/LevelsModelReader;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mLevelConditions:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method handleEndNestedTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    const-string/jumbo v0, "state"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mLevel:Lcom/android/server/ssrm/settings/Level;

    iget-object v1, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mCurrentBatteryState:Lcom/android/server/ssrm/settings/BatteryState;

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/settings/Level;->addBatteryState(Lcom/android/server/ssrm/settings/BatteryState;)V

    :cond_0
    return-void
.end method

.method handleEndTag()V
    .locals 4

    iget-boolean v1, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mIsCompoundLevel:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->this$0:Lcom/android/server/ssrm/settings/LevelsModelReader;

    # getter for: Lcom/android/server/ssrm/settings/LevelsModelReader;->mController:Lcom/android/server/ssrm/settings/MainController;
    invoke-static {v1}, Lcom/android/server/ssrm/settings/LevelsModelReader;->access$700(Lcom/android/server/ssrm/settings/LevelsModelReader;)Lcom/android/server/ssrm/settings/MainController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mLevel:Lcom/android/server/ssrm/settings/Level;

    iget-object v3, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mLevelConditions:Ljava/util/HashSet;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/ssrm/settings/MainController;->addLevelSetConditions(Lcom/android/server/ssrm/settings/Level;Ljava/util/Set;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mIsDefaultLevel:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->this$0:Lcom/android/server/ssrm/settings/LevelsModelReader;

    # getter for: Lcom/android/server/ssrm/settings/LevelsModelReader;->mController:Lcom/android/server/ssrm/settings/MainController;
    invoke-static {v1}, Lcom/android/server/ssrm/settings/LevelsModelReader;->access$700(Lcom/android/server/ssrm/settings/LevelsModelReader;)Lcom/android/server/ssrm/settings/MainController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mLevel:Lcom/android/server/ssrm/settings/Level;

    const-string v3, "default"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/ssrm/settings/MainController;->addLevelGetCondition(Lcom/android/server/ssrm/settings/Level;Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->this$0:Lcom/android/server/ssrm/settings/LevelsModelReader;

    # getter for: Lcom/android/server/ssrm/settings/LevelsModelReader;->mController:Lcom/android/server/ssrm/settings/MainController;
    invoke-static {v1}, Lcom/android/server/ssrm/settings/LevelsModelReader;->access$700(Lcom/android/server/ssrm/settings/LevelsModelReader;)Lcom/android/server/ssrm/settings/MainController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mLevel:Lcom/android/server/ssrm/settings/Level;

    iget-object v3, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mLevelConditionName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/ssrm/settings/MainController;->addLevelGetCondition(Lcom/android/server/ssrm/settings/Level;Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->this$0:Lcom/android/server/ssrm/settings/LevelsModelReader;

    # getter for: Lcom/android/server/ssrm/settings/LevelsModelReader;->mRegistredConditions:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/server/ssrm/settings/LevelsModelReader;->access$800(Lcom/android/server/ssrm/settings/LevelsModelReader;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method handleStartNestedTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 13

    const/4 v12, 0x0

    const/4 v1, 0x0

    const-string v11, "condition"

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    iget-boolean v11, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mIsDefaultLevel:Z

    if-eqz v11, :cond_0

    const-string v1, "Default level contains <condition> or <DependsOnConditions>."

    :cond_0
    iget-object v11, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mLevelConditionName:Ljava/lang/String;

    if-eqz v11, :cond_1

    const-string v1, "Multiple <condition> within <level> or <condition> and <DependsOnConditions> exists concurrently in the same <level>."

    :cond_1
    const-string v11, "name"

    invoke-interface {p2, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-boolean v11, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mIsCompoundLevel:Z

    if-eqz v11, :cond_6

    const/4 v7, 0x0

    iget-object v11, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->this$0:Lcom/android/server/ssrm/settings/LevelsModelReader;

    # getter for: Lcom/android/server/ssrm/settings/LevelsModelReader;->mRegistredConditions:Ljava/util/HashSet;
    invoke-static {v11}, Lcom/android/server/ssrm/settings/LevelsModelReader;->access$800(Lcom/android/server/ssrm/settings/LevelsModelReader;)Ljava/util/HashSet;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/settings/Condition;

    invoke-virtual {v0}, Lcom/android/server/ssrm/settings/Condition;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    move-object v7, v0

    goto :goto_0

    :cond_3
    if-eqz v7, :cond_5

    iget-object v11, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mLevelConditions:Ljava/util/HashSet;

    invoke-virtual {v11, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    if-eqz v1, :cond_e

    new-instance v11, Ljava/lang/RuntimeException;

    invoke-direct {v11, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Required condition \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' does not exist. Initially must be a level defined with such a condition."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_6
    iget-object v11, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->this$0:Lcom/android/server/ssrm/settings/LevelsModelReader;

    # getter for: Lcom/android/server/ssrm/settings/LevelsModelReader;->mConditionNames:Ljava/util/List;
    invoke-static {v11}, Lcom/android/server/ssrm/settings/LevelsModelReader;->access$600(Lcom/android/server/ssrm/settings/LevelsModelReader;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    iput-object v3, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mLevelConditionName:Ljava/lang/String;

    goto :goto_1

    :cond_7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Condition \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' is not defined within <conditions>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_8
    const-string v11, "DependsOnConditions"

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mIsCompoundLevel:Z

    goto :goto_1

    :cond_9
    const-string/jumbo v11, "state"

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    const-string/jumbo v11, "step"

    invoke-interface {p2, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v11, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->this$0:Lcom/android/server/ssrm/settings/LevelsModelReader;

    # getter for: Lcom/android/server/ssrm/settings/LevelsModelReader;->mSteps:Ljava/util/HashMap;
    invoke-static {v11}, Lcom/android/server/ssrm/settings/LevelsModelReader;->access$300(Lcom/android/server/ssrm/settings/LevelsModelReader;)Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_a

    iget-object v11, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mStateFactory:Lcom/android/server/ssrm/settings/BatteryControllerFactory;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v11, v12}, Lcom/android/server/ssrm/settings/BatteryControllerFactory;->createBatteryState(I)Lcom/android/server/ssrm/settings/BatteryState;

    move-result-object v11

    iput-object v11, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mCurrentBatteryState:Lcom/android/server/ssrm/settings/BatteryState;

    goto/16 :goto_1

    :cond_a
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Wrong step \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' is used. Check <steps> for available values."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v11, "setting"

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string/jumbo v11, "writer"

    invoke-interface {p2, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "value"

    invoke-interface {p2, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v11, "option"

    invoke-interface {p2, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v11, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->this$0:Lcom/android/server/ssrm/settings/LevelsModelReader;

    # getter for: Lcom/android/server/ssrm/settings/LevelsModelReader;->mWriters:Ljava/util/HashMap;
    invoke-static {v11}, Lcom/android/server/ssrm/settings/LevelsModelReader;->access$500(Lcom/android/server/ssrm/settings/LevelsModelReader;)Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/ssrm/settings/SettingWriter;

    if-eqz v9, :cond_d

    if-nez v4, :cond_c

    const-string v4, "null"

    :cond_c
    iget-object v11, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mCurrentBatteryState:Lcom/android/server/ssrm/settings/BatteryState;

    invoke-virtual {v9, v8, v4}, Lcom/android/server/ssrm/settings/SettingWriter;->createSettingFromString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/ssrm/settings/Setting;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/ssrm/settings/BatteryState;->addSetting(Lcom/android/server/ssrm/settings/Setting;)V

    goto/16 :goto_1

    :cond_d
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Writer \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' is not registred."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_e
    return-void
.end method

.method handleStartTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "true"

    const-string v1, "default"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mIsDefaultLevel:Z

    iget-object v0, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->this$0:Lcom/android/server/ssrm/settings/LevelsModelReader;

    # getter for: Lcom/android/server/ssrm/settings/LevelsModelReader;->mController:Lcom/android/server/ssrm/settings/MainController;
    invoke-static {v0}, Lcom/android/server/ssrm/settings/LevelsModelReader;->access$700(Lcom/android/server/ssrm/settings/LevelsModelReader;)Lcom/android/server/ssrm/settings/MainController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ssrm/settings/MainController;->levelsFactory()Lcom/android/server/ssrm/settings/LevelsFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/ssrm/settings/LevelsFactory;->createLevel()Lcom/android/server/ssrm/settings/Level;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mLevel:Lcom/android/server/ssrm/settings/Level;

    iget-object v0, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mLevel:Lcom/android/server/ssrm/settings/Level;

    invoke-virtual {v0, v2}, Lcom/android/server/ssrm/settings/Level;->initialize(Lcom/android/server/ssrm/settings/BatteryControllerFactory;)V

    iget-object v0, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mLevel:Lcom/android/server/ssrm/settings/Level;

    invoke-virtual {v0}, Lcom/android/server/ssrm/settings/Level;->batteryStatesFactory()Lcom/android/server/ssrm/settings/BatteryControllerFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/settings/LevelsModelReader$LevelTagAction;->mStateFactory:Lcom/android/server/ssrm/settings/BatteryControllerFactory;

    return-void
.end method
