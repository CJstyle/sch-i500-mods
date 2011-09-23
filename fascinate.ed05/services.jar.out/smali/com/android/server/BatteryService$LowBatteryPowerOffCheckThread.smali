.class Lcom/android/server/BatteryService$LowBatteryPowerOffCheckThread;
.super Ljava/lang/Thread;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LowBatteryPowerOffCheckThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0
    .parameter

    .prologue
    .line 388
    iput-object p1, p0, Lcom/android/server/BatteryService$LowBatteryPowerOffCheckThread;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 389
    invoke-virtual {p0}, Lcom/android/server/BatteryService$LowBatteryPowerOffCheckThread;->start()V

    .line 390
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 392
    const/4 v1, 0x0

    .line 393
    .local v1, cnt:I
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 394
    .local v4, statusIntent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/BatteryService$LowBatteryPowerOffCheckThread;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v5}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)I

    move-result v3

    .line 396
    .local v3, oldBatteryHealth:I
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/server/BatteryService$LowBatteryPowerOffCheckThread;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v5}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)V

    .line 398
    iget-object v5, p0, Lcom/android/server/BatteryService$LowBatteryPowerOffCheckThread;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v5}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)I

    move-result v5

    if-eq v5, v3, :cond_1

    .line 399
    iget-object v5, p0, Lcom/android/server/BatteryService$LowBatteryPowerOffCheckThread;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v5}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)I

    move-result v3

    .line 400
    iget-object v5, p0, Lcom/android/server/BatteryService$LowBatteryPowerOffCheckThread;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v5}, Lcom/android/server/BatteryService;->access$000(Lcom/android/server/BatteryService;)V

    .line 406
    :cond_1
    const-string v5, "POWER_OFF_TEST"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mBatteryLevel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService$LowBatteryPowerOffCheckThread;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v7}, Lcom/android/server/BatteryService;->access$300(Lcom/android/server/BatteryService;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   mBatteryDecimalPoint = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService$LowBatteryPowerOffCheckThread;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v7}, Lcom/android/server/BatteryService;->access$400(Lcom/android/server/BatteryService;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v5, p0, Lcom/android/server/BatteryService$LowBatteryPowerOffCheckThread;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v5}, Lcom/android/server/BatteryService;->access$300(Lcom/android/server/BatteryService;)I

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/server/BatteryService$LowBatteryPowerOffCheckThread;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v5}, Lcom/android/server/BatteryService;->access$400(Lcom/android/server/BatteryService;)I

    move-result v5

    if-nez v5, :cond_5

    .line 410
    iget-object v5, p0, Lcom/android/server/BatteryService$LowBatteryPowerOffCheckThread;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v5}, Lcom/android/server/BatteryService;->access$500(Lcom/android/server/BatteryService;)I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    iget-object v5, p0, Lcom/android/server/BatteryService$LowBatteryPowerOffCheckThread;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v5}, Lcom/android/server/BatteryService;->access$500(Lcom/android/server/BatteryService;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 412
    :cond_2
    const/4 v1, 0x0

    .line 425
    :goto_1
    const-wide/16 v5, 0x4e20

    :try_start_0
    invoke-static {v5, v6}, Lcom/android/server/BatteryService$LowBatteryPowerOffCheckThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :goto_2
    const/4 v5, 0x5

    if-lt v1, v5, :cond_0

    .line 428
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 430
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.samsungtest.WakeLocknDisableKeyGuard"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 431
    .local v2, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/BatteryService$LowBatteryPowerOffCheckThread;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v5}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 433
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.BATTERY_LOW"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 434
    .local v0, LowAlertDlg:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/BatteryService$LowBatteryPowerOffCheckThread;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v5}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 436
    const-wide/16 v5, 0xfa0

    :try_start_1
    invoke-static {v5, v6}, Lcom/android/server/BatteryService$LowBatteryPowerOffCheckThread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 438
    :goto_3
    iget-object v5, p0, Lcom/android/server/BatteryService$LowBatteryPowerOffCheckThread;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v5}, Lcom/android/server/BatteryService;->access$700(Lcom/android/server/BatteryService;)V

    goto/16 :goto_0

    .line 417
    .end local v0           #LowAlertDlg:Landroid/content/Intent;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 422
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 426
    :catch_0
    move-exception v5

    goto :goto_2

    .line 437
    .restart local v0       #LowAlertDlg:Landroid/content/Intent;
    :catch_1
    move-exception v5

    goto :goto_3
.end method
