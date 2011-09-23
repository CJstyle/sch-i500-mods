.class Lcom/sec/android/app/controlpanel/service/BatteryMonitorService$2;
.super Landroid/os/Handler;
.source "BatteryMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;)V
    .locals 0
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService$2;->this$0:Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 339
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 359
    :goto_0
    return-void

    .line 343
    :pswitch_0
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/sec/android/app/controlpanel/Utils;->hasStorage(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 344
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService$2;->this$0:Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;

    iget-object v1, v1, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 345
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService$2;->this$0:Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->stopSelf()V

    goto :goto_0

    .line 350
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService$2;->this$0:Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;

    invoke-static {v1}, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->access$100(Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;)V

    .line 351
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 352
    .local v0, random:Ljava/util/Random;
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService$2;->this$0:Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;

    invoke-static {v1}, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->access$200(Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;)Landroid/app/AlarmManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x7530

    add-long/2addr v3, v5

    const/16 v5, 0x1388

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iget-object v5, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService$2;->this$0:Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;

    iget-object v5, v5, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->mRunMonitoringIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 355
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService$2;->this$0:Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;

    iget-object v1, v1, Lcom/sec/android/app/controlpanel/service/BatteryMonitorService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 339
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
