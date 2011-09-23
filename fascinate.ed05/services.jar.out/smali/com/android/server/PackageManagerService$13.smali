.class Lcom/android/server/PackageManagerService$13;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/PackageManagerService;->processPendingMove(Lcom/android/server/PackageManagerService$MoveParams;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PackageManagerService;

.field final synthetic val$currentStatus:I

.field final synthetic val$mp:Lcom/android/server/PackageManagerService$MoveParams;


# direct methods
.method constructor <init>(Lcom/android/server/PackageManagerService;ILcom/android/server/PackageManagerService$MoveParams;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 10134
    iput-object p1, p0, Lcom/android/server/PackageManagerService$13;->this$0:Lcom/android/server/PackageManagerService;

    iput p2, p0, Lcom/android/server/PackageManagerService$13;->val$currentStatus:I

    iput-object p3, p0, Lcom/android/server/PackageManagerService$13;->val$mp:Lcom/android/server/PackageManagerService$MoveParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 10135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10136
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService$13;->val$currentStatus:I

    move v14, v0

    .line 10137
    .local v14, returnCode:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/PackageManagerService$13;->val$currentStatus:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 10138
    const/4 v15, 0x0

    .line 10139
    .local v15, uidArr:[I
    const/4 v11, 0x0

    .line 10140
    .local v11, pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 10141
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->val$mp:Lcom/android/server/PackageManagerService$MoveParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageParser$Package;

    .line 10142
    .local v10, pkg:Landroid/content/pm/PackageParser$Package;
    if-nez v10, :cond_3

    .line 10143
    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " Package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->val$mp:Lcom/android/server/PackageManagerService$MoveParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " doesn\'t exist. Aborting move"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10145
    const/4 v14, -0x2

    .line 10156
    :goto_0
    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10157
    const/16 v17, 0x1

    move v0, v14

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 10159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object v2, v11

    move-object v3, v15

    move-object/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/PackageManagerService;->access$3800(Lcom/android/server/PackageManagerService;ZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V

    .line 10161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 10162
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v18, v0

    monitor-enter v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 10163
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->val$mp:Lcom/android/server/PackageManagerService$MoveParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #pkg:Landroid/content/pm/PackageParser$Package;
    check-cast v10, Landroid/content/pm/PackageParser$Package;

    .line 10165
    .restart local v10       #pkg:Landroid/content/pm/PackageParser$Package;
    if-nez v10, :cond_5

    .line 10166
    const-string v19, "PackageManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " Package "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->val$mp:Lcom/android/server/PackageManagerService$MoveParams;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " doesn\'t exist. Aborting move"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10168
    const/4 v14, -0x2

    .line 10208
    :goto_1
    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 10209
    :try_start_3
    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 10211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object v2, v11

    move-object v3, v15

    move-object/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/PackageManagerService;->access$3800(Lcom/android/server/PackageManagerService;ZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V

    .line 10214
    .end local v10           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v11           #pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15           #uidArr:[I
    :cond_0
    const/16 v17, 0x1

    move v0, v14

    move/from16 v1, v17

    if-eq v0, v1, :cond_9

    .line 10216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->val$mp:Lcom/android/server/PackageManagerService$MoveParams;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/PackageManagerService$MoveParams;->targetArgs:Lcom/android/server/PackageManagerService$InstallArgs;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 10217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->val$mp:Lcom/android/server/PackageManagerService$MoveParams;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/PackageManagerService$MoveParams;->targetArgs:Lcom/android/server/PackageManagerService$InstallArgs;

    move-object/from16 v17, v0

    const/16 v18, -0x6e

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/PackageManagerService$InstallArgs;->doPostInstall(I)I

    .line 10227
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->val$mp:Lcom/android/server/PackageManagerService$MoveParams;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/PackageManagerService$MoveParams;->observer:Landroid/content/pm/IPackageMoveObserver;

    move-object v8, v0

    .line 10228
    .local v8, observer:Landroid/content/pm/IPackageMoveObserver;
    if-eqz v8, :cond_2

    .line 10230
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->val$mp:Lcom/android/server/PackageManagerService$MoveParams;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object v0, v8

    move-object/from16 v1, v17

    move v2, v14

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageMoveObserver;->packageMoved(Ljava/lang/String;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 10235
    :cond_2
    :goto_3
    return-void

    .line 10146
    .end local v8           #observer:Landroid/content/pm/IPackageMoveObserver;
    .restart local v10       #pkg:Landroid/content/pm/PackageParser$Package;
    .restart local v11       #pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v15       #uidArr:[I
    :cond_3
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->val$mp:Lcom/android/server/PackageManagerService$MoveParams;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/PackageManagerService$MoveParams;->srcArgs:Lcom/android/server/PackageManagerService$InstallArgs;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/PackageManagerService$InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v18

    move-object v0, v10

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4

    .line 10147
    const-string v18, "PackageManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Package "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->val$mp:Lcom/android/server/PackageManagerService$MoveParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " code path changed from "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->val$mp:Lcom/android/server/PackageManagerService$MoveParams;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/PackageManagerService$MoveParams;->srcArgs:Lcom/android/server/PackageManagerService$InstallArgs;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/PackageManagerService$InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " to "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object v0, v10

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Aborting move and returning error"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10150
    const/4 v14, -0x6

    goto/16 :goto_0

    .line 10152
    :cond_4
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/16 v18, 0x0

    move-object v0, v10

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v19, v0

    aput v19, v16, v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 10153
    .end local v15           #uidArr:[I
    .local v16, uidArr:[I
    :try_start_6
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 10154
    .end local v11           #pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v12, pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->val$mp:Lcom/android/server/PackageManagerService$MoveParams;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    move-object v11, v12

    .end local v12           #pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11       #pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v15, v16

    .end local v16           #uidArr:[I
    .restart local v15       #uidArr:[I
    goto/16 :goto_0

    .line 10156
    .end local v10           #pkg:Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v18

    :goto_4
    :try_start_8
    monitor-exit v17
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v18

    .line 10169
    .restart local v10       #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_5
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->val$mp:Lcom/android/server/PackageManagerService$MoveParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/PackageManagerService$MoveParams;->srcArgs:Lcom/android/server/PackageManagerService$InstallArgs;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/PackageManagerService$InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v19

    move-object v0, v10

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 10170
    const-string v19, "PackageManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Package "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->val$mp:Lcom/android/server/PackageManagerService$MoveParams;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/PackageManagerService$MoveParams;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " code path changed from "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->val$mp:Lcom/android/server/PackageManagerService$MoveParams;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/PackageManagerService$MoveParams;->srcArgs:Lcom/android/server/PackageManagerService$InstallArgs;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/PackageManagerService$InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " to "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object v0, v10

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " Aborting move and returning error"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10173
    const/4 v14, -0x6

    goto/16 :goto_1

    .line 10175
    :cond_6
    iget-object v9, v10, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    .line 10176
    .local v9, oldCodePath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->val$mp:Lcom/android/server/PackageManagerService$MoveParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/PackageManagerService$MoveParams;->targetArgs:Lcom/android/server/PackageManagerService$InstallArgs;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/PackageManagerService$InstallArgs;->getCodePath()Ljava/lang/String;

    move-result-object v6

    .line 10177
    .local v6, newCodePath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->val$mp:Lcom/android/server/PackageManagerService$MoveParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/PackageManagerService$MoveParams;->targetArgs:Lcom/android/server/PackageManagerService$InstallArgs;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/PackageManagerService$InstallArgs;->getResourcePath()Ljava/lang/String;

    move-result-object v7

    .line 10178
    .local v7, newResPath:Ljava/lang/String;
    iput-object v6, v10, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    .line 10180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v10

    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService;->access$3900(Lcom/android/server/PackageManagerService;Landroid/content/pm/PackageParser$Package;)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    .line 10184
    move-object v0, v10

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v10

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    .line 10185
    const/4 v14, -0x1

    goto/16 :goto_1

    .line 10187
    :cond_7
    iput-object v6, v10, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    .line 10188
    move-object v0, v10

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object v0, v6

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 10189
    move-object v0, v10

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object v0, v7

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 10190
    iget-object v13, v10, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v13, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 10191
    .local v13, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    new-instance v19, Ljava/io/File;

    move-object v0, v10

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object v1, v13

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PackageSetting;->codePath:Ljava/io/File;

    .line 10192
    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->codePath:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v13

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PackageSetting;->codePathString:Ljava/lang/String;

    .line 10193
    new-instance v19, Ljava/io/File;

    move-object v0, v10

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object v1, v13

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePath:Ljava/io/File;

    .line 10194
    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePath:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v13

    iput-object v0, v1, Lcom/android/server/PackageManagerService$PackageSetting;->resourcePathString:Ljava/lang/String;

    .line 10196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->val$mp:Lcom/android/server/PackageManagerService$MoveParams;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/PackageManagerService$MoveParams;->flags:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x8

    if-eqz v19, :cond_8

    .line 10197
    move-object v0, v10

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v20, v0

    const/high16 v21, 0x4

    or-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 10201
    :goto_5
    move-object v0, v10

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v19, v0

    move-object v0, v13

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageSetting;->setFlags(I)V

    .line 10202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAppDirs:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mAppDirs:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v6

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    goto/16 :goto_1

    .line 10208
    .end local v6           #newCodePath:Ljava/lang/String;
    .end local v7           #newResPath:Ljava/lang/String;
    .end local v9           #oldCodePath:Ljava/lang/String;
    .end local v10           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v13           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :catchall_1
    move-exception v19

    monitor-exit v18
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v19

    .line 10209
    :catchall_2
    move-exception v18

    monitor-exit v17
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v18

    .line 10199
    .restart local v6       #newCodePath:Ljava/lang/String;
    .restart local v7       #newResPath:Ljava/lang/String;
    .restart local v9       #oldCodePath:Ljava/lang/String;
    .restart local v10       #pkg:Landroid/content/pm/PackageParser$Package;
    .restart local v13       #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_8
    :try_start_b
    move-object v0, v10

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v20, v0

    const v21, -0x40001

    and-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_5

    .line 10221
    .end local v6           #newCodePath:Ljava/lang/String;
    .end local v7           #newResPath:Ljava/lang/String;
    .end local v9           #oldCodePath:Ljava/lang/String;
    .end local v10           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v11           #pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    .end local v15           #uidArr:[I
    :cond_9
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Runtime;->gc()V

    .line 10223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 10224
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$13;->val$mp:Lcom/android/server/PackageManagerService$MoveParams;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/PackageManagerService$MoveParams;->srcArgs:Lcom/android/server/PackageManagerService$InstallArgs;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/PackageManagerService$InstallArgs;->doPostDeleteLI(Z)Z

    .line 10225
    monitor-exit v17

    goto/16 :goto_2

    :catchall_3
    move-exception v18

    monitor-exit v17
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw v18

    .line 10231
    .restart local v8       #observer:Landroid/content/pm/IPackageMoveObserver;
    :catch_0
    move-exception v17

    move-object/from16 v5, v17

    .line 10232
    .local v5, e:Landroid/os/RemoteException;
    const-string v17, "PackageManager"

    const-string v18, "Observer no longer exists."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 10156
    .end local v5           #e:Landroid/os/RemoteException;
    .end local v8           #observer:Landroid/content/pm/IPackageMoveObserver;
    .restart local v10       #pkg:Landroid/content/pm/PackageParser$Package;
    .restart local v11       #pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v16       #uidArr:[I
    :catchall_4
    move-exception v18

    move-object/from16 v15, v16

    .end local v16           #uidArr:[I
    .restart local v15       #uidArr:[I
    goto/16 :goto_4

    .end local v11           #pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15           #uidArr:[I
    .restart local v12       #pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v16       #uidArr:[I
    :catchall_5
    move-exception v18

    move-object v11, v12

    .end local v12           #pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11       #pkgList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v15, v16

    .end local v16           #uidArr:[I
    .restart local v15       #uidArr:[I
    goto/16 :goto_4
.end method
