.class Lcom/android/server/status/StatusBarService$29;
.super Ljava/lang/Object;
.source "StatusBarService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/status/StatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/status/StatusBarService;


# direct methods
.method constructor <init>(Lcom/android/server/status/StatusBarService;)V
    .locals 0
    .parameter

    .prologue
    .line 3539
    iput-object p1, p0, Lcom/android/server/status/StatusBarService$29;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 3540
    const-string v18, "StatusBar"

    const-string v19, "mTTSWork"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3542
    const/4 v11, 0x0

    .line 3543
    .local v11, phoneEvent:Z
    const/4 v7, 0x0

    .line 3544
    .local v7, mmsEvent:Z
    const/4 v14, 0x0

    .line 3547
    .local v14, scheduleEvent:Z
    const/4 v5, 0x0

    .line 3549
    .local v5, eventNum:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$29;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v18, v0

    const-string v19, "com.android.phone"

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Lcom/android/server/status/StatusBarService;->access$1900(Lcom/android/server/status/StatusBarService;Ljava/lang/String;I)I

    move-result v12

    .line 3550
    .local v12, phoneIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$29;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v18, v0

    const-string v19, "com.android.mms"

    const/16 v20, 0x7b

    invoke-static/range {v18 .. v20}, Lcom/android/server/status/StatusBarService;->access$1900(Lcom/android/server/status/StatusBarService;Ljava/lang/String;I)I

    move-result v8

    .line 3551
    .local v8, mmsIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$29;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v18, v0

    const-string v19, "com.android.calendar"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Lcom/android/server/status/StatusBarService;->access$1900(Lcom/android/server/status/StatusBarService;Ljava/lang/String;I)I

    move-result v15

    .line 3555
    .local v15, scheduleIndex:I
    if-ltz v12, :cond_0

    .line 3556
    add-int/lit8 v5, v5, 0x1

    .line 3557
    const/4 v11, 0x1

    .line 3559
    :cond_0
    if-ltz v8, :cond_1

    .line 3560
    add-int/lit8 v5, v5, 0x1

    .line 3561
    const/4 v7, 0x1

    .line 3563
    :cond_1
    if-ltz v15, :cond_2

    .line 3564
    add-int/lit8 v5, v5, 0x1

    .line 3565
    const/4 v14, 0x1

    .line 3569
    :cond_2
    const/16 v17, 0x0

    .line 3571
    .local v17, ttsText:Ljava/lang/String;
    if-nez v5, :cond_6

    .line 3572
    const-string v18, "StatusBar"

    const-string v19, "mTTSWork-No Missed Message"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$29;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x2080010

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 3633
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$29;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mTts:Landroid/speech/tts/TextToSpeech;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    .line 3635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$29;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mTts:Landroid/speech/tts/TextToSpeech;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 3636
    const-string v18, "StatusBar"

    const-string v19, "mTTSWork-stop"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$29;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mTts:Landroid/speech/tts/TextToSpeech;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 3641
    :cond_4
    const-string v18, "StatusBar"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mTTSWork-ttsText:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$29;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mTts:Landroid/speech/tts/TextToSpeech;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 3644
    :cond_5
    return-void

    .line 3575
    :cond_6
    const/16 v18, 0x1

    move v0, v5

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 3576
    const-string v18, "StatusBar"

    const-string v19, "mTTSWork-Single Message"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3578
    const/4 v4, -0x1

    .line 3579
    .local v4, count:I
    const/16 v16, 0x0

    .line 3581
    .local v16, ttsFormat:Ljava/lang/String;
    if-eqz v11, :cond_8

    .line 3582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$29;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v12

    invoke-static {v0, v1}, Lcom/android/server/status/StatusBarService;->access$2000(Lcom/android/server/status/StatusBarService;I)I

    move-result v4

    .line 3584
    const/16 v18, 0x1

    move v0, v4

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 3585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$29;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x2080011

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 3586
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$29;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v12

    invoke-static {v0, v1}, Lcom/android/server/status/StatusBarService;->access$2100(Lcom/android/server/status/StatusBarService;I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$29;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v12

    invoke-static {v0, v1}, Lcom/android/server/status/StatusBarService;->access$2200(Lcom/android/server/status/StatusBarService;I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_0

    .line 3588
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$29;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x208001a

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 3589
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_0

    .line 3591
    :cond_8
    if-eqz v7, :cond_a

    .line 3592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$29;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v8

    invoke-static {v0, v1}, Lcom/android/server/status/StatusBarService;->access$2000(Lcom/android/server/status/StatusBarService;I)I

    move-result v4

    .line 3594
    const/16 v18, 0x1

    move v0, v4

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 3595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$29;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x2080012

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 3596
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$29;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v8

    invoke-static {v0, v1}, Lcom/android/server/status/StatusBarService;->access$2100(Lcom/android/server/status/StatusBarService;I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$29;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v8

    invoke-static {v0, v1}, Lcom/android/server/status/StatusBarService;->access$2200(Lcom/android/server/status/StatusBarService;I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_0

    .line 3598
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$29;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x208001b

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 3599
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_0

    .line 3601
    :cond_a
    if-eqz v14, :cond_3

    .line 3602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$29;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v15

    invoke-static {v0, v1}, Lcom/android/server/status/StatusBarService;->access$2000(Lcom/android/server/status/StatusBarService;I)I

    move-result v4

    .line 3604
    const/16 v18, 0x1

    move v0, v4

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 3605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$29;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x2080013

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 3606
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$29;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v15

    invoke-static {v0, v1}, Lcom/android/server/status/StatusBarService;->access$2300(Lcom/android/server/status/StatusBarService;I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_0

    .line 3608
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$29;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x208001c

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 3609
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_0

    .line 3613
    .end local v4           #count:I
    .end local v16           #ttsFormat:Ljava/lang/String;
    :cond_c
    const-string v18, "StatusBar"

    const-string v19, "mTTSWork-Multi Messages"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3615
    const/4 v10, 0x0

    .line 3616
    .local v10, phoneCount:I
    const/4 v6, 0x0

    .line 3617
    .local v6, mmsCount:I
    const/4 v13, 0x0

    .line 3619
    .local v13, scheduleCount:I
    if-eqz v11, :cond_d

    .line 3620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$29;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v12

    invoke-static {v0, v1}, Lcom/android/server/status/StatusBarService;->access$2000(Lcom/android/server/status/StatusBarService;I)I

    move-result v10

    .line 3622
    :cond_d
    if-eqz v7, :cond_e

    .line 3623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$29;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v8

    invoke-static {v0, v1}, Lcom/android/server/status/StatusBarService;->access$2000(Lcom/android/server/status/StatusBarService;I)I

    move-result v6

    .line 3625
    :cond_e
    if-eqz v14, :cond_f

    .line 3626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$29;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v15

    invoke-static {v0, v1}, Lcom/android/server/status/StatusBarService;->access$2000(Lcom/android/server/status/StatusBarService;I)I

    move-result v13

    .line 3629
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$29;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x2080014

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3630
    .local v9, multiFormat:Ljava/lang/String;
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_0
.end method
