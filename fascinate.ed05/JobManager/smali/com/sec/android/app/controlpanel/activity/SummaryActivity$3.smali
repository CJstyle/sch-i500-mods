.class Lcom/sec/android/app/controlpanel/activity/SummaryActivity$3;
.super Ljava/lang/Object;
.source "SummaryActivity.java"

# interfaces
.implements Lcom/sec/android/app/controlpanel/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/controlpanel/activity/SummaryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/controlpanel/activity/SummaryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$3;->this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Lcom/sec/android/app/controlpanel/Observable;)V
    .locals 28
    .parameter "o"

    .prologue
    .line 96
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/sec/android/app/controlpanel/StorageInfo;

    move/from16 v24, v0

    if-eqz v24, :cond_0

    .line 97
    move-object/from16 v0, p1

    check-cast v0, Lcom/sec/android/app/controlpanel/StorageInfo;

    move-object/from16 v23, v0

    .line 99
    .local v23, s:Lcom/sec/android/app/controlpanel/StorageInfo;
    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/controlpanel/StorageInfo;->getUsedSizeOfInternalSdCard()J

    move-result-wide v21

    .line 100
    .local v21, internalSDCardUsed:J
    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/controlpanel/StorageInfo;->getTotalSizeOfInternalSdCard()J

    move-result-wide v19

    .line 102
    .local v19, internalSDCardTotal:J
    const-wide/16 v24, 0x0

    cmp-long v24, v19, v24

    if-nez v24, :cond_2

    .line 103
    const/16 v18, 0x0

    .line 104
    .local v18, internalSDCardPercentage:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$3;->this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;

    move-object/from16 v24, v0

    const v25, 0x7f07002c

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    const v24, -0x777778

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    :goto_0
    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/controlpanel/StorageInfo;->getUsedSizeOfExternalSdCard()J

    move-result-wide v16

    .line 111
    .local v16, externalSDCardUsed:J
    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/controlpanel/StorageInfo;->getTotalSizeOfExternalSdCard()J

    move-result-wide v14

    .line 113
    .local v14, externalSDCardTotal:J
    const-wide/16 v24, 0x0

    cmp-long v24, v14, v24

    if-nez v24, :cond_3

    .line 114
    const/4 v13, 0x0

    .line 115
    .local v13, externalSDCardPercentage:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$3;->this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;

    move-object/from16 v24, v0

    const v25, 0x7f070030

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v24, -0x777778

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    :goto_1
    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/controlpanel/StorageInfo;->getUsedSizeOfData()J

    move-result-wide v6

    .line 122
    .local v6, dataUsed:J
    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/controlpanel/StorageInfo;->getTotalSizeOfData()J

    move-result-wide v4

    .line 124
    .local v4, dataTotal:J
    const-wide/16 v24, 0x0

    cmp-long v24, v4, v24

    if-nez v24, :cond_4

    .line 125
    const/4 v3, 0x0

    .line 130
    .local v3, dataPercentage:I
    :goto_2
    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/controlpanel/StorageInfo;->getUsedSizeOfDBData()J

    move-result-wide v11

    .line 131
    .local v11, dbDataUsed:J
    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/controlpanel/StorageInfo;->getTotalSizeOfDBData()J

    move-result-wide v9

    .line 133
    .local v9, dbDataTotal:J
    const-wide/16 v24, 0x0

    cmp-long v24, v9, v24

    if-nez v24, :cond_5

    .line 134
    const/4 v8, 0x0

    .line 140
    .local v8, dbDataPercentage:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$3;->this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->mInternalSdCard:Landroid/widget/TextView;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$3;->this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->getApplication()Landroid/app/Application;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v21

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$3;->this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->getApplication()Landroid/app/Application;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v19

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$3;->this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->mExternalSdCard:Landroid/widget/TextView;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$3;->this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->getApplication()Landroid/app/Application;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$3;->this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->getApplication()Landroid/app/Application;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide v1, v14

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$3;->this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->mInternalSdProg:Landroid/widget/ProgressBar;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$3;->this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->mExternalSdProg:Landroid/widget/ProgressBar;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$3;->this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->mData:Landroid/widget/TextView;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$3;->this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->getApplication()Landroid/app/Application;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide v1, v6

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$3;->this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->getApplication()Landroid/app/Application;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide v1, v4

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$3;->this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->mDBData:Landroid/widget/TextView;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$3;->this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->getApplication()Landroid/app/Application;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide v1, v11

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$3;->this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->getApplication()Landroid/app/Application;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide v1, v9

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$3;->this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->mDataProg:Landroid/widget/ProgressBar;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$3;->this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->mDBDataProg:Landroid/widget/ProgressBar;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 177
    .end local v3           #dataPercentage:I
    .end local v4           #dataTotal:J
    .end local v6           #dataUsed:J
    .end local v8           #dbDataPercentage:I
    .end local v9           #dbDataTotal:J
    .end local v11           #dbDataUsed:J
    .end local v13           #externalSDCardPercentage:I
    .end local v14           #externalSDCardTotal:J
    .end local v16           #externalSDCardUsed:J
    .end local v18           #internalSDCardPercentage:I
    .end local v19           #internalSDCardTotal:J
    .end local v21           #internalSDCardUsed:J
    .end local v23           #s:Lcom/sec/android/app/controlpanel/StorageInfo;
    :cond_0
    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/controlpanel/Utils;->hasStorage(Z)Z

    move-result v24

    if-nez v24, :cond_1

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$3;->this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;

    move-object/from16 v24, v0

    new-instance v25, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$3;->this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;

    move-object/from16 v26, v0

    const-class v27, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;

    invoke-direct/range {v25 .. v27}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->stopService(Landroid/content/Intent;)Z

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$3;->this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;

    move-object/from16 v24, v0

    const v25, 0x7f060042

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Toast;->show()V

    .line 182
    :cond_1
    return-void

    .line 106
    .restart local v19       #internalSDCardTotal:J
    .restart local v21       #internalSDCardUsed:J
    .restart local v23       #s:Lcom/sec/android/app/controlpanel/StorageInfo;
    .restart local p1
    :cond_2
    const-wide/16 v24, 0x64

    mul-long v24, v24, v21

    div-long v24, v24, v19

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v18, v0

    .line 107
    .restart local v18       #internalSDCardPercentage:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$3;->this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;

    move-object/from16 v24, v0

    const v25, 0x7f07002c

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    const/16 v24, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 117
    .restart local v14       #externalSDCardTotal:J
    .restart local v16       #externalSDCardUsed:J
    :cond_3
    const-wide/16 v24, 0x64

    mul-long v24, v24, v16

    div-long v24, v24, v14

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move v13, v0

    .line 118
    .restart local v13       #externalSDCardPercentage:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/controlpanel/activity/SummaryActivity$3;->this$0:Lcom/sec/android/app/controlpanel/activity/SummaryActivity;

    move-object/from16 v24, v0

    const v25, 0x7f070030

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/controlpanel/activity/SummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/16 v24, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 127
    .restart local v4       #dataTotal:J
    .restart local v6       #dataUsed:J
    :cond_4
    const-wide/16 v24, 0x64

    mul-long v24, v24, v6

    div-long v24, v24, v4

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move v3, v0

    .restart local v3       #dataPercentage:I
    goto/16 :goto_2

    .line 136
    .restart local v9       #dbDataTotal:J
    .restart local v11       #dbDataUsed:J
    :cond_5
    const-wide/16 v24, 0x64

    mul-long v24, v24, v11

    div-long v24, v24, v9

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move v8, v0

    .restart local v8       #dbDataPercentage:I
    goto/16 :goto_3
.end method
