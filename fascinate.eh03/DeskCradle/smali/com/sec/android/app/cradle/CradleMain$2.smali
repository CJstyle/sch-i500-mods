.class Lcom/sec/android/app/cradle/CradleMain$2;
.super Landroid/content/BroadcastReceiver;
.source "CradleMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/cradle/CradleMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/cradle/CradleMain;


# direct methods
.method constructor <init>(Lcom/sec/android/app/cradle/CradleMain;)V
    .locals 0
    .parameter

    .prologue
    .line 1436
    iput-object p1, p0, Lcom/sec/android/app/cradle/CradleMain$2;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1438
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1440
    .local v0, action:Ljava/lang/String;
    const-string v9, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1441
    const-string v9, "time-zone"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1442
    .local v8, tz:Ljava/lang/String;
    iget-object v9, p0, Lcom/sec/android/app/cradle/CradleMain$2;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    new-instance v10, Landroid/text/format/Time;

    invoke-static {v8}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v10}, Lcom/sec/android/app/cradle/CradleMain;->access$202(Lcom/sec/android/app/cradle/CradleMain;Landroid/text/format/Time;)Landroid/text/format/Time;

    .line 1443
    iget-object v9, p0, Lcom/sec/android/app/cradle/CradleMain$2;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    invoke-virtual {v9}, Lcom/sec/android/app/cradle/CradleMain;->onTimeChanged()V

    .line 1446
    .end local v8           #tz:Ljava/lang/String;
    :cond_0
    const-string v9, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1447
    const-string v9, "CradleMain"

    const-string v10, "date changed~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    iget-object v9, p0, Lcom/sec/android/app/cradle/CradleMain$2;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    invoke-static {v9}, Lcom/sec/android/app/cradle/CradleMain;->access$300(Lcom/sec/android/app/cradle/CradleMain;)Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    .line 1451
    .local v5, time:J
    const-string v9, "EEEE "

    invoke-static {v9, v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1452
    .local v2, dayweek:Ljava/lang/String;
    iget-object v9, p0, Lcom/sec/android/app/cradle/CradleMain$2;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    invoke-virtual {v9}, Lcom/sec/android/app/cradle/CradleMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    .line 1453
    .local v3, df:Ljava/text/DateFormat;
    iget-object v9, p0, Lcom/sec/android/app/cradle/CradleMain$2;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    invoke-static {v9}, Lcom/sec/android/app/cradle/CradleMain;->access$400(Lcom/sec/android/app/cradle/CradleMain;)Landroid/widget/TextView;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1455
    iget-object v9, p0, Lcom/sec/android/app/cradle/CradleMain$2;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    invoke-static {v9}, Lcom/sec/android/app/cradle/CradleMain;->access$200(Lcom/sec/android/app/cradle/CradleMain;)Landroid/text/format/Time;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 1456
    iget-object v9, p0, Lcom/sec/android/app/cradle/CradleMain$2;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    invoke-virtual {v9}, Lcom/sec/android/app/cradle/CradleMain;->onTimeChanged()V

    .line 1460
    .end local v2           #dayweek:Ljava/lang/String;
    .end local v3           #df:Ljava/text/DateFormat;
    .end local v5           #time:J
    :cond_1
    const-string v9, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1461
    iget-object v9, p0, Lcom/sec/android/app/cradle/CradleMain$2;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    invoke-static {v9}, Lcom/sec/android/app/cradle/CradleMain;->access$200(Lcom/sec/android/app/cradle/CradleMain;)Landroid/text/format/Time;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 1462
    iget-object v9, p0, Lcom/sec/android/app/cradle/CradleMain$2;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    invoke-virtual {v9}, Lcom/sec/android/app/cradle/CradleMain;->onTimeChanged()V

    .line 1575
    :cond_2
    :goto_0
    return-void

    .line 1472
    :cond_3
    sget-object v9, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1475
    const-string v9, "CradleMain"

    const-string v10, "exit desk mode, should speaker turn off"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    iget-object v9, p0, Lcom/sec/android/app/cradle/CradleMain$2;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    invoke-virtual {v9}, Lcom/sec/android/app/cradle/CradleMain;->finish()V

    goto :goto_0

    .line 1489
    :cond_4
    const-string v9, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1491
    const-string v9, "android.intent.extra.DOCK_STATE"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1493
    .local v4, state:I
    const-string v9, "CradleMain"

    const-string v10, "Dock state - ACTION DOCK EVENT"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    const/4 v9, 0x1

    if-ne v4, v9, :cond_6

    .line 1497
    const-string v9, "CradleMain"

    const-string v10, "Dock state - EXTRA_DOCK_STATE_DESK"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    iget-object v9, p0, Lcom/sec/android/app/cradle/CradleMain$2;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    invoke-static {v9}, Lcom/sec/android/app/cradle/CradleMain;->access$100(Lcom/sec/android/app/cradle/CradleMain;)Landroid/widget/Button;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 1500
    iget-object v9, p0, Lcom/sec/android/app/cradle/CradleMain$2;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    invoke-virtual {v9}, Lcom/sec/android/app/cradle/CradleMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "audio"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 1502
    .local v1, audioMgr:Landroid/media/AudioManager;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/media/AudioManager;->isExtraSpeakerDockOn()Z

    move-result v9

    if-nez v9, :cond_5

    .line 1503
    iget-object v9, p0, Lcom/sec/android/app/cradle/CradleMain$2;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/sec/android/app/cradle/CradleMain;->access$502(Lcom/sec/android/app/cradle/CradleMain;Z)Z

    .line 1504
    iget-object v9, p0, Lcom/sec/android/app/cradle/CradleMain$2;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    invoke-static {v9}, Lcom/sec/android/app/cradle/CradleMain;->access$100(Lcom/sec/android/app/cradle/CradleMain;)Landroid/widget/Button;

    move-result-object v9

    const v10, 0x7f020011

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1509
    :goto_1
    iget-object v9, p0, Lcom/sec/android/app/cradle/CradleMain$2;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    const-string v10, "phone"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/cradle/CradleMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 1510
    .local v7, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v9

    if-eqz v9, :cond_2

    .line 1511
    iget-object v9, p0, Lcom/sec/android/app/cradle/CradleMain$2;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    invoke-static {v9}, Lcom/sec/android/app/cradle/CradleMain;->access$100(Lcom/sec/android/app/cradle/CradleMain;)Landroid/widget/Button;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1506
    .end local v7           #tm:Landroid/telephony/TelephonyManager;
    :cond_5
    iget-object v9, p0, Lcom/sec/android/app/cradle/CradleMain$2;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/sec/android/app/cradle/CradleMain;->access$502(Lcom/sec/android/app/cradle/CradleMain;Z)Z

    .line 1507
    iget-object v9, p0, Lcom/sec/android/app/cradle/CradleMain$2;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    invoke-static {v9}, Lcom/sec/android/app/cradle/CradleMain;->access$100(Lcom/sec/android/app/cradle/CradleMain;)Landroid/widget/Button;

    move-result-object v9

    const v10, 0x7f02000a

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    .line 1540
    .end local v1           #audioMgr:Landroid/media/AudioManager;
    :cond_6
    if-nez v4, :cond_2

    .line 1542
    const-string v9, "CradleMain"

    const-string v10, "Dock state - EXTRA_DOCK_STATE_UNDOCKED"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
