.class Lcom/sec/android/app/controlpanel/JobInfoReceiver$1;
.super Landroid/os/Handler;
.source "JobInfoReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/controlpanel/JobInfoReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/controlpanel/JobInfoReceiver;


# direct methods
.method constructor <init>(Lcom/sec/android/app/controlpanel/JobInfoReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/JobInfoReceiver$1;->this$0:Lcom/sec/android/app/controlpanel/JobInfoReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .parameter "msg"

    .prologue
    .line 108
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v13, v0

    packed-switch v13, :pswitch_data_0

    .line 174
    :goto_0
    return-void

    .line 111
    :pswitch_0
    new-instance v4, Landroid/content/Intent;

    const-string v13, "com.sec.android.app.controlpanel.RUNNING_PROGRAM_ACK"

    invoke-direct {v4, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    .local v4, i:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/JobInfoReceiver$1;->this$0:Lcom/sec/android/app/controlpanel/JobInfoReceiver;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/JobInfoReceiver$1;->this$0:Lcom/sec/android/app/controlpanel/JobInfoReceiver;

    move-object v14, v0

    iget-object v14, v14, Lcom/sec/android/app/controlpanel/JobInfoReceiver;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/sec/android/app/controlpanel/PackageInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/PackageInfo;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/app/controlpanel/PackageInfo;->getRunningPackageInfo()Ljava/util/List;

    move-result-object v14

    iput-object v14, v13, Lcom/sec/android/app/controlpanel/JobInfoReceiver;->mRunningApp:Ljava/util/List;

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/JobInfoReceiver$1;->this$0:Lcom/sec/android/app/controlpanel/JobInfoReceiver;

    move-object v13, v0

    iget-object v13, v13, Lcom/sec/android/app/controlpanel/JobInfoReceiver;->mRunningApp:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v8

    .line 115
    .local v8, runningProgram:I
    const-string v13, "running_program"

    invoke-virtual {v4, v13, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/JobInfoReceiver$1;->this$0:Lcom/sec/android/app/controlpanel/JobInfoReceiver;

    move-object v13, v0

    iget-object v13, v13, Lcom/sec/android/app/controlpanel/JobInfoReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/JobInfoReceiver$1;->this$0:Lcom/sec/android/app/controlpanel/JobInfoReceiver;

    move-object v13, v0

    iget-object v13, v13, Lcom/sec/android/app/controlpanel/JobInfoReceiver;->mProcessStats:Lcom/sec/android/app/controlpanel/ProcessStats;

    invoke-virtual {v13}, Lcom/sec/android/app/controlpanel/ProcessStats;->init()V

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/JobInfoReceiver$1;->this$0:Lcom/sec/android/app/controlpanel/JobInfoReceiver;

    move-object v13, v0

    invoke-static {v13}, Lcom/sec/android/app/controlpanel/JobInfoReceiver;->access$000(Lcom/sec/android/app/controlpanel/JobInfoReceiver;)V

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/JobInfoReceiver$1;->this$0:Lcom/sec/android/app/controlpanel/JobInfoReceiver;

    move-object v13, v0

    invoke-static {v13}, Lcom/sec/android/app/controlpanel/JobInfoReceiver;->access$100(Lcom/sec/android/app/controlpanel/JobInfoReceiver;)Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/JobInfoReceiver$1;->this$0:Lcom/sec/android/app/controlpanel/JobInfoReceiver;

    move-object v13, v0

    invoke-static {v13}, Lcom/sec/android/app/controlpanel/JobInfoReceiver;->access$100(Lcom/sec/android/app/controlpanel/JobInfoReceiver;)Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x1

    const-wide/16 v15, 0x7d0

    invoke-virtual/range {v13 .. v16}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 126
    .end local v4           #i:Landroid/content/Intent;
    .end local v8           #runningProgram:I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/JobInfoReceiver$1;->this$0:Lcom/sec/android/app/controlpanel/JobInfoReceiver;

    move-object v13, v0

    invoke-static {v13}, Lcom/sec/android/app/controlpanel/JobInfoReceiver;->access$000(Lcom/sec/android/app/controlpanel/JobInfoReceiver;)V

    .line 128
    const/4 v12, 0x0

    .line 129
    .local v12, total:F
    const/4 v9, 0x0

    .line 130
    .local v9, topCpuUsage:F
    const-string v10, ""

    .line 131
    .local v10, topRunningName:Ljava/lang/String;
    const-string v11, ""

    .line 132
    .local v11, topRunningPackageName:Ljava/lang/String;
    const/4 v6, 0x0

    .line 137
    .local v6, numRunning:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/JobInfoReceiver$1;->this$0:Lcom/sec/android/app/controlpanel/JobInfoReceiver;

    move-object v13, v0

    iget-object v13, v13, Lcom/sec/android/app/controlpanel/JobInfoReceiver;->mRunningApp:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 138
    .local v1, a:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/JobInfoReceiver$1;->this$0:Lcom/sec/android/app/controlpanel/JobInfoReceiver;

    move-object v13, v0

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPid()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/sec/android/app/controlpanel/JobInfoReceiver;->getCpuUsage(I)F

    move-result v3

    .line 139
    .local v3, cpuUsage:F
    add-float/2addr v12, v3

    .line 141
    cmpl-float v13, v3, v9

    if-lez v13, :cond_1

    .line 142
    move v9, v3

    .line 143
    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 146
    :cond_1
    const/4 v13, 0x0

    cmpl-float v13, v3, v13

    if-lez v13, :cond_0

    .line 147
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 151
    .end local v1           #a:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    .end local v3           #cpuUsage:F
    :cond_2
    if-lez v6, :cond_3

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/JobInfoReceiver$1;->this$0:Lcom/sec/android/app/controlpanel/JobInfoReceiver;

    move-object v13, v0

    iget-object v13, v13, Lcom/sec/android/app/controlpanel/JobInfoReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 153
    .local v7, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/JobInfoReceiver$1;->this$0:Lcom/sec/android/app/controlpanel/JobInfoReceiver;

    move-object v13, v0

    iget-object v13, v13, Lcom/sec/android/app/controlpanel/JobInfoReceiver;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/sec/android/app/controlpanel/PackageInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/PackageInfo;

    move-result-object v13

    invoke-virtual {v13, v11}, Lcom/sec/android/app/controlpanel/PackageInfo;->getApplicationInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 154
    .local v2, ai:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v2, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 160
    .end local v2           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v7           #pm:Landroid/content/pm/PackageManager;
    :cond_3
    const/high16 v13, 0x40a0

    cmpl-float v13, v12, v13

    if-lez v13, :cond_4

    .line 161
    new-instance v4, Landroid/content/Intent;

    const-string v13, "com.sec.android.app.controlpanel.CPU_USAGE_WARN"

    invoke-direct {v4, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    .restart local v4       #i:Landroid/content/Intent;
    const-string v13, "cpu_warning"

    const/4 v14, 0x1

    invoke-virtual {v4, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 163
    const-string v13, "cpu_warning_level"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/JobInfoReceiver$1;->this$0:Lcom/sec/android/app/controlpanel/JobInfoReceiver;

    move-object v14, v0

    invoke-static {v14, v12}, Lcom/sec/android/app/controlpanel/JobInfoReceiver;->access$200(Lcom/sec/android/app/controlpanel/JobInfoReceiver;F)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    const-string v13, "cpu_warning_msg"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/JobInfoReceiver$1;->this$0:Lcom/sec/android/app/controlpanel/JobInfoReceiver;

    move-object v14, v0

    invoke-static {v14, v10, v9, v6}, Lcom/sec/android/app/controlpanel/JobInfoReceiver;->access$300(Lcom/sec/android/app/controlpanel/JobInfoReceiver;Ljava/lang/String;FI)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/JobInfoReceiver$1;->this$0:Lcom/sec/android/app/controlpanel/JobInfoReceiver;

    move-object v13, v0

    iget-object v13, v13, Lcom/sec/android/app/controlpanel/JobInfoReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 167
    .end local v4           #i:Landroid/content/Intent;
    :cond_4
    new-instance v4, Landroid/content/Intent;

    const-string v13, "com.sec.android.app.controlpanel.CPU_USAGE_WARN"

    invoke-direct {v4, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    .restart local v4       #i:Landroid/content/Intent;
    const-string v13, "cpu_warning"

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/JobInfoReceiver$1;->this$0:Lcom/sec/android/app/controlpanel/JobInfoReceiver;

    move-object v13, v0

    iget-object v13, v13, Lcom/sec/android/app/controlpanel/JobInfoReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
