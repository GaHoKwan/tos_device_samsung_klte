.class Lcom/android/internal/policy/impl/GlobalActions$13;
.super Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions;->createDialog()Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;IIIII)V
    .locals 6
    .param p2, "x0"    # I
    .param p3, "x1"    # I
    .param p4, "x2"    # I
    .param p5, "x3"    # I
    .param p6, "x4"    # I

    .prologue
    .line 1164
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$13;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 1210
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v6

    .line 1211
    .local v6, "v":Landroid/view/View;
    const/4 v4, 0x0

    .line 1212
    .local v4, "sealedModeString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1213
    .local v3, "sealedModeStatusOnString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1214
    .local v2, "sealedModeStatusOffString":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlobalActions$13;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    invoke-static {v7}, Lcom/android/internal/policy/impl/GlobalActions;->access$2800(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1215
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlobalActions$13;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    invoke-static {v7}, Lcom/android/internal/policy/impl/GlobalActions;->access$2800(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v7

    const/16 v8, 0x6f

    invoke-virtual {v7, v8}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedModeString(I)Ljava/lang/String;

    move-result-object v4

    .line 1216
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlobalActions$13;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    invoke-static {v7}, Lcom/android/internal/policy/impl/GlobalActions;->access$2800(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v7

    const/16 v8, 0x70

    invoke-virtual {v7, v8}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedModeString(I)Ljava/lang/String;

    move-result-object v3

    .line 1217
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlobalActions$13;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    invoke-static {v7}, Lcom/android/internal/policy/impl/GlobalActions;->access$2800(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v7

    const/16 v8, 0x71

    invoke-virtual {v7, v8}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedModeString(I)Ljava/lang/String;

    move-result-object v2

    .line 1219
    :cond_0
    const v7, 0x102000b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1220
    .local v0, "messageView":Landroid/widget/TextView;
    const v7, 0x1020310

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1221
    .local v5, "statusView":Landroid/widget/TextView;
    if-eqz v4, :cond_1

    .line 1222
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1224
    :cond_1
    iget-object v7, p0, Lcom/android/internal/policy/impl/GlobalActions$13;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-object v8, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    if-eq v7, v8, :cond_2

    iget-object v7, p0, Lcom/android/internal/policy/impl/GlobalActions$13;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-object v8, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->TurningOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    if-ne v7, v8, :cond_4

    :cond_2
    const/4 v1, 0x1

    .line 1225
    .local v1, "on":Z
    :goto_0
    if-eqz v1, :cond_5

    .line 1226
    if-eqz v3, :cond_3

    .line 1227
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1234
    :cond_3
    :goto_1
    return-object v6

    .line 1224
    .end local v1    # "on":Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 1230
    .restart local v1    # "on":Z
    :cond_5
    if-eqz v2, :cond_3

    .line 1231
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onToggle(Z)V
    .locals 8
    .param p1, "on"    # Z

    .prologue
    .line 1166
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions$13;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    invoke-static {v6}, Lcom/android/internal/policy/impl/GlobalActions;->access$2800(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions$13;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    invoke-static {v6}, Lcom/android/internal/policy/impl/GlobalActions;->access$2800(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1167
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1168
    .local v3, "i":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions$13;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    invoke-static {v6}, Lcom/android/internal/policy/impl/GlobalActions;->access$2800(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v6

    const/16 v7, 0xdd

    invoke-virtual {v6, v7}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedExitUI(I)Ljava/lang/String;

    move-result-object v2

    .line 1169
    .local v2, "exitUiPackage":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions$13;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mKnoxCustomManager:Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    invoke-static {v6}, Lcom/android/internal/policy/impl/GlobalActions;->access$2800(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v6

    const/16 v7, 0xde

    invoke-virtual {v6, v7}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedExitUI(I)Ljava/lang/String;

    move-result-object v1

    .line 1170
    .local v1, "exitUiClass":Ljava/lang/String;
    move-object v4, v1

    .line 1171
    .local v4, "qualClass":Ljava/lang/String;
    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mSealedExitAlertDialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$2900()Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 1172
    .local v5, "sealedExitDialog":Landroid/app/AlertDialog;
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions$13;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z
    invoke-static {v6}, Lcom/android/internal/policy/impl/GlobalActions;->access$1900(Lcom/android/internal/policy/impl/GlobalActions;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1173
    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d9

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 1177
    :goto_0
    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 1178
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1179
    const-string v6, "."

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1180
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1185
    :cond_0
    :goto_1
    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1186
    const/high16 v6, 0x10000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1188
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/GlobalActions$13;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/internal/policy/impl/GlobalActions;->access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1196
    .end local v1    # "exitUiClass":Ljava/lang/String;
    .end local v2    # "exitUiPackage":Ljava/lang/String;
    .end local v3    # "i":Landroid/content/Intent;
    .end local v4    # "qualClass":Ljava/lang/String;
    .end local v5    # "sealedExitDialog":Landroid/app/AlertDialog;
    :cond_1
    :goto_2
    return-void

    .line 1175
    .restart local v1    # "exitUiClass":Ljava/lang/String;
    .restart local v2    # "exitUiPackage":Ljava/lang/String;
    .restart local v3    # "i":Landroid/content/Intent;
    .restart local v4    # "qualClass":Ljava/lang/String;
    .restart local v5    # "sealedExitDialog":Landroid/app/AlertDialog;
    :cond_2
    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d8

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    goto :goto_0

    .line 1182
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 1189
    :catch_0
    move-exception v0

    .line 1190
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto :goto_2

    .line 1193
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_4
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto :goto_2
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 1202
    const/4 v0, 0x1

    return v0
.end method

.method public showConditional()Z
    .locals 1

    .prologue
    .line 1205
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 1198
    const/4 v0, 0x1

    return v0
.end method
