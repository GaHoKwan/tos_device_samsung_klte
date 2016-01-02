.class public abstract Landroid/app/ApplicationThreadNative;
.super Landroid/os/Binder;
.source "ApplicationThreadNative.java"

# interfaces
.implements Landroid/app/IApplicationThread;


# static fields
.field static final TAG:Ljava/lang/String; = "ApplicationThreadNative"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 69
    const-string v0, "android.app.IApplicationThread"

    invoke-virtual {p0, p0, v0}, Landroid/app/ApplicationThreadNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 56
    if-nez p0, :cond_1

    .line 57
    const/4 v0, 0x0

    .line 65
    :cond_0
    :goto_0
    return-object v0

    .line 59
    :cond_1
    const-string v1, "android.app.IApplicationThread"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IApplicationThread;

    .line 61
    .local v0, "in":Landroid/app/IApplicationThread;
    if-nez v0, :cond_0

    .line 65
    new-instance v0, Landroid/app/ApplicationThreadProxy;

    .end local v0    # "in":Landroid/app/IApplicationThread;
    invoke-direct {v0, p0}, Landroid/app/ApplicationThreadProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 678
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 115
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 75
    sparse-switch p1, :sswitch_data_0

    .line 673
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 78
    :sswitch_0
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 80
    .local v7, "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    const/16 v88, 0x1

    .line 81
    .local v88, "finished":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    const/16 v114, 0x1

    .line 82
    .local v114, "userLeaving":Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 83
    .local v25, "configChanges":I
    move-object/from16 v0, p0

    move/from16 v1, v88

    move/from16 v2, v114

    move/from16 v3, v25

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->schedulePauseActivity(Landroid/os/IBinder;ZZI)V

    .line 84
    const/4 v5, 0x1

    goto :goto_0

    .line 80
    .end local v25    # "configChanges":I
    .end local v88    # "finished":Z
    .end local v114    # "userLeaving":Z
    :cond_0
    const/16 v88, 0x0

    goto :goto_1

    .line 81
    .restart local v88    # "finished":Z
    :cond_1
    const/16 v114, 0x0

    goto :goto_2

    .line 89
    .end local v7    # "b":Landroid/os/IBinder;
    .end local v88    # "finished":Z
    :sswitch_1
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 91
    .restart local v7    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    const/16 v109, 0x1

    .line 92
    .local v109, "show":Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 93
    .restart local v25    # "configChanges":I
    move-object/from16 v0, p0

    move/from16 v1, v109

    move/from16 v2, v25

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleStopActivity(Landroid/os/IBinder;ZI)V

    .line 94
    const/4 v5, 0x1

    goto :goto_0

    .line 91
    .end local v25    # "configChanges":I
    .end local v109    # "show":Z
    :cond_2
    const/16 v109, 0x0

    goto :goto_3

    .line 99
    .end local v7    # "b":Landroid/os/IBinder;
    :sswitch_2
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 101
    .restart local v7    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    const/16 v109, 0x1

    .line 102
    .restart local v109    # "show":Z
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v109

    invoke-virtual {v0, v7, v1}, Landroid/app/ApplicationThreadNative;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V

    .line 103
    const/4 v5, 0x1

    goto :goto_0

    .line 101
    .end local v109    # "show":Z
    :cond_3
    const/16 v109, 0x0

    goto :goto_4

    .line 108
    .end local v7    # "b":Landroid/os/IBinder;
    :sswitch_3
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 110
    .restart local v7    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    const/16 v110, 0x1

    .line 111
    .local v110, "sleeping":Z
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v110

    invoke-virtual {v0, v7, v1}, Landroid/app/ApplicationThreadNative;->scheduleSleeping(Landroid/os/IBinder;Z)V

    .line 112
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 110
    .end local v110    # "sleeping":Z
    :cond_4
    const/16 v110, 0x0

    goto :goto_5

    .line 117
    .end local v7    # "b":Landroid/os/IBinder;
    :sswitch_4
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 119
    .restart local v7    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 120
    .local v12, "procState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    const/16 v17, 0x1

    .line 121
    .local v17, "isForward":Z
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v7, v12, v1}, Landroid/app/ApplicationThreadNative;->scheduleResumeActivity(Landroid/os/IBinder;IZ)V

    .line 122
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 120
    .end local v17    # "isForward":Z
    :cond_5
    const/16 v17, 0x0

    goto :goto_6

    .line 127
    .end local v7    # "b":Landroid/os/IBinder;
    .end local v12    # "procState":I
    :sswitch_5
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 129
    .restart local v7    # "b":Landroid/os/IBinder;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v14

    .line 130
    .local v14, "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v14}, Landroid/app/ApplicationThreadNative;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V

    .line 131
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 136
    .end local v7    # "b":Landroid/os/IBinder;
    .end local v14    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    :sswitch_6
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 138
    .local v6, "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 139
    .restart local v7    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 140
    .local v8, "ident":I
    sget-object v5, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ActivityInfo;

    .line 141
    .local v9, "info":Landroid/content/pm/ActivityInfo;
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/res/Configuration;

    .line 142
    .local v10, "curConfig":Landroid/content/res/Configuration;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/res/CompatibilityInfo;

    .line 143
    .local v11, "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 144
    .restart local v12    # "procState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v13

    .line 145
    .local v13, "state":Landroid/os/Bundle;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v14

    .line 146
    .restart local v14    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v15

    .line 147
    .local v15, "pi":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    const/16 v16, 0x1

    .line 148
    .local v16, "notResumed":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    const/16 v17, 0x1

    .line 149
    .restart local v17    # "isForward":Z
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 150
    .local v18, "profileName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v19, v5

    .line 152
    .local v19, "profileFd":Landroid/os/ParcelFileDescriptor;
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    const/16 v20, 0x1

    .local v20, "autoStopProfiler":Z
    :goto_a
    move-object/from16 v5, p0

    .line 153
    invoke-virtual/range {v5 .. v20}, Landroid/app/ApplicationThreadNative;->scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;ILandroid/os/Bundle;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Z)V

    .line 155
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 147
    .end local v16    # "notResumed":Z
    .end local v17    # "isForward":Z
    .end local v18    # "profileName":Ljava/lang/String;
    .end local v19    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .end local v20    # "autoStopProfiler":Z
    :cond_6
    const/16 v16, 0x0

    goto :goto_7

    .line 148
    .restart local v16    # "notResumed":Z
    :cond_7
    const/16 v17, 0x0

    goto :goto_8

    .line 150
    .restart local v17    # "isForward":Z
    .restart local v18    # "profileName":Ljava/lang/String;
    :cond_8
    const/16 v19, 0x0

    goto :goto_9

    .line 152
    .restart local v19    # "profileFd":Landroid/os/ParcelFileDescriptor;
    :cond_9
    const/16 v20, 0x0

    goto :goto_a

    .line 160
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "b":Landroid/os/IBinder;
    .end local v8    # "ident":I
    .end local v9    # "info":Landroid/content/pm/ActivityInfo;
    .end local v10    # "curConfig":Landroid/content/res/Configuration;
    .end local v11    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v12    # "procState":I
    .end local v13    # "state":Landroid/os/Bundle;
    .end local v14    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v15    # "pi":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .end local v16    # "notResumed":Z
    .end local v17    # "isForward":Z
    .end local v18    # "profileName":Ljava/lang/String;
    .end local v19    # "profileFd":Landroid/os/ParcelFileDescriptor;
    :sswitch_7
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 162
    .restart local v7    # "b":Landroid/os/IBinder;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v14

    .line 163
    .restart local v14    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v15

    .line 164
    .restart local v15    # "pi":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 165
    .restart local v25    # "configChanges":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b

    const/16 v16, 0x1

    .line 166
    .restart local v16    # "notResumed":Z
    :goto_b
    const/16 v27, 0x0

    .line 167
    .local v27, "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    .line 168
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    .end local v27    # "config":Landroid/content/res/Configuration;
    check-cast v27, Landroid/content/res/Configuration;

    .restart local v27    # "config":Landroid/content/res/Configuration;
    :cond_a
    move-object/from16 v21, p0

    move-object/from16 v22, v7

    move-object/from16 v23, v14

    move-object/from16 v24, v15

    move/from16 v26, v16

    .line 170
    invoke-virtual/range {v21 .. v27}, Landroid/app/ApplicationThreadNative;->scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;)V

    .line 171
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 165
    .end local v16    # "notResumed":Z
    .end local v27    # "config":Landroid/content/res/Configuration;
    :cond_b
    const/16 v16, 0x0

    goto :goto_b

    .line 176
    .end local v7    # "b":Landroid/os/IBinder;
    .end local v14    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v15    # "pi":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .end local v25    # "configChanges":I
    :sswitch_8
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v15

    .line 178
    .restart local v15    # "pi":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 179
    .restart local v7    # "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v7}, Landroid/app/ApplicationThreadNative;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V

    .line 180
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 185
    .end local v7    # "b":Landroid/os/IBinder;
    .end local v15    # "pi":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    :sswitch_9
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 187
    .restart local v7    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c

    const/16 v89, 0x1

    .line 188
    .local v89, "finishing":Z
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 189
    .restart local v25    # "configChanges":I
    move-object/from16 v0, p0

    move/from16 v1, v89

    move/from16 v2, v25

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleDestroyActivity(Landroid/os/IBinder;ZI)V

    .line 190
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 187
    .end local v25    # "configChanges":I
    .end local v89    # "finishing":Z
    :cond_c
    const/16 v89, 0x0

    goto :goto_c

    .line 195
    .end local v7    # "b":Landroid/os/IBinder;
    :sswitch_a
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 197
    .restart local v6    # "intent":Landroid/content/Intent;
    sget-object v5, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ActivityInfo;

    .line 198
    .restart local v9    # "info":Landroid/content/pm/ActivityInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/res/CompatibilityInfo;

    .line 199
    .restart local v11    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v32

    .line 200
    .local v32, "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .line 201
    .local v33, "resultData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v34

    .line 202
    .local v34, "resultExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d

    const/16 v35, 0x1

    .line 203
    .local v35, "sync":Z
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 204
    .local v36, "sendingUser":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .local v37, "processState":I
    move-object/from16 v28, p0

    move-object/from16 v29, v6

    move-object/from16 v30, v9

    move-object/from16 v31, v11

    .line 205
    invoke-virtual/range {v28 .. v37}, Landroid/app/ApplicationThreadNative;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZII)V

    .line 207
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 202
    .end local v35    # "sync":Z
    .end local v36    # "sendingUser":I
    .end local v37    # "processState":I
    :cond_d
    const/16 v35, 0x0

    goto :goto_d

    .line 211
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v9    # "info":Landroid/content/pm/ActivityInfo;
    .end local v11    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v32    # "resultCode":I
    .end local v33    # "resultData":Ljava/lang/String;
    .end local v34    # "resultExtras":Landroid/os/Bundle;
    :sswitch_b
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 213
    .local v39, "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/pm/ServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ServiceInfo;

    .line 214
    .local v9, "info":Landroid/content/pm/ServiceInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/res/CompatibilityInfo;

    .line 215
    .restart local v11    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 216
    .restart local v37    # "processState":I
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v37

    invoke-virtual {v0, v1, v9, v11, v2}, Landroid/app/ApplicationThreadNative;->scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V

    .line 217
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 221
    .end local v9    # "info":Landroid/content/pm/ServiceInfo;
    .end local v11    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v37    # "processState":I
    .end local v39    # "token":Landroid/os/IBinder;
    :sswitch_c
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 223
    .restart local v39    # "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 224
    .restart local v6    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e

    const/16 v104, 0x1

    .line 225
    .local v104, "rebind":Z
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 226
    .restart local v37    # "processState":I
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v104

    move/from16 v3, v37

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZI)V

    .line 227
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 224
    .end local v37    # "processState":I
    .end local v104    # "rebind":Z
    :cond_e
    const/16 v104, 0x0

    goto :goto_e

    .line 231
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v39    # "token":Landroid/os/IBinder;
    :sswitch_d
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 233
    .restart local v39    # "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 234
    .restart local v6    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1, v6}, Landroid/app/ApplicationThreadNative;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V

    .line 235
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 240
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v39    # "token":Landroid/os/IBinder;
    :sswitch_e
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 242
    .restart local v39    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f

    const/16 v40, 0x1

    .line 243
    .local v40, "taskRemoved":Z
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 244
    .local v41, "startId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .line 246
    .local v42, "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_10

    .line 247
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Landroid/content/Intent;

    .local v43, "args":Landroid/content/Intent;
    :goto_10
    move-object/from16 v38, p0

    .line 251
    invoke-virtual/range {v38 .. v43}, Landroid/app/ApplicationThreadNative;->scheduleServiceArgs(Landroid/os/IBinder;ZIILandroid/content/Intent;)V

    .line 252
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 242
    .end local v40    # "taskRemoved":Z
    .end local v41    # "startId":I
    .end local v42    # "fl":I
    .end local v43    # "args":Landroid/content/Intent;
    :cond_f
    const/16 v40, 0x0

    goto :goto_f

    .line 249
    .restart local v40    # "taskRemoved":Z
    .restart local v41    # "startId":I
    .restart local v42    # "fl":I
    :cond_10
    const/16 v43, 0x0

    .restart local v43    # "args":Landroid/content/Intent;
    goto :goto_10

    .line 257
    .end local v39    # "token":Landroid/os/IBinder;
    .end local v40    # "taskRemoved":Z
    .end local v41    # "startId":I
    .end local v42    # "fl":I
    .end local v43    # "args":Landroid/content/Intent;
    :sswitch_f
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 259
    .restart local v39    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleStopService(Landroid/os/IBinder;)V

    .line 260
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 265
    .end local v39    # "token":Landroid/os/IBinder;
    :sswitch_10
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v45

    .line 267
    .local v45, "packageName":Ljava/lang/String;
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    .line 269
    .local v9, "info":Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v47

    .line 271
    .local v47, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_11

    new-instance v48, Landroid/content/ComponentName;

    move-object/from16 v0, v48

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/os/Parcel;)V

    .line 273
    .local v48, "testName":Landroid/content/ComponentName;
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 274
    .restart local v18    # "profileName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_12

    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v19, v5

    .line 276
    .restart local v19    # "profileFd":Landroid/os/ParcelFileDescriptor;
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_13

    const/16 v20, 0x1

    .line 277
    .restart local v20    # "autoStopProfiler":Z
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v52

    .line 278
    .local v52, "testArgs":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v82

    .line 279
    .local v82, "binder":Landroid/os/IBinder;
    invoke-static/range {v82 .. v82}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v53

    .line 280
    .local v53, "testWatcher":Landroid/app/IInstrumentationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v82

    .line 281
    invoke-static/range {v82 .. v82}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v54

    .line 283
    .local v54, "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v55

    .line 284
    .local v55, "testMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_14

    const/16 v56, 0x1

    .line 285
    .local v56, "openGlTrace":Z
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_15

    const/16 v57, 0x1

    .line 286
    .local v57, "restrictedBackupMode":Z
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_16

    const/16 v58, 0x1

    .line 287
    .local v58, "persistent":Z
    :goto_16
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/res/Configuration;

    .line 288
    .restart local v27    # "config":Landroid/content/res/Configuration;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/res/CompatibilityInfo;

    .line 289
    .restart local v11    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v61

    .line 290
    .local v61, "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/IBinder;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v62

    .local v62, "coreSettings":Landroid/os/Bundle;
    move-object/from16 v44, p0

    move-object/from16 v46, v9

    move-object/from16 v49, v18

    move-object/from16 v50, v19

    move/from16 v51, v20

    move-object/from16 v59, v27

    move-object/from16 v60, v11

    .line 291
    invoke-virtual/range {v44 .. v62}, Landroid/app/ApplicationThreadNative;->bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;ZLandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;IZZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;)V

    .line 296
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 271
    .end local v11    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v18    # "profileName":Ljava/lang/String;
    .end local v19    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .end local v20    # "autoStopProfiler":Z
    .end local v27    # "config":Landroid/content/res/Configuration;
    .end local v48    # "testName":Landroid/content/ComponentName;
    .end local v52    # "testArgs":Landroid/os/Bundle;
    .end local v53    # "testWatcher":Landroid/app/IInstrumentationWatcher;
    .end local v54    # "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    .end local v55    # "testMode":I
    .end local v56    # "openGlTrace":Z
    .end local v57    # "restrictedBackupMode":Z
    .end local v58    # "persistent":Z
    .end local v61    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/IBinder;>;"
    .end local v62    # "coreSettings":Landroid/os/Bundle;
    .end local v82    # "binder":Landroid/os/IBinder;
    :cond_11
    const/16 v48, 0x0

    goto/16 :goto_11

    .line 274
    .restart local v18    # "profileName":Ljava/lang/String;
    .restart local v48    # "testName":Landroid/content/ComponentName;
    :cond_12
    const/16 v19, 0x0

    goto :goto_12

    .line 276
    .restart local v19    # "profileFd":Landroid/os/ParcelFileDescriptor;
    :cond_13
    const/16 v20, 0x0

    goto :goto_13

    .line 284
    .restart local v20    # "autoStopProfiler":Z
    .restart local v52    # "testArgs":Landroid/os/Bundle;
    .restart local v53    # "testWatcher":Landroid/app/IInstrumentationWatcher;
    .restart local v54    # "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    .restart local v55    # "testMode":I
    .restart local v82    # "binder":Landroid/os/IBinder;
    :cond_14
    const/16 v56, 0x0

    goto :goto_14

    .line 285
    .restart local v56    # "openGlTrace":Z
    :cond_15
    const/16 v57, 0x0

    goto :goto_15

    .line 286
    .restart local v57    # "restrictedBackupMode":Z
    :cond_16
    const/16 v58, 0x0

    goto :goto_16

    .line 301
    .end local v9    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v18    # "profileName":Ljava/lang/String;
    .end local v19    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .end local v20    # "autoStopProfiler":Z
    .end local v45    # "packageName":Ljava/lang/String;
    .end local v47    # "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .end local v48    # "testName":Landroid/content/ComponentName;
    .end local v52    # "testArgs":Landroid/os/Bundle;
    .end local v53    # "testWatcher":Landroid/app/IInstrumentationWatcher;
    .end local v54    # "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    .end local v55    # "testMode":I
    .end local v56    # "openGlTrace":Z
    .end local v57    # "restrictedBackupMode":Z
    .end local v82    # "binder":Landroid/os/IBinder;
    :sswitch_11
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleExit()V

    .line 303
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 308
    :sswitch_12
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleSuicide()V

    .line 310
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 315
    :sswitch_13
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 317
    .restart local v7    # "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/ApplicationThreadNative;->requestThumbnail(Landroid/os/IBinder;)V

    .line 318
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 323
    .end local v7    # "b":Landroid/os/IBinder;
    :sswitch_14
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/res/Configuration;

    .line 325
    .restart local v27    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 326
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 330
    .end local v27    # "config":Landroid/content/res/Configuration;
    :sswitch_15
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->updateTimeZone()V

    .line 332
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 336
    :sswitch_16
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->clearDnsCache()V

    .line 338
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 342
    :sswitch_17
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v103

    .line 344
    .local v103, "proxy":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v99

    .line 345
    .local v99, "port":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v86

    .line 346
    .local v86, "exclList":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v95

    .line 347
    .local v95, "pacFileUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v103

    move-object/from16 v2, v99

    move-object/from16 v3, v86

    move-object/from16 v4, v95

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ApplicationThreadNative;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 352
    .end local v86    # "exclList":Ljava/lang/String;
    .end local v95    # "pacFileUrl":Ljava/lang/String;
    .end local v99    # "port":Ljava/lang/String;
    .end local v103    # "proxy":Ljava/lang/String;
    :sswitch_18
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->processInBackground()V

    .line 354
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 358
    :sswitch_19
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v87

    .line 360
    .local v87, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v107

    .line 361
    .local v107, "service":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v43

    .line 362
    .local v43, "args":[Ljava/lang/String;
    if-eqz v87, :cond_17

    .line 363
    invoke-virtual/range {v87 .. v87}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v107

    move-object/from16 v2, v43

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/ApplicationThreadNative;->dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 365
    :try_start_0
    invoke-virtual/range {v87 .. v87}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 369
    :cond_17
    :goto_17
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 373
    .end local v43    # "args":[Ljava/lang/String;
    .end local v87    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v107    # "service":Landroid/os/IBinder;
    :sswitch_1a
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v87

    .line 375
    .restart local v87    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v107

    .line 376
    .restart local v107    # "service":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v43

    .line 377
    .restart local v43    # "args":[Ljava/lang/String;
    if-eqz v87, :cond_18

    .line 378
    invoke-virtual/range {v87 .. v87}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v107

    move-object/from16 v2, v43

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/ApplicationThreadNative;->dumpProvider(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 380
    :try_start_1
    invoke-virtual/range {v87 .. v87}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 384
    :cond_18
    :goto_18
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 388
    .end local v43    # "args":[Ljava/lang/String;
    .end local v87    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v107    # "service":Landroid/os/IBinder;
    :sswitch_1b
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 389
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v64

    .line 391
    .local v64, "receiver":Landroid/content/IIntentReceiver;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 392
    .restart local v6    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v32

    .line 393
    .restart local v32    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v67

    .line 394
    .local v67, "dataStr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v68

    .line 395
    .local v68, "extras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_19

    const/16 v69, 0x1

    .line 396
    .local v69, "ordered":Z
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1a

    const/16 v70, 0x1

    .line 397
    .local v70, "sticky":Z
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 398
    .restart local v36    # "sendingUser":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .restart local v37    # "processState":I
    move-object/from16 v63, p0

    move-object/from16 v65, v6

    move/from16 v66, v32

    move/from16 v71, v36

    move/from16 v72, v37

    .line 399
    invoke-virtual/range {v63 .. v72}, Landroid/app/ApplicationThreadNative;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZII)V

    .line 401
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 395
    .end local v36    # "sendingUser":I
    .end local v37    # "processState":I
    .end local v69    # "ordered":Z
    .end local v70    # "sticky":Z
    :cond_19
    const/16 v69, 0x0

    goto :goto_19

    .line 396
    .restart local v69    # "ordered":Z
    :cond_1a
    const/16 v70, 0x0

    goto :goto_1a

    .line 406
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v32    # "resultCode":I
    .end local v64    # "receiver":Landroid/content/IIntentReceiver;
    .end local v67    # "dataStr":Ljava/lang/String;
    .end local v68    # "extras":Landroid/os/Bundle;
    .end local v69    # "ordered":Z
    :sswitch_1c
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleLowMemory()V

    .line 408
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 413
    :sswitch_1d
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 414
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 415
    .restart local v7    # "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/ApplicationThreadNative;->scheduleActivityConfigurationChanged(Landroid/os/IBinder;)V

    .line 416
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 422
    .end local v7    # "b":Landroid/os/IBinder;
    :sswitch_1e
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v79

    .line 424
    .local v79, "activityToken":Landroid/os/IBinder;
    new-instance v112, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, v112

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Landroid/os/Parcel;)V

    .line 425
    .local v112, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v94

    .line 426
    .local v94, "notifyReason":I
    move-object/from16 v0, p0

    move-object/from16 v1, v79

    move-object/from16 v2, v112

    move/from16 v3, v94

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleMultiWindowStyleChanged(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V

    .line 427
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 434
    .end local v79    # "activityToken":Landroid/os/IBinder;
    .end local v94    # "notifyReason":I
    .end local v112    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :sswitch_1f
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 435
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1b

    const/16 v111, 0x1

    .line 436
    .local v111, "start":Z
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v101

    .line 437
    .local v101, "profileType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v97

    .line 438
    .local v97, "path":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1c

    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v87, v5

    .line 440
    .restart local v87    # "fd":Landroid/os/ParcelFileDescriptor;
    :goto_1c
    move-object/from16 v0, p0

    move/from16 v1, v111

    move-object/from16 v2, v97

    move-object/from16 v3, v87

    move/from16 v4, v101

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ApplicationThreadNative;->profilerControl(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;I)V

    .line 441
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 435
    .end local v87    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v97    # "path":Ljava/lang/String;
    .end local v101    # "profileType":I
    .end local v111    # "start":Z
    :cond_1b
    const/16 v111, 0x0

    goto :goto_1b

    .line 438
    .restart local v97    # "path":Ljava/lang/String;
    .restart local v101    # "profileType":I
    .restart local v111    # "start":Z
    :cond_1c
    const/16 v87, 0x0

    goto :goto_1c

    .line 446
    .end local v97    # "path":Ljava/lang/String;
    .end local v101    # "profileType":I
    .end local v111    # "start":Z
    :sswitch_20
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 447
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v90

    .line 448
    .local v90, "group":I
    move-object/from16 v0, p0

    move/from16 v1, v90

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setSchedulingGroup(I)V

    .line 449
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 454
    .end local v90    # "group":I
    :sswitch_21
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v80

    check-cast v80, Landroid/content/pm/ApplicationInfo;

    .line 456
    .local v80, "appInfo":Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/res/CompatibilityInfo;

    .line 457
    .restart local v11    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v81

    .line 458
    .local v81, "backupMode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v80

    move/from16 v2, v81

    invoke-virtual {v0, v1, v11, v2}, Landroid/app/ApplicationThreadNative;->scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)V

    .line 459
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 464
    .end local v11    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v80    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v81    # "backupMode":I
    :sswitch_22
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 465
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v80

    check-cast v80, Landroid/content/pm/ApplicationInfo;

    .line 466
    .restart local v80    # "appInfo":Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/res/CompatibilityInfo;

    .line 467
    .restart local v11    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v1, v11}, Landroid/app/ApplicationThreadNative;->scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)V

    .line 468
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 473
    .end local v11    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v80    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :sswitch_23
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v83

    .line 475
    .local v83, "cmd":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v96

    .line 476
    .local v96, "packages":[Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v83

    move-object/from16 v2, v96

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->dispatchPackageBroadcast(I[Ljava/lang/String;)V

    .line 477
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 482
    .end local v83    # "cmd":I
    .end local v96    # "packages":[Ljava/lang/String;
    :sswitch_24
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v93

    .line 484
    .local v93, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleCrash(Ljava/lang/String;)V

    .line 485
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 490
    .end local v93    # "msg":Ljava/lang/String;
    :sswitch_25
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1d

    const/16 v92, 0x1

    .line 492
    .local v92, "managed":Z
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v97

    .line 493
    .restart local v97    # "path":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1e

    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v87, v5

    .line 495
    .restart local v87    # "fd":Landroid/os/ParcelFileDescriptor;
    :goto_1e
    move-object/from16 v0, p0

    move/from16 v1, v92

    move-object/from16 v2, v97

    move-object/from16 v3, v87

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->dumpHeap(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 496
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 491
    .end local v87    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v92    # "managed":Z
    .end local v97    # "path":Ljava/lang/String;
    :cond_1d
    const/16 v92, 0x0

    goto :goto_1d

    .line 493
    .restart local v92    # "managed":Z
    .restart local v97    # "path":Ljava/lang/String;
    :cond_1e
    const/16 v87, 0x0

    goto :goto_1e

    .line 500
    .end local v92    # "managed":Z
    .end local v97    # "path":Ljava/lang/String;
    :sswitch_26
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 501
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v87

    .line 502
    .restart local v87    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v78

    .line 503
    .local v78, "activity":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v100

    .line 504
    .local v100, "prefix":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v43

    .line 505
    .restart local v43    # "args":[Ljava/lang/String;
    if-eqz v87, :cond_1f

    .line 506
    invoke-virtual/range {v87 .. v87}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    move-object/from16 v2, v100

    move-object/from16 v3, v43

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->dumpActivity(Ljava/io/FileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    .line 508
    :try_start_2
    invoke-virtual/range {v87 .. v87}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 512
    :cond_1f
    :goto_1f
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 516
    .end local v43    # "args":[Ljava/lang/String;
    .end local v78    # "activity":Landroid/os/IBinder;
    .end local v87    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v100    # "prefix":Ljava/lang/String;
    :sswitch_27
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 517
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v87

    .line 518
    .restart local v87    # "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v87, :cond_20

    .line 519
    invoke-virtual/range {v87 .. v87}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/ApplicationThreadNative;->dumpLooper(Ljava/io/FileDescriptor;)V

    .line 521
    :try_start_3
    invoke-virtual/range {v87 .. v87}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 526
    :cond_20
    :goto_20
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 522
    :catch_0
    move-exception v85

    .line 523
    .local v85, "e":Ljava/io/IOException;
    const-string v5, "ApplicationThreadNative"

    const-string v21, "onTransact DUMP_LOOPER_TRANSACTION fd.close() failed"

    move-object/from16 v0, v21

    move-object/from16 v1, v85

    invoke-static {v5, v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    .line 530
    .end local v85    # "e":Ljava/io/IOException;
    .end local v87    # "fd":Landroid/os/ParcelFileDescriptor;
    :sswitch_28
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 531
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v108

    .line 532
    .local v108, "settings":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setCoreSettings(Landroid/os/Bundle;)V

    .line 533
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 537
    .end local v108    # "settings":Landroid/os/Bundle;
    :sswitch_29
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 538
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v98

    .line 539
    .local v98, "pkg":Ljava/lang/String;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v84

    check-cast v84, Landroid/content/res/CompatibilityInfo;

    .line 540
    .local v84, "compat":Landroid/content/res/CompatibilityInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v98

    move-object/from16 v2, v84

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V

    .line 541
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 545
    .end local v84    # "compat":Landroid/content/res/CompatibilityInfo;
    .end local v98    # "pkg":Ljava/lang/String;
    :sswitch_2a
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v91

    .line 547
    .local v91, "level":I
    move-object/from16 v0, p0

    move/from16 v1, v91

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleTrimMemory(I)V

    .line 548
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 553
    .end local v91    # "level":I
    :sswitch_2b
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 554
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v87

    .line 555
    .restart local v87    # "fd":Landroid/os/ParcelFileDescriptor;
    sget-object v5, Landroid/os/Debug$MemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Landroid/os/Debug$MemoryInfo;

    .line 556
    .local v73, "mi":Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_22

    const/16 v74, 0x1

    .line 557
    .local v74, "checkin":Z
    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_23

    const/16 v75, 0x1

    .line 558
    .local v75, "dumpInfo":Z
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_24

    const/16 v76, 0x1

    .line 559
    .local v76, "dumpDalvik":Z
    :goto_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v43

    .line 560
    .restart local v43    # "args":[Ljava/lang/String;
    if-eqz v87, :cond_21

    .line 562
    :try_start_4
    invoke-virtual/range {v87 .. v87}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v72

    move-object/from16 v71, p0

    move-object/from16 v77, v43

    invoke-virtual/range {v71 .. v77}, Landroid/app/ApplicationThreadNative;->dumpMemInfo(Ljava/io/FileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZ[Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 565
    :try_start_5
    invoke-virtual/range {v87 .. v87}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 571
    :cond_21
    :goto_24
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 556
    .end local v43    # "args":[Ljava/lang/String;
    .end local v74    # "checkin":Z
    .end local v75    # "dumpInfo":Z
    .end local v76    # "dumpDalvik":Z
    :cond_22
    const/16 v74, 0x0

    goto :goto_21

    .line 557
    .restart local v74    # "checkin":Z
    :cond_23
    const/16 v75, 0x0

    goto :goto_22

    .line 558
    .restart local v75    # "dumpInfo":Z
    :cond_24
    const/16 v76, 0x0

    goto :goto_23

    .line 564
    .restart local v43    # "args":[Ljava/lang/String;
    .restart local v76    # "dumpDalvik":Z
    :catchall_0
    move-exception v5

    .line 565
    :try_start_6
    invoke-virtual/range {v87 .. v87}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 568
    :goto_25
    throw v5

    .line 577
    .end local v43    # "args":[Ljava/lang/String;
    .end local v73    # "mi":Landroid/os/Debug$MemoryInfo;
    .end local v74    # "checkin":Z
    .end local v75    # "dumpInfo":Z
    .end local v76    # "dumpDalvik":Z
    .end local v87    # "fd":Landroid/os/ParcelFileDescriptor;
    :sswitch_2c
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 578
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v87

    .line 579
    .restart local v87    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v43

    .line 580
    .restart local v43    # "args":[Ljava/lang/String;
    if-eqz v87, :cond_25

    .line 582
    :try_start_7
    invoke-virtual/range {v87 .. v87}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v5, v1}, Landroid/app/ApplicationThreadNative;->dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 585
    :try_start_8
    invoke-virtual/range {v87 .. v87}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 591
    :cond_25
    :goto_26
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 584
    :catchall_1
    move-exception v5

    .line 585
    :try_start_9
    invoke-virtual/range {v87 .. v87}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 588
    :goto_27
    throw v5

    .line 597
    .end local v43    # "args":[Ljava/lang/String;
    .end local v87    # "fd":Landroid/os/ParcelFileDescriptor;
    :sswitch_2d
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 598
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v87

    .line 599
    .restart local v87    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v43

    .line 600
    .restart local v43    # "args":[Ljava/lang/String;
    if-eqz v87, :cond_26

    .line 602
    :try_start_a
    invoke-virtual/range {v87 .. v87}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v5, v1}, Landroid/app/ApplicationThreadNative;->dumpDbInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 605
    :try_start_b
    invoke-virtual/range {v87 .. v87}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 611
    :cond_26
    :goto_28
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 612
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 604
    :catchall_2
    move-exception v5

    .line 605
    :try_start_c
    invoke-virtual/range {v87 .. v87}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 608
    :goto_29
    throw v5

    .line 617
    .end local v43    # "args":[Ljava/lang/String;
    .end local v87    # "fd":Landroid/os/ParcelFileDescriptor;
    :sswitch_2e
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 618
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v102

    .line 619
    .local v102, "provider":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->unstableProviderDied(Landroid/os/IBinder;)V

    .line 620
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 626
    .end local v102    # "provider":Landroid/os/IBinder;
    :sswitch_2f
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 627
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v79

    .line 628
    .restart local v79    # "activityToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v105

    .line 629
    .local v105, "requestToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v106

    .line 630
    .local v106, "requestType":I
    move-object/from16 v0, p0

    move-object/from16 v1, v79

    move-object/from16 v2, v105

    move/from16 v3, v106

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;I)V

    .line 631
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 637
    .end local v79    # "activityToken":Landroid/os/IBinder;
    .end local v105    # "requestToken":Landroid/os/IBinder;
    .end local v106    # "requestType":I
    :sswitch_30
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 638
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 639
    .restart local v39    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v5, v0, :cond_27

    const/16 v113, 0x1

    .line 640
    .local v113, "timeout":Z
    :goto_2a
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v113

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V

    .line 641
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 642
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 639
    .end local v113    # "timeout":Z
    :cond_27
    const/16 v113, 0x0

    goto :goto_2a

    .line 647
    .end local v39    # "token":Landroid/os/IBinder;
    :sswitch_31
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 648
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 649
    .local v13, "state":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/app/ApplicationThreadNative;->setProcessState(I)V

    .line 650
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 656
    .end local v13    # "state":I
    :sswitch_32
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 657
    sget-object v5, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v102

    check-cast v102, Landroid/content/pm/ProviderInfo;

    .line 658
    .local v102, "provider":Landroid/content/pm/ProviderInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V

    .line 659
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 660
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 665
    .end local v102    # "provider":Landroid/content/pm/ProviderInfo;
    :sswitch_33
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 666
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v93

    .line 667
    .restart local v93    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleResetTargetHeapUtilization(Ljava/lang/String;)V

    .line 668
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 366
    .end local v93    # "msg":Ljava/lang/String;
    .restart local v43    # "args":[Ljava/lang/String;
    .restart local v87    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v107    # "service":Landroid/os/IBinder;
    :catch_1
    move-exception v5

    goto/16 :goto_17

    .line 381
    :catch_2
    move-exception v5

    goto/16 :goto_18

    .line 509
    .end local v107    # "service":Landroid/os/IBinder;
    .restart local v78    # "activity":Landroid/os/IBinder;
    .restart local v100    # "prefix":Ljava/lang/String;
    :catch_3
    move-exception v5

    goto/16 :goto_1f

    .line 566
    .end local v78    # "activity":Landroid/os/IBinder;
    .end local v100    # "prefix":Ljava/lang/String;
    .restart local v73    # "mi":Landroid/os/Debug$MemoryInfo;
    .restart local v74    # "checkin":Z
    .restart local v75    # "dumpInfo":Z
    .restart local v76    # "dumpDalvik":Z
    :catch_4
    move-exception v5

    goto/16 :goto_24

    :catch_5
    move-exception v21

    goto/16 :goto_25

    .line 586
    .end local v73    # "mi":Landroid/os/Debug$MemoryInfo;
    .end local v74    # "checkin":Z
    .end local v75    # "dumpInfo":Z
    .end local v76    # "dumpDalvik":Z
    :catch_6
    move-exception v5

    goto/16 :goto_26

    :catch_7
    move-exception v21

    goto/16 :goto_27

    .line 606
    :catch_8
    move-exception v5

    goto/16 :goto_28

    :catch_9
    move-exception v21

    goto/16 :goto_29

    .line 75
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_f
        0xd -> :sswitch_10
        0xe -> :sswitch_11
        0xf -> :sswitch_13
        0x10 -> :sswitch_14
        0x11 -> :sswitch_e
        0x12 -> :sswitch_15
        0x13 -> :sswitch_18
        0x14 -> :sswitch_c
        0x15 -> :sswitch_d
        0x16 -> :sswitch_19
        0x17 -> :sswitch_1b
        0x18 -> :sswitch_1c
        0x19 -> :sswitch_1d
        0x1a -> :sswitch_7
        0x1b -> :sswitch_3
        0x1c -> :sswitch_1f
        0x1d -> :sswitch_20
        0x1e -> :sswitch_21
        0x1f -> :sswitch_22
        0x21 -> :sswitch_12
        0x22 -> :sswitch_23
        0x23 -> :sswitch_24
        0x24 -> :sswitch_25
        0x25 -> :sswitch_26
        0x26 -> :sswitch_16
        0x27 -> :sswitch_17
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_1a
        0x2e -> :sswitch_2d
        0x2f -> :sswitch_2e
        0x30 -> :sswitch_2f
        0x31 -> :sswitch_30
        0x32 -> :sswitch_31
        0x33 -> :sswitch_32
        0x1f5 -> :sswitch_27
        0x3e9 -> :sswitch_1e
        0x3eb -> :sswitch_33
    .end sparse-switch
.end method
