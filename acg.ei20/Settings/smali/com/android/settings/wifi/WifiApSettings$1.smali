.class Lcom/android/settings/wifi/WifiApSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiApSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiApSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 337
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v11, "wifi_state"

    const-string v9, "WifiApSettings"

    .line 340
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 342
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    const-string v7, "wifi_state"

    const/4 v7, 0x6

    invoke-virtual {p2, v11, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/settings/wifi/WifiApSettings;->access$000(Lcom/android/settings/wifi/WifiApSettings;I)V

    .line 345
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v6}, Lcom/android/settings/wifi/WifiApSettings;->access$100(Lcom/android/settings/wifi/WifiApSettings;)V

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 348
    const-string v6, "level"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 349
    .local v2, level:I
    const-string v6, "plugged"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 350
    .local v4, plugged:I
    invoke-static {}, Lcom/android/settings/wifi/WifiApSettings;->access$200()I

    move-result v6

    if-lt v6, v2, :cond_2

    if-nez v4, :cond_2

    iget-object v6, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v6}, Lcom/android/settings/wifi/WifiApSettings;->access$300(Lcom/android/settings/wifi/WifiApSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-nez v6, :cond_2

    .line 351
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v6, v8}, Lcom/android/settings/wifi/WifiApSettings;->access$402(Lcom/android/settings/wifi/WifiApSettings;Z)Z

    .line 352
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v6}, Lcom/android/settings/wifi/WifiApSettings;->access$300(Lcom/android/settings/wifi/WifiApSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 353
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v6}, Lcom/android/settings/wifi/WifiApSettings;->access$300(Lcom/android/settings/wifi/WifiApSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v6

    const v7, 0x7f0905bc

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 358
    :cond_2
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v6}, Lcom/android/settings/wifi/WifiApSettings;->access$400(Lcom/android/settings/wifi/WifiApSettings;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 359
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v6, v7}, Lcom/android/settings/wifi/WifiApSettings;->access$402(Lcom/android/settings/wifi/WifiApSettings;Z)Z

    .line 360
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v6}, Lcom/android/settings/wifi/WifiApSettings;->access$300(Lcom/android/settings/wifi/WifiApSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 361
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v6}, Lcom/android/settings/wifi/WifiApSettings;->access$300(Lcom/android/settings/wifi/WifiApSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 368
    .end local v2           #level:I
    .end local v4           #plugged:I
    :cond_3
    const-string v6, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 369
    const-string v6, "state"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 370
    .local v1, extra:Z
    const/4 v5, 0x0

    .line 371
    .local v5, tempState:I
    if-eqz v1, :cond_4

    .line 372
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v6}, Lcom/android/settings/wifi/WifiApSettings;->access$500(Lcom/android/settings/wifi/WifiApSettings;)Lcom/android/settings/wifi/WifiApEnabler;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settings/wifi/WifiApEnabler;->savePreviousWifiApStateForAirpalenMode()I

    move-result v5

    goto :goto_0

    .line 375
    :cond_4
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v6}, Lcom/android/settings/wifi/WifiApSettings;->access$300(Lcom/android/settings/wifi/WifiApSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 376
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v6}, Lcom/android/settings/wifi/WifiApSettings;->access$500(Lcom/android/settings/wifi/WifiApSettings;)Lcom/android/settings/wifi/WifiApEnabler;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settings/wifi/WifiApEnabler;->getPreviousWifiApStateForAirpalenMode()I

    move-result v5

    .line 377
    if-eq v5, v8, :cond_0

    .line 378
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v6}, Lcom/android/settings/wifi/WifiApSettings;->access$600(Lcom/android/settings/wifi/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v6

    invoke-virtual {v6, v10, v8}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_0

    .line 382
    .end local v1           #extra:Z
    .end local v5           #tempState:I
    :cond_5
    const-string v6, "com/android/settings/wifi.WIFIAPSETTINGS_BATTERY_ALARM"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 384
    const-string v6, "option"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 385
    .local v3, option:I
    if-eqz v3, :cond_0

    .line 387
    const/4 v6, 0x2

    if-eq v3, v6, :cond_0

    .line 389
    if-ne v3, v8, :cond_0

    .line 390
    const-string v6, "WifiApSettings"

    const-string v6, "Alarm expired : WIFIAP_ALARM_EXPIRE!!!!"

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 396
    .end local v3           #option:I
    :cond_6
    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 397
    const-string v6, "WifiApSettings"

    const-string v6, "onReceive:WIFI_STATE_CHANGED_ACTION"

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    const-string v7, "wifi_state"

    const/4 v7, 0x4

    invoke-virtual {p2, v11, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/settings/wifi/WifiApSettings;->access$700(Lcom/android/settings/wifi/WifiApSettings;I)V

    goto/16 :goto_0

    .line 402
    :cond_7
    const-string v6, "android.intent.action.WIFI_AP_STA_STATUS_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 403
    const-string v6, "WifiApSettings"

    const-string v6, "event detected [ACTION_WIFI_AP_STA_STATUS_CHANGED]"

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v6, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v6}, Lcom/android/settings/wifi/WifiApSettings;->access$100(Lcom/android/settings/wifi/WifiApSettings;)V

    goto/16 :goto_0
.end method
