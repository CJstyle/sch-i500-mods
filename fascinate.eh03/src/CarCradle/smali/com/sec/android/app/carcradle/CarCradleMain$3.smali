.class Lcom/sec/android/app/carcradle/CarCradleMain$3;
.super Landroid/content/BroadcastReceiver;
.source "CarCradleMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/carcradle/CarCradleMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/carcradle/CarCradleMain;


# direct methods
.method constructor <init>(Lcom/sec/android/app/carcradle/CarCradleMain;)V
    .locals 0
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lcom/sec/android/app/carcradle/CarCradleMain$3;->this$0:Lcom/sec/android/app/carcradle/CarCradleMain;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 296
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, action:Ljava/lang/String;
    sget-object v8, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 300
    iget-object v8, p0, Lcom/sec/android/app/carcradle/CarCradleMain$3;->this$0:Lcom/sec/android/app/carcradle/CarCradleMain;

    iget-object v8, v8, Lcom/sec/android/app/carcradle/CarCradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v9, "car_cradle_connected"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 302
    .local v2, isDockConnected:Z
    iget-object v8, p0, Lcom/sec/android/app/carcradle/CarCradleMain$3;->this$0:Lcom/sec/android/app/carcradle/CarCradleMain;

    iget-boolean v8, v8, Lcom/sec/android/app/carcradle/CarCradleMain;->mLaunchedFromDock:Z

    if-nez v8, :cond_0

    if-eqz v2, :cond_1

    .line 304
    :cond_0
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 306
    .local v5, sintent:Landroid/content/Intent;
    const-string v8, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    const-string v8, "state"

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 309
    iget-object v8, p0, Lcom/sec/android/app/carcradle/CarCradleMain$3;->this$0:Lcom/sec/android/app/carcradle/CarCradleMain;

    invoke-virtual {v8}, Lcom/sec/android/app/carcradle/CarCradleMain;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 310
    const-string v8, "CarDock"

    const-string v9, "send speaker on broadcast, on Destroy"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    .end local v5           #sintent:Landroid/content/Intent;
    :cond_1
    iget-object v8, p0, Lcom/sec/android/app/carcradle/CarCradleMain$3;->this$0:Lcom/sec/android/app/carcradle/CarCradleMain;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/sec/android/app/carcradle/CarCradleMain;->mLaunchedFromDock:Z

    .line 314
    iget-object v8, p0, Lcom/sec/android/app/carcradle/CarCradleMain$3;->this$0:Lcom/sec/android/app/carcradle/CarCradleMain;

    iget-object v8, v8, Lcom/sec/android/app/carcradle/CarCradleMain;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 315
    .local v1, ed:Landroid/content/SharedPreferences$Editor;
    const-string v8, "car_cradle_connected"

    const/4 v9, 0x0

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 316
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 318
    iget-object v8, p0, Lcom/sec/android/app/carcradle/CarCradleMain$3;->this$0:Lcom/sec/android/app/carcradle/CarCradleMain;

    invoke-virtual {v8}, Lcom/sec/android/app/carcradle/CarCradleMain;->releaseReceiver()V

    .line 319
    iget-object v8, p0, Lcom/sec/android/app/carcradle/CarCradleMain$3;->this$0:Lcom/sec/android/app/carcradle/CarCradleMain;

    invoke-virtual {v8}, Lcom/sec/android/app/carcradle/CarCradleMain;->finish()V

    .line 372
    .end local v1           #ed:Landroid/content/SharedPreferences$Editor;
    .end local v2           #isDockConnected:Z
    :cond_2
    :goto_0
    return-void

    .line 321
    :cond_3
    const-string v8, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 323
    const-string v8, "android.intent.extra.DOCK_STATE"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 325
    .local v7, state:I
    const-string v8, "CarDock"

    const-string v9, "Dock state - ACTION CAR DOCK EVENT"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    .line 329
    const-string v8, "CarDock"

    const-string v9, "Dock state - EXTRA_DOCK_STATE_DESK"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v8, p0, Lcom/sec/android/app/carcradle/CarCradleMain$3;->this$0:Lcom/sec/android/app/carcradle/CarCradleMain;

    iget-object v8, v8, Lcom/sec/android/app/carcradle/CarCradleMain;->mPrefs:Landroid/content/SharedPreferences;

    const-string v9, "cradle_internal_speaker"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 334
    .local v3, isSpeaker:Z
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 337
    .local v4, sendIntent:Landroid/content/Intent;
    const-string v8, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    if-eqz v3, :cond_4

    .line 343
    const/4 v6, 0x0

    .line 347
    .local v6, speakerState:I
    :goto_1
    const-string v8, "state"

    invoke-virtual {v4, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 348
    iget-object v8, p0, Lcom/sec/android/app/carcradle/CarCradleMain$3;->this$0:Lcom/sec/android/app/carcradle/CarCradleMain;

    invoke-virtual {v8}, Lcom/sec/android/app/carcradle/CarCradleMain;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 350
    iget-object v8, p0, Lcom/sec/android/app/carcradle/CarCradleMain$3;->this$0:Lcom/sec/android/app/carcradle/CarCradleMain;

    iget-object v8, v8, Lcom/sec/android/app/carcradle/CarCradleMain;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 351
    .restart local v1       #ed:Landroid/content/SharedPreferences$Editor;
    const-string v8, "car_cradle_connected"

    const/4 v9, 0x1

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 352
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 354
    const-string v8, "CarDock"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "send speaker broadcast state =  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 345
    .end local v1           #ed:Landroid/content/SharedPreferences$Editor;
    .end local v6           #speakerState:I
    :cond_4
    const/4 v6, 0x1

    .restart local v6       #speakerState:I
    goto :goto_1

    .line 356
    .end local v3           #isSpeaker:Z
    .end local v4           #sendIntent:Landroid/content/Intent;
    .end local v6           #speakerState:I
    :cond_5
    if-nez v7, :cond_2

    .line 358
    const-string v8, "CarDock"

    const-string v9, "Dock state - EXTRA_DOCK_STATE_UNDOCKED"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 362
    .restart local v5       #sintent:Landroid/content/Intent;
    const-string v8, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    const-string v8, "state"

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 365
    iget-object v8, p0, Lcom/sec/android/app/carcradle/CarCradleMain$3;->this$0:Lcom/sec/android/app/carcradle/CarCradleMain;

    invoke-virtual {v8}, Lcom/sec/android/app/carcradle/CarCradleMain;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 367
    iget-object v8, p0, Lcom/sec/android/app/carcradle/CarCradleMain$3;->this$0:Lcom/sec/android/app/carcradle/CarCradleMain;

    iget-object v8, v8, Lcom/sec/android/app/carcradle/CarCradleMain;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 368
    .restart local v1       #ed:Landroid/content/SharedPreferences$Editor;
    const-string v8, "car_cradle_connected"

    const/4 v9, 0x0

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 369
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0
.end method
