.class Lcom/sec/android/app/controlpanel/service/BatteryMonitorService$RunBackupReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatteryMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunBackupReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;)V
    .locals 0
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService$RunBackupReceiver;->this$0:Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;Lcom/sec/android/app/controlpanel/service/BatteryMonitorService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 335
    invoke-direct {p0, p1}, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService$RunBackupReceiver;-><init>(Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 337
    const-string v1, "com.sec.android.app.controlpanel.intent.RUN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService$RunBackupReceiver;->this$0:Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;

    iget-object v1, v1, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 339
    :try_start_0
    const-string v2, "BatteryMonitor"

    const-string v3, "Running a monitoring"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService$RunBackupReceiver;->this$0:Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;

    iget-object v2, v2, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 343
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService$RunBackupReceiver;->this$0:Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;

    invoke-static {v2}, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->access$300(Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 344
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService$RunBackupReceiver;->this$0:Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;

    invoke-static {v2}, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->access$300(Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 345
    monitor-exit v1

    .line 347
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void

    .line 345
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
