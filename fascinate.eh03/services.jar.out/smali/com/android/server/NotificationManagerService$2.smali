.class Lcom/android/server/NotificationManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 359
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 25
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 362
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 363
    .local v5, action:Ljava/lang/String;
    const/16 v17, 0x0

    .line 365
    .local v17, queryRestart:Z
    const-string v21, "android.intent.action.BATTERY_CHANGED"

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 366
    const-string v21, "plugged"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    if-eqz v21, :cond_4

    const/16 v21, 0x1

    move/from16 v8, v21

    .line 367
    .local v8, batteryCharging:Z
    :goto_0
    const-string v21, "level"

    const/16 v22, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 368
    .local v14, level:I
    if-ltz v14, :cond_5

    const/16 v21, 0xa

    move v0, v14

    move/from16 v1, v21

    if-gt v0, v1, :cond_5

    const/16 v21, 0x1

    move/from16 v10, v21

    .line 369
    .local v10, batteryLow:Z
    :goto_1
    const-string v21, "status"

    const/16 v22, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 370
    .local v18, status:I
    const/16 v21, 0x5

    move/from16 v0, v18

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    const/16 v21, 0x5a

    move v0, v14

    move/from16 v1, v21

    if-lt v0, v1, :cond_6

    :cond_0
    const/16 v21, 0x1

    move/from16 v9, v21

    .line 372
    .local v9, batteryFull:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/NotificationManagerService;->access$1100(Lcom/android/server/NotificationManagerService;)Z

    move-result v21

    move v0, v8

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/NotificationManagerService;->access$1200(Lcom/android/server/NotificationManagerService;)Z

    move-result v21

    move v0, v10

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/NotificationManagerService;->access$1300(Lcom/android/server/NotificationManagerService;)Z

    move-result v21

    move v0, v9

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    .line 375
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v8

    invoke-static {v0, v1}, Lcom/android/server/NotificationManagerService;->access$1102(Lcom/android/server/NotificationManagerService;Z)Z

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v10

    invoke-static {v0, v1}, Lcom/android/server/NotificationManagerService;->access$1202(Lcom/android/server/NotificationManagerService;Z)Z

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v9

    invoke-static {v0, v1}, Lcom/android/server/NotificationManagerService;->access$1302(Lcom/android/server/NotificationManagerService;Z)Z

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/NotificationManagerService;->access$1400(Lcom/android/server/NotificationManagerService;)V

    .line 381
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v21, v0

    const-string v22, "plugged"

    const/16 v23, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/NotificationManagerService;->access$1502(Lcom/android/server/NotificationManagerService;I)I

    .line 440
    .end local v8           #batteryCharging:Z
    .end local v9           #batteryFull:Z
    .end local v10           #batteryLow:Z
    .end local v14           #level:I
    .end local v18           #status:I
    :cond_3
    :goto_3
    return-void

    .line 366
    :cond_4
    const/16 v21, 0x0

    move/from16 v8, v21

    goto/16 :goto_0

    .line 368
    .restart local v8       #batteryCharging:Z
    .restart local v14       #level:I
    :cond_5
    const/16 v21, 0x0

    move/from16 v10, v21

    goto/16 :goto_1

    .line 370
    .restart local v10       #batteryLow:Z
    .restart local v18       #status:I
    :cond_6
    const/16 v21, 0x0

    move/from16 v9, v21

    goto/16 :goto_2

    .line 383
    .end local v8           #batteryCharging:Z
    .end local v10           #batteryLow:Z
    .end local v14           #level:I
    .end local v18           #status:I
    :cond_7
    const-string v21, "android.hardware.usb.action.USB_STATE"

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 384
    const-string v21, "Tag"

    const-string v22, "Inside ACTION_USB_STATE"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    .line 386
    .local v11, extras:Landroid/os/Bundle;
    const-string v21, "connected"

    move-object v0, v11

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v20

    .line 387
    .local v20, usbConnected:Z
    const-string v21, "enabled"

    const-string v22, "adb"

    move-object v0, v11

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 389
    .local v6, adbEnabled:Z
    const-string v21, "NotificationService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "onReceive :: ACTION_USB_STATE ... usbConnected ="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", adbEnabled = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v21, v0

    if-eqz v20, :cond_8

    if-eqz v6, :cond_8

    const/16 v22, 0x1

    :goto_4
    invoke-static/range {v21 .. v22}, Lcom/android/server/NotificationManagerService;->access$1600(Lcom/android/server/NotificationManagerService;Z)V

    goto :goto_3

    :cond_8
    const/16 v22, 0x0

    goto :goto_4

    .line 398
    .end local v6           #adbEnabled:Z
    .end local v11           #extras:Landroid/os/Bundle;
    .end local v20           #usbConnected:Z
    :cond_9
    const-string v21, "android.intent.action.PACKAGE_REMOVED"

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_a

    const-string v21, "android.intent.action.PACKAGE_RESTARTED"

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_a

    const-string v21, "android.intent.action.QUERY_PACKAGE_RESTART"

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_a

    const-string v21, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 402
    :cond_a
    const/4 v15, 0x0

    .line 403
    .local v15, pkgList:[Ljava/lang/String;
    const-string v21, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 404
    const-string v21, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 418
    :goto_5
    if-eqz v15, :cond_3

    move-object v0, v15

    array-length v0, v0

    move/from16 v21, v0

    if-lez v21, :cond_3

    .line 419
    move-object v7, v15

    .local v7, arr$:[Ljava/lang/String;
    array-length v13, v7

    .local v13, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_6
    if-ge v12, v13, :cond_3

    aget-object v16, v7, v12

    .line 420
    .local v16, pkgName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    if-nez v17, :cond_d

    const/16 v24, 0x1

    :goto_7
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/NotificationManagerService;->cancelAllNotificationsInt(Ljava/lang/String;IIZ)Z

    .line 419
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 405
    .end local v7           #arr$:[Ljava/lang/String;
    .end local v12           #i$:I
    .end local v13           #len$:I
    .end local v16           #pkgName:Ljava/lang/String;
    :cond_b
    if-eqz v17, :cond_c

    .line 406
    const-string v21, "android.intent.extra.PACKAGES"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    goto :goto_5

    .line 408
    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v19

    .line 409
    .local v19, uri:Landroid/net/Uri;
    if-eqz v19, :cond_3

    .line 412
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v16

    .line 413
    .restart local v16       #pkgName:Ljava/lang/String;
    if-eqz v16, :cond_3

    .line 416
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object v15, v0

    .end local v15           #pkgList:[Ljava/lang/String;
    const/16 v21, 0x0

    aput-object v16, v15, v21

    .restart local v15       #pkgList:[Ljava/lang/String;
    goto :goto_5

    .line 420
    .end local v19           #uri:Landroid/net/Uri;
    .restart local v7       #arr$:[Ljava/lang/String;
    .restart local v12       #i$:I
    .restart local v13       #len$:I
    :cond_d
    const/16 v24, 0x0

    goto :goto_7

    .line 423
    .end local v7           #arr$:[Ljava/lang/String;
    .end local v12           #i$:I
    .end local v13           #len$:I
    .end local v15           #pkgList:[Ljava/lang/String;
    .end local v16           #pkgName:Ljava/lang/String;
    :cond_e
    const-string v21, "android.intent.action.SCREEN_ON"

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-static/range {v21 .. v22}, Lcom/android/server/NotificationManagerService;->access$1702(Lcom/android/server/NotificationManagerService;Z)Z

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/NotificationManagerService;->access$1800(Lcom/android/server/NotificationManagerService;)V

    goto/16 :goto_3

    .line 426
    :cond_f
    const-string v21, "android.intent.action.SCREEN_OFF"

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/android/server/NotificationManagerService;->access$1702(Lcom/android/server/NotificationManagerService;Z)Z

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/NotificationManagerService;->access$1800(Lcom/android/server/NotificationManagerService;)V

    goto/16 :goto_3

    .line 429
    :cond_10
    const-string v21, "android.intent.action.PHONE_STATE"

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_11

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v21, v0

    const-string v22, "state"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    sget-object v23, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/NotificationManagerService;->access$1902(Lcom/android/server/NotificationManagerService;Z)Z

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/NotificationManagerService;->access$1800(Lcom/android/server/NotificationManagerService;)V

    goto/16 :goto_3

    .line 432
    :cond_11
    const-string v21, "android.intent.action.CONFIGURATION_CHANGED"

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "adb_enabled"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    if-eqz v21, :cond_12

    const/16 v21, 0x1

    move/from16 v6, v21

    .line 435
    .restart local v6       #adbEnabled:Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/NotificationManagerService;->access$1500(Lcom/android/server/NotificationManagerService;)I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    if-eqz v6, :cond_3

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/android/server/NotificationManagerService;->access$2002(Lcom/android/server/NotificationManagerService;Z)Z

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService$2;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v6

    invoke-static {v0, v1}, Lcom/android/server/NotificationManagerService;->access$1600(Lcom/android/server/NotificationManagerService;Z)V

    goto/16 :goto_3

    .line 433
    .end local v6           #adbEnabled:Z
    :cond_12
    const/16 v21, 0x0

    move/from16 v6, v21

    goto :goto_8
.end method
