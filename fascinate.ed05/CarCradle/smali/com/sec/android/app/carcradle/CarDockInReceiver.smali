.class public Lcom/sec/android/app/carcradle/CarDockInReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CarDockInReceiver.java"


# instance fields
.field private mIsKeyGuardEnable:Z

.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/sec/android/app/carcradle/CarDockInReceiver;->mPrefs:Landroid/content/SharedPreferences;

    .line 35
    iput-object v0, p0, Lcom/sec/android/app/carcradle/CarDockInReceiver;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 36
    iput-object v0, p0, Lcom/sec/android/app/carcradle/CarDockInReceiver;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/carcradle/CarDockInReceiver;->mIsKeyGuardEnable:Z

    return-void
.end method

.method private isHomeOrCradleActivityOnTop(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 90
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 91
    .local v0, actMng:Landroid/app/ActivityManager;
    if-nez v0, :cond_0

    move v2, v4

    .line 101
    .end local p0
    :goto_0
    return v2

    .line 94
    .restart local p0
    :cond_0
    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 95
    .local v1, runningTaskList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-nez v1, :cond_1

    move v2, v4

    .line 96
    goto :goto_0

    .line 98
    :cond_1
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.sec.android.app.twlauncher"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.sec.android.app.carcradle"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v2, v5

    .line 99
    goto :goto_0

    :cond_3
    move v2, v4

    .line 101
    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "data"

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    const-string v11, "cradle_car_connected"

    const-string v9, "CarDockInReceiver"

    .line 41
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/carcradle/CarDockInReceiver;->mPrefs:Landroid/content/SharedPreferences;

    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, action:Ljava/lang/String;
    sget-object v6, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 47
    invoke-virtual {p0, v8}, Lcom/sec/android/app/carcradle/CarDockInReceiver;->setResultCode(I)V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    const-string v6, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 49
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 50
    .local v4, intent:Landroid/content/Intent;
    const-class v6, Lcom/sec/android/app/carcradle/CarCradleMain;

    invoke-virtual {v4, p1, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 51
    const/high16 v6, 0x1000

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 52
    const-string v6, "android.intent.category.CAR_DOCK"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string v6, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 55
    .local v2, dockState:I
    const-string v6, "CarDockInReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dock State: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    if-nez v2, :cond_2

    .line 60
    iget-object v6, p0, Lcom/sec/android/app/carcradle/CarDockInReceiver;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 61
    .local v3, ed:Landroid/content/SharedPreferences$Editor;
    const-string v6, "cradle_car_connected"

    invoke-interface {v3, v11, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 62
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 64
    const-string v6, "audio"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 65
    .local v1, audioMgr:Landroid/media/AudioManager;
    const-string v6, "CarDockInReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isExtraSpeakerDockOn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/media/AudioManager;->isExtraSpeakerDockOn()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {v1}, Landroid/media/AudioManager;->isExtraSpeakerDockOn()Z

    move-result v6

    if-ne v6, v10, :cond_0

    .line 67
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 68
    .local v5, speakerIntent:Landroid/content/Intent;
    const-string v6, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const-string v6, "state"

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    invoke-virtual {p1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 72
    .end local v1           #audioMgr:Landroid/media/AudioManager;
    .end local v3           #ed:Landroid/content/SharedPreferences$Editor;
    .end local v5           #speakerIntent:Landroid/content/Intent;
    :cond_2
    const/4 v6, 0x2

    if-ne v2, v6, :cond_3

    .line 74
    iget-object v6, p0, Lcom/sec/android/app/carcradle/CarDockInReceiver;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 75
    .restart local v3       #ed:Landroid/content/SharedPreferences$Editor;
    const-string v6, "cradle_car_connected"

    invoke-interface {v3, v11, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 76
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 80
    invoke-direct {p0, p1}, Lcom/sec/android/app/carcradle/CarDockInReceiver;->isHomeOrCradleActivityOnTop(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 81
    invoke-virtual {p1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 84
    .end local v3           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_3
    const-string v6, "CarDockInReceiver"

    const-string v6, "Unknown Car Dock State"

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
