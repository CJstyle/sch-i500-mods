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
    .line 1252
    iput-object p1, p0, Lcom/sec/android/app/cradle/CradleMain$2;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1254
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 1256
    .local v3, action:Ljava/lang/String;
    const-string v13, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1257
    const-string v13, "time-zone"

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1258
    .local v12, tz:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleMain$2;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    move-object v13, v0

    new-instance v14, Landroid/text/format/Time;

    invoke-static {v12}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-static {v13, v14}, Lcom/sec/android/app/cradle/CradleMain;->access$002(Lcom/sec/android/app/cradle/CradleMain;Landroid/text/format/Time;)Landroid/text/format/Time;

    .line 1259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleMain$2;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/sec/android/app/cradle/CradleMain;->onTimeChanged()V

    .line 1262
    .end local v12           #tz:Ljava/lang/String;
    :cond_0
    const-string v13, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1263
    const-string v13, "CradleMain"

    const-string v14, "date changed~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleMain$2;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    move-object v13, v0

    invoke-static {v13}, Lcom/sec/android/app/cradle/CradleMain;->access$100(Lcom/sec/android/app/cradle/CradleMain;)Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    .line 1266
    .local v10, time:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleMain$2;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    move-object v13, v0

    invoke-virtual {v13, v10, v11}, Lcom/sec/android/app/cradle/CradleMain;->setDataText(J)V

    .line 1268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleMain$2;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/sec/android/app/cradle/CradleMain;->onTimeChanged()V

    .line 1271
    .end local v10           #time:J
    :cond_1
    const-string v13, "android.intent.action.TIME_TICK"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleMain$2;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/sec/android/app/cradle/CradleMain;->onTimeChanged()V

    .line 1364
    :cond_2
    :goto_0
    return-void

    .line 1274
    :cond_3
    const-string v13, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleMain$2;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    move-object v13, v0

    const-string v14, "status"

    const/4 v15, 0x1

    move-object/from16 v0, p2

    move-object v1, v14

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    const-string v15, "level"

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move-object v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    invoke-static {v13, v14, v15}, Lcom/sec/android/app/cradle/CradleMain;->access$200(Lcom/sec/android/app/cradle/CradleMain;II)V

    goto :goto_0

    .line 1279
    :cond_4
    sget-object v13, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleMain$2;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    move-object v13, v0

    iget-boolean v13, v13, Lcom/sec/android/app/cradle/CradleMain;->mLaunchedFromDock:Z

    if-eqz v13, :cond_2

    .line 1282
    const-string v13, "CradleMain"

    const-string v14, "exit desk mode, should speaker turn off"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleMain$2;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/sec/android/app/cradle/CradleMain;->finish()V

    goto :goto_0

    .line 1296
    :cond_5
    const-string v13, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1298
    const-string v13, "android.intent.extra.DOCK_STATE"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    move-object v1, v13

    move v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 1300
    .local v9, state:I
    const-string v13, "CradleMain"

    const-string v14, "Dock state - ACTION DOCK EVENT"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    const/4 v13, 0x1

    if-ne v9, v13, :cond_7

    .line 1304
    const-string v13, "CradleMain"

    const-string v14, "Dock state - EXTRA_DOCK_STATE_DESK"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleMain$2;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    move-object v13, v0

    iget-object v13, v13, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v14, "cradle_internal_speaker"

    const/4 v15, 0x1

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 1309
    .local v5, isSpeaker:Z
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 1312
    .local v6, sendIntent:Landroid/content/Intent;
    const-string v13, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v6, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1317
    if-eqz v5, :cond_6

    .line 1318
    const/4 v8, 0x0

    .line 1322
    .local v8, speakerState:I
    :goto_1
    const-string v13, "state"

    invoke-virtual {v6, v13, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleMain$2;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/sec/android/app/cradle/CradleMain;->getBaseContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleMain$2;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    move-object v13, v0

    iget-object v13, v13, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 1326
    .local v4, ed:Landroid/content/SharedPreferences$Editor;
    const-string v13, "cradle_connected"

    const/4 v14, 0x1

    invoke-interface {v4, v13, v14}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1327
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1329
    const-string v13, "CradleMain"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "send speaker broadcast state =  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1320
    .end local v4           #ed:Landroid/content/SharedPreferences$Editor;
    .end local v8           #speakerState:I
    :cond_6
    const/4 v8, 0x1

    .restart local v8       #speakerState:I
    goto :goto_1

    .line 1331
    .end local v5           #isSpeaker:Z
    .end local v6           #sendIntent:Landroid/content/Intent;
    .end local v8           #speakerState:I
    :cond_7
    if-nez v9, :cond_2

    .line 1333
    const-string v13, "CradleMain"

    const-string v14, "Dock state - EXTRA_DOCK_STATE_UNDOCKED"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 1337
    .local v7, sintent:Landroid/content/Intent;
    const-string v13, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1339
    const-string v13, "state"

    const/4 v14, 0x0

    invoke-virtual {v7, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleMain$2;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/sec/android/app/cradle/CradleMain;->getBaseContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/CradleMain$2;->this$0:Lcom/sec/android/app/cradle/CradleMain;

    move-object v13, v0

    iget-object v13, v13, Lcom/sec/android/app/cradle/CradleMain;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 1343
    .restart local v4       #ed:Landroid/content/SharedPreferences$Editor;
    const-string v13, "cradle_connected"

    const/4 v14, 0x0

    invoke-interface {v4, v13, v14}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1344
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0
.end method
