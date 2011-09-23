.class Lcom/android/server/status/StatusBarService$H;
.super Landroid/os/Handler;
.source "StatusBarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/status/StatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/status/StatusBarService;


# direct methods
.method private constructor <init>(Lcom/android/server/status/StatusBarService;)V
    .locals 0
    .parameter

    .prologue
    .line 985
    iput-object p1, p0, Lcom/android/server/status/StatusBarService$H;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/status/StatusBarService;Lcom/android/server/status/StatusBarService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 985
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarService$H;-><init>(Lcom/android/server/status/StatusBarService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 21
    .parameter "m"

    .prologue
    .line 987
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    const/16 v18, 0x3ea

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$H;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/widget/Button;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    if-lez v18, :cond_1

    const/16 v18, 0x1

    :goto_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v19, v0

    if-lez v19, :cond_2

    const/16 v19, 0x1

    :goto_1
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/status/StatusBarService;->access$300(Lcom/android/server/status/StatusBarService;Landroid/widget/Button;ZZ)V

    .line 1100
    :cond_0
    :goto_2
    return-void

    .line 989
    :cond_1
    const/16 v18, 0x0

    goto :goto_0

    :cond_2
    const/16 v19, 0x0

    goto :goto_1

    .line 993
    .restart local p0
    :cond_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    const/16 v18, 0x3e8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$H;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/status/StatusBarService;->doAnimation()V

    goto :goto_2

    .line 997
    :cond_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    const/16 v18, 0x3e9

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$H;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/status/StatusBarService;->doRevealAnimation()V

    goto :goto_2

    .line 1003
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$H;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 1004
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$H;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mQueue:Ljava/util/ArrayList;

    move-object v14, v0

    .line 1005
    .local v14, queue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/status/StatusBarService$PendingOp;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$H;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v18, v0

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/server/status/StatusBarService;->mQueue:Ljava/util/ArrayList;

    .line 1006
    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$H;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/status/StatusBarService;->mExpanded:Z

    move/from16 v16, v0

    .line 1012
    .local v16, wasExpanded:Z
    move/from16 v10, v16

    .line 1013
    .local v10, expand:Z
    const/4 v7, 0x0

    .line 1014
    .local v7, doExpand:Z
    const/4 v6, 0x0

    .line 1015
    .local v6, doDisable:Z
    const/4 v5, 0x0

    .line 1016
    .local v5, disableWhat:I
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1017
    .local v4, N:I
    :cond_6
    :goto_3
    if-lez v4, :cond_10

    .line 1018
    const/16 v17, 0x0

    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/status/StatusBarService$PendingOp;

    .line 1019
    .local v13, op:Lcom/android/server/status/StatusBarService$PendingOp;
    const/4 v8, 0x0

    .line 1020
    .local v8, doOp:Z
    const/4 v15, 0x0

    .line 1021
    .local v15, visible:Z
    const/4 v9, 0x0

    .line 1022
    .local v9, doVisibility:Z
    move-object v0, v13

    iget v0, v0, Lcom/android/server/status/StatusBarService$PendingOp;->code:I

    move/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 1023
    const/4 v9, 0x1

    .line 1024
    iget-boolean v15, v13, Lcom/android/server/status/StatusBarService$PendingOp;->visible:Z

    .line 1038
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$H;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v17, v0

    move-object v0, v13

    iget v0, v0, Lcom/android/server/status/StatusBarService$PendingOp;->code:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/android/server/status/StatusBarService;->access$400(Lcom/android/server/status/StatusBarService;I)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 1040
    const/4 v11, 0x1

    .local v11, i:I
    :goto_5
    if-ge v11, v4, :cond_e

    .line 1041
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/status/StatusBarService$PendingOp;

    .line 1042
    .local v12, o:Lcom/android/server/status/StatusBarService$PendingOp;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$H;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v17, v0

    move-object v0, v12

    iget v0, v0, Lcom/android/server/status/StatusBarService$PendingOp;->code:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/android/server/status/StatusBarService;->access$400(Lcom/android/server/status/StatusBarService;I)Z

    move-result v17

    if-nez v17, :cond_7

    move-object v0, v12

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$PendingOp;->key:Landroid/os/IBinder;

    move-object/from16 v17, v0

    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$PendingOp;->key:Landroid/os/IBinder;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 1043
    move-object v0, v12

    iget v0, v0, Lcom/android/server/status/StatusBarService$PendingOp;->code:I

    move/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 1044
    iget-boolean v15, v12, Lcom/android/server/status/StatusBarService$PendingOp;->visible:Z

    .line 1045
    const/4 v9, 0x1

    .line 1056
    :goto_6
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1057
    add-int/lit8 v11, v11, -0x1

    .line 1058
    add-int/lit8 v4, v4, -0x1

    .line 1040
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 1006
    .end local v4           #N:I
    .end local v5           #disableWhat:I
    .end local v6           #doDisable:Z
    .end local v7           #doExpand:Z
    .end local v8           #doOp:Z
    .end local v9           #doVisibility:Z
    .end local v10           #expand:Z
    .end local v11           #i:I
    .end local v12           #o:Lcom/android/server/status/StatusBarService$PendingOp;
    .end local v13           #op:Lcom/android/server/status/StatusBarService$PendingOp;
    .end local v14           #queue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/status/StatusBarService$PendingOp;>;"
    .end local v15           #visible:Z
    .end local v16           #wasExpanded:Z
    :catchall_0
    move-exception v18

    :try_start_1
    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v18

    .line 1026
    .restart local v4       #N:I
    .restart local v5       #disableWhat:I
    .restart local v6       #doDisable:Z
    .restart local v7       #doExpand:Z
    .restart local v8       #doOp:Z
    .restart local v9       #doVisibility:Z
    .restart local v10       #expand:Z
    .restart local v13       #op:Lcom/android/server/status/StatusBarService$PendingOp;
    .restart local v14       #queue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/status/StatusBarService$PendingOp;>;"
    .restart local v15       #visible:Z
    .restart local v16       #wasExpanded:Z
    :cond_8
    move-object v0, v13

    iget v0, v0, Lcom/android/server/status/StatusBarService$PendingOp;->code:I

    move/from16 v17, v0

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 1027
    const/4 v7, 0x1

    .line 1028
    iget-boolean v10, v13, Lcom/android/server/status/StatusBarService$PendingOp;->visible:Z

    goto :goto_4

    .line 1030
    :cond_9
    move-object v0, v13

    iget v0, v0, Lcom/android/server/status/StatusBarService$PendingOp;->code:I

    move/from16 v17, v0

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 1031
    const/4 v7, 0x1

    .line 1032
    if-nez v10, :cond_a

    const/16 v17, 0x1

    move/from16 v10, v17

    :goto_7
    goto :goto_4

    :cond_a
    const/16 v17, 0x0

    move/from16 v10, v17

    goto :goto_7

    .line 1035
    :cond_b
    const/4 v8, 0x1

    goto/16 :goto_4

    .line 1047
    .restart local v11       #i:I
    .restart local v12       #o:Lcom/android/server/status/StatusBarService$PendingOp;
    :cond_c
    move-object v0, v12

    iget v0, v0, Lcom/android/server/status/StatusBarService$PendingOp;->code:I

    move/from16 v17, v0

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 1048
    iget-boolean v10, v12, Lcom/android/server/status/StatusBarService$PendingOp;->visible:Z

    .line 1049
    const/4 v7, 0x1

    goto :goto_6

    .line 1052
    :cond_d
    move-object v0, v12

    iget v0, v0, Lcom/android/server/status/StatusBarService$PendingOp;->code:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object v1, v13

    iput v0, v1, Lcom/android/server/status/StatusBarService$PendingOp;->code:I

    .line 1053
    move-object v0, v12

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$PendingOp;->iconData:Lcom/android/server/status/IconData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v13

    iput-object v0, v1, Lcom/android/server/status/StatusBarService$PendingOp;->iconData:Lcom/android/server/status/IconData;

    .line 1054
    move-object v0, v12

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$PendingOp;->notificationData:Lcom/android/server/status/NotificationData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v13

    iput-object v0, v1, Lcom/android/server/status/StatusBarService$PendingOp;->notificationData:Lcom/android/server/status/NotificationData;

    goto :goto_6

    .line 1063
    .end local v11           #i:I
    .end local v12           #o:Lcom/android/server/status/StatusBarService$PendingOp;
    :cond_e
    const/16 v17, 0x0

    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1064
    add-int/lit8 v4, v4, -0x1

    .line 1066
    if-eqz v8, :cond_f

    .line 1067
    move-object v0, v13

    iget v0, v0, Lcom/android/server/status/StatusBarService$PendingOp;->code:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 1081
    :cond_f
    :goto_8
    :pswitch_0
    if-eqz v9, :cond_6

    move-object v0, v13

    iget v0, v0, Lcom/android/server/status/StatusBarService$PendingOp;->code:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    .line 1082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$H;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v17, v0

    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$PendingOp;->key:Landroid/os/IBinder;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/server/status/StatusBarService;->performSetIconVisibility(Landroid/os/IBinder;Z)V

    goto/16 :goto_3

    .line 1070
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$H;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v17, v0

    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$PendingOp;->key:Landroid/os/IBinder;

    move-object/from16 v18, v0

    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$PendingOp;->iconData:Lcom/android/server/status/IconData;

    move-object/from16 v19, v0

    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$PendingOp;->notificationData:Lcom/android/server/status/NotificationData;

    move-object/from16 v20, v0

    invoke-virtual/range {v17 .. v20}, Lcom/android/server/status/StatusBarService;->performAddUpdateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    goto :goto_8

    .line 1073
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$H;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v17, v0

    move-object v0, v13

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$PendingOp;->key:Landroid/os/IBinder;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/status/StatusBarService;->performRemoveIcon(Landroid/os/IBinder;)V

    goto :goto_8

    .line 1076
    :pswitch_3
    const/4 v6, 0x1

    .line 1077
    iget v5, v13, Lcom/android/server/status/StatusBarService$PendingOp;->integer:I

    goto :goto_8

    .line 1086
    .end local v8           #doOp:Z
    .end local v9           #doVisibility:Z
    .end local v13           #op:Lcom/android/server/status/StatusBarService$PendingOp;
    .end local v15           #visible:Z
    :cond_10
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-eqz v17, :cond_11

    .line 1087
    new-instance v17, Ljava/lang/RuntimeException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Assertion failed: queue.size="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 1089
    :cond_11
    if-eqz v7, :cond_12

    .line 1091
    if-eqz v10, :cond_13

    .line 1092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$H;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/status/StatusBarService;->animateExpand()V

    .line 1097
    :cond_12
    :goto_9
    if-eqz v6, :cond_0

    .line 1098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$H;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/server/status/StatusBarService;->performDisableActions(I)V

    goto/16 :goto_2

    .line 1094
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$H;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/status/StatusBarService;->animateCollapse()V

    goto :goto_9

    .line 1067
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
