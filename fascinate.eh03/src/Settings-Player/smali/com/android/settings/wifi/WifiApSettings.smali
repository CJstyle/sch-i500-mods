.class public Lcom/android/settings/wifi/WifiApSettings;
.super Landroid/preference/PreferenceActivity;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;
    }
.end annotation


# static fields
.field private static mLowBatteryLevel:I


# instance fields
.field private WifiDisconnectMode:I

.field private bLowBattery:Z

.field private bNoSim:Z

.field private bOutOfCoverage:Z

.field private bRoaming:Z

.field private defaultSsid:Ljava/lang/String;

.field private displayToastFlag:Z

.field private isHide:Z

.field private mConfigMode:I

.field private mConnectedDevices:Landroid/preference/PreferenceCategory;

.field private mCurrentOrientation:I

.field private mDialog:Lcom/android/settings/wifi/WifiApDialog;

.field private mDisconnectDelayThread:Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;

.field private mEnableWifiAp:Landroid/preference/CheckBoxPreference;

.field private mFootView:Landroid/widget/LinearLayout;

.field private mHelpImage:Landroid/widget/ImageView;

.field private mHelpOrientTitle:Landroid/widget/TextView;

.field private mHelpTitle:Landroid/widget/TextView;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mListView:Landroid/widget/ListView;

.field private mNetworkSettings:Landroid/preference/Preference;

.field private mOrientedFootView:Landroid/widget/LinearLayout;

.field private mOrientedHelpImage:Landroid/widget/ImageView;

.field private mOrientedWifiApHelpText:Landroid/widget/TextView;

.field private mPowerModeValue:I

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mProgressDialog2:Landroid/app/ProgressDialog;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSecurityType:[Ljava/lang/String;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mView:Landroid/view/View;

.field private mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

.field private mWifiApHelpText:Landroid/widget/TextView;

.field private mWifiApSettings:Landroid/preference/PreferenceScreen;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWindowManager:Landroid/view/WindowManager;

.field phoneStateListener:Landroid/telephony/PhoneStateListener;

.field private prefs:Landroid/content/SharedPreferences;

.field private rememberedPassword:Ljava/lang/String;

.field private rememberedSecurity:I

.field private rememberedSsid:Ljava/lang/String;

.field private ssid_warn:Z

.field private wifiEnabled:I

.field private wifi_turn_off_processing:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 127
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 204
    iput v1, p0, Lcom/android/settings/wifi/WifiApSettings;->WifiDisconnectMode:I

    .line 209
    iput v1, p0, Lcom/android/settings/wifi/WifiApSettings;->wifi_turn_off_processing:I

    .line 261
    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 264
    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDisconnectDelayThread:Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;

    .line 281
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiApSettings;->bRoaming:Z

    .line 282
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiApSettings;->bNoSim:Z

    .line 283
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiApSettings;->bOutOfCoverage:Z

    .line 284
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiApSettings;->bLowBattery:Z

    .line 328
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->defaultSsid:Ljava/lang/String;

    .line 330
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiApSettings;->displayToastFlag:Z

    .line 334
    new-instance v0, Lcom/android/settings/wifi/WifiApSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApSettings$1;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 555
    new-instance v0, Lcom/android/settings/wifi/WifiApSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApSettings$2;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 2566
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiApSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiApSettings;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiApSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->updateConnectedDevices()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/WifiApSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiApSettings;->bNoSim:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/settings/wifi/WifiApSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput p1, p0, Lcom/android/settings/wifi/WifiApSettings;->wifi_turn_off_processing:I

    return p1
.end method

.method static synthetic access$1202(Lcom/android/settings/wifi/WifiApSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiApSettings;->displayToastFlag:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/wifi/WifiApSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->displayConfigureFinishedToast()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/wifi/WifiApSettings;)Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDisconnectDelayThread:Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/settings/wifi/WifiApSettings;Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;)Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApSettings;->mDisconnectDelayThread:Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/settings/wifi/WifiApSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mConfigMode:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/settings/wifi/WifiApSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput p1, p0, Lcom/android/settings/wifi/WifiApSettings;->mConfigMode:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/settings/wifi/WifiApSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget v0, p0, Lcom/android/settings/wifi/WifiApSettings;->wifiEnabled:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/settings/wifi/WifiApSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput p1, p0, Lcom/android/settings/wifi/WifiApSettings;->WifiDisconnectMode:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/settings/wifi/WifiApSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiApSettings;->savePreference(I)V

    return-void
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 127
    sget v0, Lcom/android/settings/wifi/WifiApSettings;->mLowBatteryLevel:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/settings/wifi/WifiApSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSsid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings/wifi/WifiApSettings;)Lcom/android/settings/wifi/WifiApDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/settings/wifi/WifiApSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/settings/wifi/WifiApSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget v0, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSecurity:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/settings/wifi/WifiApSettings;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiApSettings;->getBatteryManageTime(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/settings/wifi/WifiApSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mPowerModeValue:I

    return v0
.end method

.method static synthetic access$2502(Lcom/android/settings/wifi/WifiApSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput p1, p0, Lcom/android/settings/wifi/WifiApSettings;->mPowerModeValue:I

    return p1
.end method

.method static synthetic access$2600(Lcom/android/settings/wifi/WifiApSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->getDisplayFlags()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/settings/wifi/WifiApSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiApSettings;->loadPreference(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiApSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiApSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiApSettings;->bLowBattery:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings/wifi/WifiApSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiApSettings;->bLowBattery:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiApSettings;)Lcom/android/settings/wifi/WifiApEnabler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiApSettings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WifiApSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiApSettings;->handleWifiStateChanged(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/WifiApSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiApSettings;->bRoaming:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/settings/wifi/WifiApSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiApSettings;->bRoaming:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/WifiApSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiApSettings;->bOutOfCoverage:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/settings/wifi/WifiApSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiApSettings;->bOutOfCoverage:Z

    return p1
.end method

.method private addIntentFilter()V
    .locals 2

    .prologue
    .line 539
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 540
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 541
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 546
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 547
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com/android/settings/wifi.WIFIAPSETTINGS_BATTERY_ALARM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.WIFI_AP_STA_STATUS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 553
    return-void
.end method

.method private displayConfigureFinishedToast()V
    .locals 2

    .prologue
    .line 2747
    const v0, 0x7f0901de

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2748
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2749
    return-void
.end method

.method private getBatteryManageTime(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 2677
    packed-switch p1, :pswitch_data_0

    .line 2697
    const/4 v0, 0x0

    .line 2700
    .local v0, sec:I
    :goto_0
    return v0

    .line 2679
    .end local v0           #sec:I
    :pswitch_0
    const/4 v0, 0x0

    .line 2680
    .restart local v0       #sec:I
    goto :goto_0

    .line 2682
    .end local v0           #sec:I
    :pswitch_1
    const/16 v0, 0x12c

    .line 2683
    .restart local v0       #sec:I
    goto :goto_0

    .line 2685
    .end local v0           #sec:I
    :pswitch_2
    const/16 v0, 0x258

    .line 2686
    .restart local v0       #sec:I
    goto :goto_0

    .line 2688
    .end local v0           #sec:I
    :pswitch_3
    const/16 v0, 0x4b0

    .line 2689
    .restart local v0       #sec:I
    goto :goto_0

    .line 2691
    .end local v0           #sec:I
    :pswitch_4
    const/16 v0, 0x708

    .line 2692
    .restart local v0       #sec:I
    goto :goto_0

    .line 2694
    .end local v0           #sec:I
    :pswitch_5
    const/16 v0, 0xe10

    .line 2695
    .restart local v0       #sec:I
    goto :goto_0

    .line 2677
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getBatterySpinnerPosition()I
    .locals 2

    .prologue
    .line 2643
    const/4 v0, 0x0

    .line 2645
    .local v0, position:I
    iget v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mPowerModeValue:I

    sparse-switch v1, :sswitch_data_0

    .line 2665
    const/4 v0, 0x0

    .line 2669
    :goto_0
    return v0

    .line 2647
    :sswitch_0
    const/4 v0, 0x0

    .line 2648
    goto :goto_0

    .line 2650
    :sswitch_1
    const/4 v0, 0x1

    .line 2651
    goto :goto_0

    .line 2653
    :sswitch_2
    const/4 v0, 0x2

    .line 2654
    goto :goto_0

    .line 2656
    :sswitch_3
    const/4 v0, 0x3

    .line 2657
    goto :goto_0

    .line 2659
    :sswitch_4
    const/4 v0, 0x4

    .line 2660
    goto :goto_0

    .line 2662
    :sswitch_5
    const/4 v0, 0x5

    .line 2663
    goto :goto_0

    .line 2645
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12c -> :sswitch_1
        0x258 -> :sswitch_2
        0x4b0 -> :sswitch_3
        0x708 -> :sswitch_4
        0xe10 -> :sswitch_5
    .end sparse-switch
.end method

.method private getDisplayFlags()V
    .locals 3

    .prologue
    .line 2524
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2526
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const-string v2, "wifi_ap_dont_display_checked_flag"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->Dont_display_checked_flag:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2533
    :goto_0
    return-void

    .line 2528
    :catch_0
    move-exception v0

    .line 2529
    const-string v0, "WifiApSettings"

    const-string v1, "AP settings not found, returning"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2530
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x0

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->Dont_display_checked_flag:I

    goto :goto_0
.end method

.method private getWhiteListMac()V
    .locals 4

    .prologue
    const-string v3, "WifiApSettings"

    .line 2539
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2540
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const-string v2, "mifi_ap_white_mac_addr"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->whiteMacAddr:Ljava/lang/String;

    .line 2541
    const-string v1, "WifiApSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWhiteListMac : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->whiteMacAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2543
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const-string v2, "mifi_ap_white_mac_cnt"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->whiteMacCnt:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2550
    :goto_0
    return-void

    .line 2544
    :catch_0
    move-exception v0

    .line 2545
    const-string v0, "WifiApSettings"

    const-string v0, "AP settings not found, returning"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2546
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x0

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->whiteMacCnt:I

    goto :goto_0
.end method

.method private handleWifiApStateChanged(I)V
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f0905d3

    const/4 v1, 0x0

    .line 2396
    packed-switch p1, :pswitch_data_0

    .line 2429
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2398
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->setHelpMessage()V

    .line 2399
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 2400
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2402
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog2:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 2403
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog2:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2405
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiApSettings;->displayToastFlag:Z

    if-eqz v0, :cond_0

    .line 2406
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->displayConfigureFinishedToast()V

    .line 2407
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiApSettings;->displayToastFlag:Z

    goto :goto_0

    .line 2414
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mHelpImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2415
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedHelpImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2417
    const v0, 0x7f0905cd

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2418
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mHelpTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 2419
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mHelpTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2420
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mHelpOrientTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 2421
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mHelpOrientTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2422
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApHelpText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedWifiApHelpText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 2423
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApHelpText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2424
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedWifiApHelpText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2396
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleWifiStateChanged(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v5, "Turn Mobile AP on"

    const-string v1, "WifiApSettings"

    .line 2445
    const-string v0, "WifiApSettings"

    const-string v0, "handleWifiStateChanged"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2447
    iput p1, p0, Lcom/android/settings/wifi/WifiApSettings;->wifiEnabled:I

    .line 2449
    if-ne p1, v3, :cond_0

    .line 2451
    iget v0, p0, Lcom/android/settings/wifi/WifiApSettings;->wifi_turn_off_processing:I

    packed-switch v0, :pswitch_data_0

    .line 2516
    :goto_0
    iput v2, p0, Lcom/android/settings/wifi/WifiApSettings;->wifi_turn_off_processing:I

    .line 2519
    :cond_0
    return-void

    .line 2455
    :pswitch_0
    const-string v0, "WifiApSettings"

    const-string v0, "onReceive : Turned WiFi off(DIALOG_DISCONNECT_WIFI)"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2457
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 2458
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2460
    :cond_1
    iget v0, p0, Lcom/android/settings/wifi/WifiApSettings;->WifiDisconnectMode:I

    if-ne v0, v3, :cond_3

    .line 2461
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiApSettings;->savePreference(I)V

    .line 2462
    const-string v0, "WifiApSettings"

    const-string v0, "Turn Mobile AP on"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2463
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->showProgressDialog2()V

    .line 2464
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->confirmWifiAp()V

    .line 2465
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->Dont_display_checked_flag:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_2

    .line 2467
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->Dont_display_checked_flag:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->Dont_display_checked_flag:I

    .line 2468
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->saveDisplayFlags(Landroid/net/wifi/WifiConfiguration;)Z

    .line 2471
    :cond_2
    iput v2, p0, Lcom/android/settings/wifi/WifiApSettings;->WifiDisconnectMode:I

    goto :goto_0

    .line 2473
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->Dont_display_checked_flag:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->Dont_display_checked_flag:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    .line 2475
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->Dont_display_checked_flag:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_4

    .line 2476
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    goto :goto_0

    .line 2479
    :cond_4
    const-string v0, "WifiApSettings"

    const-string v0, "Turn Mobile AP on"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->showProgressDialog2()V

    .line 2481
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->confirmWifiAp()V

    .line 2483
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiApSettings;->savePreference(I)V

    goto :goto_0

    .line 2485
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->Dont_display_checked_flag:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_6

    .line 2486
    const-string v0, "WifiApSettings"

    const-string v0, "showDialog DIALOG_OUT_COVERAGE2"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2488
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    goto/16 :goto_0

    .line 2490
    :cond_6
    const-string v0, "WifiApSettings"

    const-string v0, "showDialog DIALOG_TURN_ON"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2491
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    goto/16 :goto_0

    .line 2451
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private isHexString(Ljava/lang/String;)Z
    .locals 3
    .parameter "wepPass"

    .prologue
    .line 2556
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2557
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 2558
    const/4 v1, 0x0

    .line 2560
    :goto_1
    return v1

    .line 2556
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2560
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private isOpenNetwrok()Z
    .locals 2

    .prologue
    .line 2247
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 2249
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    .line 2252
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadPreference(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 2628
    const-string v0, "WifiApSettings"

    const-string v1, "loadPreference"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2630
    const-string v0, "SAMSUNG_HOTSPOT"

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/wifi/WifiApSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->prefs:Landroid/content/SharedPreferences;

    .line 2632
    if-ne v2, p1, :cond_0

    .line 2633
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "POWERMODE_VALUE"

    const/16 v2, 0x708

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mPowerModeValue:I

    .line 2635
    :cond_0
    const/4 v0, 0x3

    if-ne v0, p1, :cond_1

    .line 2636
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "CONFIGURE_MODE_VALUE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mConfigMode:I

    .line 2638
    :cond_1
    return-void
.end method

.method private reloadWifiConfig()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const-string v3, ""

    .line 2707
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSsid:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 2709
    iget v0, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSecurity:I

    packed-switch v0, :pswitch_data_0

    .line 2739
    :goto_0
    return-void

    .line 2712
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 2713
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const-string v1, ""

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 2714
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    const-string v2, ""

    aput-object v3, v0, v1

    .line 2715
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    goto :goto_0

    .line 2719
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 2720
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 2721
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    .line 2722
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 2727
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedPassword:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 2728
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const-string v1, ""

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 2724
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    goto :goto_1

    .line 2732
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 2733
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 2734
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 2735
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2736
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedPassword:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_0

    .line 2709
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private savePreference(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 2612
    const-string v0, "WifiApSettings"

    const-string v1, "savePreference"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2614
    const-string v0, "SAMSUNG_HOTSPOT"

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/wifi/WifiApSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->prefs:Landroid/content/SharedPreferences;

    .line 2615
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2617
    if-ne v2, p1, :cond_0

    .line 2618
    const-string v1, "POWERMODE_VALUE"

    iget v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mPowerModeValue:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2620
    :cond_0
    const/4 v1, 0x3

    if-ne v1, p1, :cond_1

    .line 2621
    const-string v1, "CONFIGURE_MODE_VALUE"

    iget v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mConfigMode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2623
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2624
    return-void
.end method

.method private saveRememberedVariablesFromConfiguration()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const-string v2, "WifiApSettings"

    .line 2119
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2120
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2121
    :cond_0
    iput v3, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSecurity:I

    .line 2122
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedPassword:Ljava/lang/String;

    .line 2140
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSsid:Ljava/lang/String;

    .line 2150
    const-string v0, "WifiApSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rememberedSecurity     "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSecurity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    const-string v0, "WifiApSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rememberedSsid     "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSsid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2152
    const-string v0, "WifiApSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rememberedPassword     "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    return-void

    .line 2124
    :cond_1
    iput v1, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSecurity:I

    goto :goto_0

    .line 2128
    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSecurity:I

    .line 2137
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedPassword:Ljava/lang/String;

    goto :goto_0
.end method

.method private setHelpMessage()V
    .locals 21

    .prologue
    .line 2257
    const-string v3, ""

    .line 2258
    const-string v4, ""

    .line 2260
    const-string v5, ""

    .line 2261
    const/4 v6, 0x0

    .line 2262
    const/4 v7, 0x0

    .line 2264
    const/4 v8, 0x0

    .line 2265
    const/4 v9, 0x0

    .line 2266
    const/4 v10, 0x0

    .line 2267
    const/4 v11, 0x0

    .line 2268
    const/4 v12, 0x0

    .line 2269
    const/4 v13, 0x0

    .line 2270
    const/4 v14, 0x0

    .line 2273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v15

    if-nez v15, :cond_d

    .line 2274
    const-string v15, "WifiApSettings"

    const-string v16, "start message"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mHelpImage:Landroid/widget/ImageView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedHelpImage:Landroid/widget/ImageView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2279
    const v15, 0x7f0905cd

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApSettings;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 2280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mHelpTitle:Landroid/widget/TextView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    .line 2281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mHelpTitle:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const v17, 0x7f0905d3

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(I)V

    .line 2282
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mHelpOrientTitle:Landroid/widget/TextView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1c

    .line 2283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mHelpOrientTitle:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const v17, 0x7f0905d3

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(I)V

    move/from16 v19, v11

    move-object v11, v3

    move/from16 v3, v19

    move-object/from16 v20, v4

    move-object v4, v5

    move-object/from16 v5, v20

    .line 2331
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApHelpText:Landroid/widget/TextView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedWifiApHelpText:Landroid/widget/TextView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_c

    .line 2332
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v16

    .line 2333
    const-string v17, ""

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1b

    .line 2334
    invoke-virtual {v15, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 2335
    const/4 v12, -0x1

    if-eq v8, v12, :cond_1

    move v0, v8

    move/from16 v1, v16

    if-lt v0, v1, :cond_17

    .line 2336
    :cond_1
    const/4 v8, 0x0

    .line 2337
    const/4 v11, 0x0

    move/from16 v19, v11

    move v11, v8

    move/from16 v8, v19

    .line 2340
    :goto_1
    const-string v12, ""

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1a

    .line 2341
    invoke-virtual {v15, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 2342
    invoke-virtual {v15, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 2343
    const/4 v12, -0x1

    if-eq v9, v12, :cond_2

    move v0, v9

    move/from16 v1, v16

    if-lt v0, v1, :cond_3

    .line 2344
    :cond_2
    const/4 v9, 0x0

    .line 2346
    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v19, v10

    move v10, v9

    move/from16 v9, v19

    .line 2349
    :goto_2
    const-string v12, ""

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_19

    .line 2350
    invoke-virtual {v15, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 2351
    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    move v0, v6

    move/from16 v1, v16

    if-lt v0, v1, :cond_5

    .line 2352
    :cond_4
    const/4 v6, 0x0

    .line 2354
    :cond_5
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 2357
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->defaultSsid:Ljava/lang/String;

    move-object v7, v0

    const-string v12, ""

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_18

    .line 2358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->defaultSsid:Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {v15, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 2359
    const-string v7, "WifiApSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "startPointDefaultSsid ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2360
    const/4 v7, -0x1

    if-eq v3, v7, :cond_6

    move v0, v3

    move/from16 v1, v16

    if-lt v0, v1, :cond_7

    .line 2361
    :cond_6
    const/4 v3, 0x0

    .line 2363
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->defaultSsid:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    .line 2365
    const-string v12, "WifiApSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "lengthDefaultSsid ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v19, v7

    move v7, v3

    move/from16 v3, v19

    .line 2368
    :goto_4
    new-instance v12, Landroid/text/SpannableStringBuilder;

    invoke-direct {v12, v15}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2369
    if-lez v11, :cond_8

    .line 2370
    new-instance v13, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiApSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x106003b

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-direct {v13, v14}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/2addr v8, v11

    const/16 v14, 0x21

    invoke-virtual {v12, v13, v11, v8, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2372
    :cond_8
    if-lez v10, :cond_9

    .line 2373
    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiApSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v13, 0x106003b

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-direct {v8, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v11, v10, v5

    const/16 v13, 0x21

    invoke-virtual {v12, v8, v10, v11, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2374
    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiApSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x106003b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-direct {v8, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/2addr v5, v9

    const/16 v10, 0x21

    invoke-virtual {v12, v8, v9, v5, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2378
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object v5, v0

    if-nez v5, :cond_a

    if-lez v7, :cond_a

    .line 2379
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiApSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x106003b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-direct {v5, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/2addr v3, v7

    const/16 v8, 0x21

    invoke-virtual {v12, v5, v7, v3, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2383
    :cond_a
    if-lez v6, :cond_b

    .line 2384
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiApSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x106003b

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v3, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v5, v6, v4

    const/16 v7, 0x21

    invoke-virtual {v12, v3, v6, v5, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2385
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v5, 0x2

    invoke-direct {v3, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    add-int/2addr v4, v6

    const/16 v5, 0x21

    invoke-virtual {v12, v3, v6, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2388
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApHelpText:Landroid/widget/TextView;

    move-object v3, v0

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedWifiApHelpText:Landroid/widget/TextView;

    move-object v3, v0

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2391
    :cond_c
    return-void

    .line 2286
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mHelpImage:Landroid/widget/ImageView;

    move-object v3, v0

    const/16 v15, 0x8

    invoke-virtual {v3, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedHelpImage:Landroid/widget/ImageView;

    move-object v3, v0

    const/16 v15, 0x8

    invoke-virtual {v3, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mHelpTitle:Landroid/widget/TextView;

    move-object v3, v0

    if-eqz v3, :cond_e

    .line 2290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mHelpTitle:Landroid/widget/TextView;

    move-object v3, v0

    const v15, 0x7f0905d4

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setText(I)V

    .line 2291
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mHelpOrientTitle:Landroid/widget/TextView;

    move-object v3, v0

    if-eqz v3, :cond_f

    .line 2292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mHelpOrientTitle:Landroid/widget/TextView;

    move-object v3, v0

    const v15, 0x7f0905d4

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setText(I)V

    .line 2293
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object v3, v0

    if-eqz v3, :cond_16

    .line 2294
    const-string v3, "WifiApSettings"

    const-string v4, "mWifiConfig != null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2295
    const/4 v3, 0x0

    .line 2296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object v4, v0

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 2298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object v5, v0

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object v5, v0

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object v5, v0

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 2300
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object v4, v0

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object v5, v0

    iget v5, v5, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v4, v4, v5

    .line 2305
    :cond_11
    const v5, 0x7f0905b1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object v11, v0

    iget-object v11, v11, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 2310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object v15, v0

    iget-object v15, v15, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v15, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiApSettings;->isOpenNetwrok()Z

    move-result v15

    if-nez v15, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object v15, v0

    iget-object v15, v15, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string v16, ""

    move-object v0, v15

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_15

    .line 2312
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object v15, v0

    iget-object v15, v15, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/util/BitSet;->get(I)Z

    move-result v15

    if-nez v15, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object v15, v0

    iget-object v15, v15, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/util/BitSet;->get(I)Z

    move-result v15

    if-eqz v15, :cond_14

    .line 2313
    :cond_13
    const v15, 0x7f0905cf

    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v11, v16, v17

    const/16 v17, 0x1

    aput-object v11, v16, v17

    const/16 v17, 0x2

    aput-object v4, v16, v17

    const/16 v17, 0x3

    aput-object v5, v16, v17

    move-object/from16 v0, p0

    move v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/WifiApSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v19, v5

    move-object v5, v11

    move-object v11, v4

    move-object/from16 v4, v19

    goto/16 :goto_0

    .line 2314
    :cond_14
    const v15, 0x7f0905b0

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v11, v16, v17

    const/16 v17, 0x1

    aput-object v5, v16, v17

    move-object/from16 v0, p0

    move v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/WifiApSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v19, v5

    move-object v5, v11

    move-object v11, v4

    move-object/from16 v4, v19

    goto/16 :goto_0

    .line 2316
    :cond_15
    const v15, 0x7f0905ce

    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v11, v16, v17

    const/16 v17, 0x1

    aput-object v11, v16, v17

    const/16 v17, 0x2

    aput-object v4, v16, v17

    const/16 v17, 0x3

    aput-object v5, v16, v17

    move-object/from16 v0, p0

    move v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/WifiApSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v19, v5

    move-object v5, v11

    move-object v11, v4

    move-object/from16 v4, v19

    goto/16 :goto_0

    .line 2325
    :cond_16
    const-string v3, "WifiApSettings"

    const-string v15, "mWifiConfig == null"

    invoke-static {v3, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2326
    const-string v3, ""

    .line 2327
    const v15, 0x7f0905b0

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApSettings;->defaultSsid:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v16, v17

    const/16 v17, 0x1

    aput-object v5, v16, v17

    move-object/from16 v0, p0

    move v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/WifiApSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move/from16 v19, v11

    move-object v11, v3

    move/from16 v3, v19

    move-object/from16 v20, v4

    move-object v4, v5

    move-object/from16 v5, v20

    goto/16 :goto_0

    .line 2338
    :cond_17
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    move/from16 v19, v11

    move v11, v8

    move/from16 v8, v19

    goto/16 :goto_1

    :cond_18
    move v7, v3

    move v3, v14

    goto/16 :goto_4

    :cond_19
    move v4, v7

    goto/16 :goto_3

    :cond_1a
    move v5, v13

    move/from16 v19, v10

    move v10, v9

    move/from16 v9, v19

    goto/16 :goto_2

    :cond_1b
    move v11, v8

    move v8, v12

    goto/16 :goto_1

    :cond_1c
    move/from16 v19, v11

    move-object v11, v3

    move/from16 v3, v19

    move-object/from16 v20, v4

    move-object v4, v5

    move-object/from16 v5, v20

    goto/16 :goto_0
.end method

.method private updateConnectedDevices()V
    .locals 14

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v13, "updateConnectedDevices removePreference"

    const-string v12, "WifiApSettings"

    .line 2755
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2763
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 2764
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApStaList()Ljava/lang/String;

    move-result-object v1

    .line 2766
    if-eqz v1, :cond_7

    .line 2768
    const-string v2, "WifiApSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateConnectedDevices sta_list:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2770
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2777
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2781
    :goto_0
    const-string v3, "WifiApSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateConnectedDevices numClient:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2783
    if-gtz v2, :cond_1

    .line 2784
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 2785
    const-string v0, "WifiApSettings"

    const-string v0, "updateConnectedDevices removePreference"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2843
    :cond_0
    :goto_1
    return-void

    .line 2778
    :catch_0
    move-exception v2

    .line 2779
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not parse "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v2, v6

    goto :goto_0

    .line 2788
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 2789
    const-string v3, "WifiApSettings"

    const-string v3, "updateConnectedDevices addPreference"

    invoke-static {v12, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    move v4, v6

    .line 2791
    :goto_2
    if-gt v3, v2, :cond_5

    .line 2795
    :try_start_1
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/data/misc/dhcp/dnsmasq.leases"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x2000

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 2797
    :cond_2
    :goto_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 2799
    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2800
    array-length v7, v6

    const/4 v8, 0x4

    if-lt v7, v8, :cond_2

    const/4 v7, 0x0

    aget-object v7, v6, v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    aget-object v7, v6, v7

    if-eqz v7, :cond_2

    const/4 v7, 0x2

    aget-object v7, v6, v7

    if-eqz v7, :cond_2

    const/4 v7, 0x3

    aget-object v7, v6, v7

    if-eqz v7, :cond_2

    .line 2801
    const-string v7, "WifiApSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "tok[i] ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v1, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2802
    aget-object v7, v1, v3

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    aget-object v7, v6, v7

    aget-object v8, v1, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2803
    const/4 v7, 0x3

    aget-object v7, v6, v7

    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2804
    const-string v7, "EMPTY"

    .line 2807
    :goto_4
    aget-object v8, v1, v3

    .line 2808
    const/4 v9, 0x2

    aget-object v6, v6, v9

    .line 2810
    new-instance v9, Lcom/android/settings/wifi/WifiApConnectedDevice;

    invoke-direct {v9, p0, v7, v8, v6}, Lcom/android/settings/wifi/WifiApConnectedDevice;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2811
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2813
    add-int/lit8 v4, v4, 0x1

    .line 2815
    const-string v9, "WifiApSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateConnectedDevices added :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "/"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .line 2821
    :catch_1
    move-exception v5

    .line 2822
    const-string v5, "WifiApSettings"

    const-string v5, "mac read exception"

    invoke-static {v12, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2791
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 2805
    :cond_3
    const/4 v7, 0x3

    :try_start_2
    aget-object v7, v6, v7

    goto :goto_4

    .line 2820
    :cond_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    .line 2828
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiApConnectedDevice;

    .line 2829
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_6

    .line 2832
    :cond_6
    if-nez v4, :cond_0

    .line 2833
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 2834
    const-string v0, "WifiApSettings"

    const-string v0, "updateConnectedDevices removePreference"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2840
    :cond_7
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 2841
    const-string v0, "WifiApSettings"

    const-string v0, "updateConnectedDevices removePreference"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method


# virtual methods
.method public generateDefaultSSID()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x4

    const-string v10, ""

    const-string v6, "WifiApSettings"

    .line 2157
    const-string v0, "gsm.sim.msisdn"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2160
    const-string v2, "0"

    .line 2164
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/data/.mac.info"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2165
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 2166
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 2167
    const-string v3, "WifiApSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mac address = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2172
    :goto_0
    const-string v3, "WifiApSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateDefaultSSID()    mNumber: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   mNumber.length()  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2174
    if-eqz v2, :cond_2

    const-string v3, "0"

    if-eq v2, v3, :cond_2

    .line 2175
    const-string v0, ":"

    const-string v3, ""

    invoke-virtual {v2, v0, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2176
    const/16 v2, 0x8

    const/16 v3, 0xc

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2177
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->defaultSsid:Ljava/lang/String;

    .line 2193
    :goto_1
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 2194
    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 2196
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-boolean v9, v0, Landroid/net/wifi/WifiConfiguration;->useMifi:Z

    .line 2199
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->defaultSsid:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 2202
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2203
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 2204
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2205
    :cond_0
    const-string v0, "WifiApSettings"

    const-string v0, "preSharedKey:no data"

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2206
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const-string v1, "0000000016"

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 2209
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-boolean v8, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 2211
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput v8, v0, Landroid/net/wifi/WifiConfiguration;->Dont_display_checked_flag:I

    .line 2214
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v9}, Ljava/util/BitSet;->set(I)V

    .line 2218
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 2221
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->saveDefaultConfiguration()V

    .line 2222
    return-void

    .line 2168
    :catch_0
    move-exception v3

    .line 2169
    const-string v3, "WifiApSettings"

    const-string v3, "mac read exception"

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2180
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v7, :cond_3

    .line 2181
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v7

    invoke-static {v2, v0, v7}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v0

    .line 2182
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->defaultSsid:Ljava/lang/String;

    .line 2183
    const-string v0, "WifiApSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSsid is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->defaultSsid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2186
    :cond_3
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 2187
    const/16 v2, 0x2327

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x3e8

    .line 2188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->defaultSsid:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v4, "WifiApSettings"

    .line 1765
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1772
    const/4 v0, -0x1

    if-ne p2, v0, :cond_15

    .line 1773
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1776
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->getDisplayFlags()V

    .line 1779
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApInfo()I

    move-result v0

    .line 1780
    const-string v1, "WifiApSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick: save button: connected client number:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_2

    .line 1784
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1785
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1786
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WifiApDialog;->setPasswordText(Ljava/lang/String;)V

    .line 1788
    const-string v1, "WifiApSettings"

    const-string v1, "onClick: SECURITY_TYPE_WEP"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v6

    .line 1812
    :goto_0
    const-string v2, "WifiApSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWifiConfig.SSID.getBytes().length : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    const/16 v3, 0x20

    if-le v2, v3, :cond_6

    .line 1815
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_5

    move v0, v6

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiApSettings;->ssid_warn:Z

    .line 1816
    const-string v0, "WifiApSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ssid_warn : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiApSettings;->ssid_warn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->reloadWifiConfig()V

    .line 1819
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->removeDialog(I)V

    .line 1821
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    .line 1975
    :cond_2
    :goto_2
    return-void

    .line 1791
    :cond_3
    const-string v1, "WifiApSettings"

    const-string v1, "onClick: SECURITY_TYPE_OPEN"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v5

    goto :goto_0

    .line 1796
    :cond_4
    const-string v1, "WifiApSettings"

    const-string v1, "onClick: SECURITY_TYPE_WPA2"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v7

    goto/16 :goto_0

    :cond_5
    move v0, v5

    .line 1815
    goto :goto_1

    .line 1823
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->isOpenNetwrok()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_7
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x1a

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_9

    :cond_8
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiApSettings;->isHexString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1834
    :cond_9
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->reloadWifiConfig()V

    .line 1836
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    goto :goto_2

    .line 1840
    :cond_a
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->isOpenNetwrok()Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_c

    .line 1842
    :cond_b
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->reloadWifiConfig()V

    .line 1844
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    goto/16 :goto_2

    .line 1845
    :cond_c
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->isOpenNetwrok()Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-lt v2, v3, :cond_d

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x40

    if-le v2, v3, :cond_e

    .line 1847
    :cond_d
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->reloadWifiConfig()V

    .line 1849
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    goto/16 :goto_2

    .line 1862
    :cond_e
    if-eqz v0, :cond_f

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedPassword:Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedPassword:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 1868
    const-string v0, "WifiApSettings"

    const-string v0, "Password is chagned"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    goto/16 :goto_2

    .line 1870
    :cond_f
    if-eqz v0, :cond_10

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSsid:Ljava/lang/String;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSsid:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 1874
    const-string v0, "WifiApSettings"

    const-string v0, "SSID is chagned"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    goto/16 :goto_2

    .line 1876
    :cond_10
    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSecurity:I

    if-eq v0, v1, :cond_11

    .line 1879
    const-string v0, "WifiApSettings"

    const-string v0, "Security Mode chagned"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    goto/16 :goto_2

    .line 1886
    :cond_11
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->saveConfiguration()V

    .line 1891
    iput v7, p0, Lcom/android/settings/wifi/WifiApSettings;->mConfigMode:I

    .line 1894
    iget v0, p0, Lcom/android/settings/wifi/WifiApSettings;->wifiEnabled:I

    if-eq v0, v7, :cond_12

    iget v0, p0, Lcom/android/settings/wifi/WifiApSettings;->wifiEnabled:I

    if-ne v0, v8, :cond_13

    .line 1897
    :cond_12
    iput v6, p0, Lcom/android/settings/wifi/WifiApSettings;->WifiDisconnectMode:I

    .line 1899
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    goto/16 :goto_2

    .line 1901
    :cond_13
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1902
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->showProgressDialog2()V

    .line 1903
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->confirmWifiAp()V

    .line 1912
    :goto_3
    invoke-direct {p0, v8}, Lcom/android/settings/wifi/WifiApSettings;->savePreference(I)V

    .line 1914
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->Dont_display_checked_flag:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_2

    .line 1916
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->Dont_display_checked_flag:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->Dont_display_checked_flag:I

    .line 1917
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->saveDisplayFlags(Landroid/net/wifi/WifiConfiguration;)Z

    goto/16 :goto_2

    .line 1906
    :cond_14
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->displayConfigureFinishedToast()V

    .line 1907
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->updateConnectedDevices()V

    .line 1908
    new-instance v0, Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDisconnectDelayThread:Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;

    .line 1909
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDisconnectDelayThread:Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;->start()V

    goto :goto_3

    .line 1955
    :cond_15
    const/4 v0, -0x2

    if-ne p2, v0, :cond_2

    .line 1956
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_16

    .line 1957
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApDialog;->setSsidText(Ljava/lang/String;)V

    .line 1959
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApDialog;->setPasswordText(Ljava/lang/String;)V

    .line 1962
    const-string v0, "WifiApSettings"

    const-string v0, "onClick :   BUTTON_NEGATIVE"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v1, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApDialog;->setHideDeviceStatus(Z)V

    goto/16 :goto_2

    .line 1966
    :cond_16
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->defaultSsid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSsid:Ljava/lang/String;

    .line 1967
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedPassword:Ljava/lang/String;

    .line 1968
    iput v5, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSecurity:I

    .line 1969
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSsid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApDialog;->setSsidText(Ljava/lang/String;)V

    .line 1970
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApDialog;->setPasswordText(Ljava/lang/String;)V

    .line 1971
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    iget v1, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSecurity:I

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApDialog;->setSecurityMode(I)V

    goto/16 :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter

    .prologue
    .line 2227
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2232
    :try_start_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2233
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mFootView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 2234
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedFootView:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 2245
    :goto_0
    return-void

    .line 2236
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedFootView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 2237
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mFootView:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2240
    :catch_0
    move-exception v0

    .line 2241
    const-string v0, "WifiApSettings"

    const-string v1, "onConfigurationChanged : NullPointerException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v6, "WifiApSettings"

    .line 411
    const-string v1, "WifiApSettings"

    const-string v1, "-----onCreate----- "

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 414
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setFormat(I)V

    .line 415
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->addIntentFilter()V

    .line 416
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/settings/wifi/WifiApSettings;->mLowBatteryLevel:I

    .line 418
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 421
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApProfileConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 425
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mSecurityType:[Ljava/lang/String;

    .line 426
    const v1, 0x7f040033

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApSettings;->addPreferencesFromResource(I)V

    .line 431
    const-string v1, "enable_wifi_ap"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    .line 441
    const-string v1, "wifi_ap_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApSettings:Landroid/preference/PreferenceScreen;

    .line 442
    const-string v1, "wifi_ap_network_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mNetworkSettings:Landroid/preference/Preference;

    .line 443
    const-string v1, "wifi_ap_connected_devices"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    .line 444
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->setOrderingAsAdded(Z)V

    .line 445
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->setShouldDisableView(Z)V

    .line 446
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->updateConnectedDevices()V

    .line 448
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0901fc

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 457
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWindowManager:Landroid/view/WindowManager;

    .line 458
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getOrientation()I

    move-result v1

    iput v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mCurrentOrientation:I

    .line 462
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 464
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030045

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mFootView:Landroid/widget/LinearLayout;

    .line 465
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mFootView:Landroid/widget/LinearLayout;

    const v2, 0x1010003

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApHelpText:Landroid/widget/TextView;

    .line 466
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mFootView:Landroid/widget/LinearLayout;

    const v2, 0x7f0b00a6

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mHelpImage:Landroid/widget/ImageView;

    .line 467
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mFootView:Landroid/widget/LinearLayout;

    const v2, 0x7f0b00a5

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mHelpTitle:Landroid/widget/TextView;

    .line 469
    const v1, 0x7f030046

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedFootView:Landroid/widget/LinearLayout;

    .line 470
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedFootView:Landroid/widget/LinearLayout;

    const v2, 0x7f0b00aa

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedHelpImage:Landroid/widget/ImageView;

    .line 471
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedFootView:Landroid/widget/LinearLayout;

    const v2, 0x1010004

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedWifiApHelpText:Landroid/widget/TextView;

    .line 472
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedFootView:Landroid/widget/LinearLayout;

    const v2, 0x7f0b00a8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mHelpOrientTitle:Landroid/widget/TextView;

    .line 475
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mListView:Landroid/widget/ListView;

    .line 476
    iget v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mCurrentOrientation:I

    if-eq v1, v4, :cond_0

    iget v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mCurrentOrientation:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 477
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mOrientedFootView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v5, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 482
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApHelpText:Landroid/widget/TextView;

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 485
    new-instance v1, Lcom/android/settings/wifi/WifiApEnabler;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/wifi/WifiApEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    .line 487
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v1, :cond_3

    .line 488
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->generateDefaultSSID()V

    .line 509
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->getDisplayFlags()V

    .line 512
    const-string v1, "WifiApSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate: rememberedSsid  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSsid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->setHelpMessage()V

    .line 518
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 519
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    .line 520
    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiApSettings;->bNoSim:Z

    .line 524
    :goto_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 526
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiApSettings;->bNoSim:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiApSettings;->bLowBattery:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiApSettings;->bOutOfCoverage:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiApSettings;->bRoaming:Z

    if-eqz v2, :cond_5

    :cond_1
    move v2, v4

    :goto_3
    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WifiApEnabler;->setProhibitionWifiAp(Z)V

    .line 535
    return-void

    .line 479
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mFootView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v5, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 504
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->saveRememberedVariablesFromConfiguration()V

    goto :goto_1

    .line 522
    :cond_4
    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiApSettings;->bNoSim:Z

    goto :goto_2

    :cond_5
    move v2, v3

    .line 526
    goto :goto_3
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .parameter

    .prologue
    const/high16 v8, 0x104

    const/4 v7, 0x1

    const v6, 0x1080027

    const v3, 0x1040014

    const/4 v5, 0x0

    .line 590
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 593
    if-ne p1, v7, :cond_1

    .line 596
    :try_start_0
    const-string v1, "wifi_ap_hide"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v7, :cond_0

    move v1, v7

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiApSettings;->isHide:Z

    .line 597
    const-string v1, "WifiApSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DIALOG_AP_SETTINGS: isHide int "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "wifi_ap_hide"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    :goto_1
    new-instance v0, Lcom/android/settings/wifi/WifiApDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0, p0, p0, p0, v1}, Lcom/android/settings/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/widget/AdapterView$OnItemSelectedListener;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    .line 604
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->defaultSsid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApDialog;->setDefaultSsidText(Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiApSettings;->isHide:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApDialog;->setCheckHideMyDeivce(Z)V

    .line 617
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    .line 1599
    :goto_2
    return-object v0

    .line 596
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 598
    :catch_0
    move-exception v0

    .line 599
    const-string v0, "WifiApSettings"

    const-string v1, "AP settings not found, returning"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiApSettings;->isHide:Z

    goto :goto_1

    .line 621
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 622
    const-string v0, "WifiApSettings"

    const-string v1, "DIALOG_DISCONNECT_WIFI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 625
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 627
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030076

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    .line 628
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 629
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    const v1, 0x7f0b014e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 630
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    const v3, 0x7f0b014f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 632
    new-instance v3, Lcom/android/settings/wifi/WifiApSettings$3;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiApSettings$3;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 644
    new-instance v0, Lcom/android/settings/wifi/WifiApSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApSettings$4;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 658
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_2

    .line 680
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 681
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0905c0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0903a4

    new-instance v2, Lcom/android/settings/wifi/WifiApSettings$5;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiApSettings$5;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_2

    .line 692
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 693
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0905c1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0903a4

    new-instance v2, Lcom/android/settings/wifi/WifiApSettings$6;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiApSettings$6;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_2

    .line 704
    :cond_4
    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    .line 706
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030066

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    .line 707
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x7f09

    new-instance v2, Lcom/android/settings/wifi/WifiApSettings$8;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiApSettings$8;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090001

    new-instance v2, Lcom/android/settings/wifi/WifiApSettings$7;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiApSettings$7;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_2

    .line 722
    :cond_5
    const/4 v0, 0x7

    if-ne p1, v0, :cond_6

    .line 724
    const-string v0, "WifiApSettings"

    const-string v1, "show DIALOG_ROAMING"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 726
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 728
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030070

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    .line 729
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 730
    const v1, 0x7f0905d9

    new-instance v2, Lcom/android/settings/wifi/WifiApSettings$9;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiApSettings$9;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 748
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_2

    .line 766
    :cond_6
    const/4 v0, 0x5

    if-ne p1, v0, :cond_7

    .line 767
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0905c6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x7f09

    new-instance v2, Lcom/android/settings/wifi/WifiApSettings$11;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiApSettings$11;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090001

    new-instance v2, Lcom/android/settings/wifi/WifiApSettings$10;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiApSettings$10;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_2

    .line 806
    :cond_7
    const/16 v0, 0x8

    if-ne p1, v0, :cond_8

    .line 807
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0905c5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x7f09

    new-instance v2, Lcom/android/settings/wifi/WifiApSettings$13;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiApSettings$13;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090001

    new-instance v2, Lcom/android/settings/wifi/WifiApSettings$12;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiApSettings$12;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_2

    .line 846
    :cond_8
    const/16 v0, 0x9

    if-ne p1, v0, :cond_a

    .line 848
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 850
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 853
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03005c

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    .line 854
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 855
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    const v1, 0x7f0b010e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 856
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    const v2, 0x7f0b010f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 858
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    const v3, 0x7f0b0110

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 860
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    const v5, 0x7f0b0111

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 862
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v5, v5, Landroid/net/wifi/WifiConfiguration;->Dont_display_checked_flag:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_9

    .line 863
    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 868
    :goto_3
    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    .line 869
    new-instance v6, Lcom/android/settings/wifi/WifiApSettings$14;

    invoke-direct {v6, p0, v3}, Lcom/android/settings/wifi/WifiApSettings$14;-><init>(Lcom/android/settings/wifi/WifiApSettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 891
    new-instance v0, Lcom/android/settings/wifi/WifiApSettings$15;

    invoke-direct {v0, p0, v3}, Lcom/android/settings/wifi/WifiApSettings$15;-><init>(Lcom/android/settings/wifi/WifiApSettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 905
    new-instance v0, Lcom/android/settings/wifi/WifiApSettings$16;

    invoke-direct {v0, p0, v3}, Lcom/android/settings/wifi/WifiApSettings$16;-><init>(Lcom/android/settings/wifi/WifiApSettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 921
    new-instance v0, Lcom/android/settings/wifi/WifiApSettings$17;

    invoke-direct {v0, p0, v3, v5}, Lcom/android/settings/wifi/WifiApSettings$17;-><init>(Lcom/android/settings/wifi/WifiApSettings;Landroid/widget/CheckBox;Z)V

    invoke-virtual {v4, v8, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 928
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_2

    .line 865
    :cond_9
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_3

    .line 948
    :cond_a
    const/16 v0, 0xa

    if-ne p1, v0, :cond_b

    .line 949
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 950
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 952
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030068

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    .line 953
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 954
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    const v2, 0x7f0b0134

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 958
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 968
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    .line 970
    const v2, 0x7f0905d9

    new-instance v3, Lcom/android/settings/wifi/WifiApSettings$18;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/wifi/WifiApSettings$18;-><init>(Lcom/android/settings/wifi/WifiApSettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1006
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_2

    .line 1008
    :cond_b
    const/16 v0, 0xb

    if-ne p1, v0, :cond_c

    .line 1010
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1011
    const v0, 0x7f0905b6

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1012
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03005d

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    .line 1013
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1014
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    const v1, 0x7f0b0113

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1015
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    const v3, 0x7f0b0114

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1017
    new-instance v3, Lcom/android/settings/wifi/WifiApSettings$19;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiApSettings$19;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1084
    new-instance v0, Lcom/android/settings/wifi/WifiApSettings$20;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApSettings$20;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1098
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_2

    .line 1099
    :cond_c
    const/16 v0, 0xb

    if-ne p1, v0, :cond_d

    .line 1100
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1101
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1103
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030060

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    .line 1104
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1105
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    const v1, 0x7f0b011b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1106
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    const v3, 0x7f0b011c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1108
    new-instance v3, Lcom/android/settings/wifi/WifiApSettings$21;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiApSettings$21;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1154
    new-instance v0, Lcom/android/settings/wifi/WifiApSettings$22;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApSettings$22;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1168
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_2

    .line 1169
    :cond_d
    const/16 v0, 0xd

    if-ne p1, v0, :cond_f

    .line 1170
    const-string v0, "WifiApSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ssid_warn 2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiApSettings;->ssid_warn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiApSettings;->ssid_warn:Z

    if-eqz v1, :cond_e

    const v1, 0x7f0901f4

    :goto_4
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0905d9

    new-instance v2, Lcom/android/settings/wifi/WifiApSettings$24;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiApSettings$24;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/WifiApSettings$23;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiApSettings$23;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_2

    :cond_e
    const v1, 0x7f0901f3

    goto :goto_4

    .line 1199
    :cond_f
    const/16 v0, 0xe

    if-ne p1, v0, :cond_10

    .line 1200
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901f5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0905d9

    new-instance v2, Lcom/android/settings/wifi/WifiApSettings$26;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiApSettings$26;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/WifiApSettings$25;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiApSettings$25;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_2

    .line 1227
    :cond_10
    const/16 v0, 0x12

    if-ne p1, v0, :cond_11

    .line 1228
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901f6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0905d9

    new-instance v2, Lcom/android/settings/wifi/WifiApSettings$28;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiApSettings$28;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/WifiApSettings$27;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiApSettings$27;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_2

    .line 1256
    :cond_11
    const/16 v0, 0x13

    if-ne p1, v0, :cond_12

    .line 1257
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0905c7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x7f09

    new-instance v2, Lcom/android/settings/wifi/WifiApSettings$30;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiApSettings$30;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090001

    new-instance v2, Lcom/android/settings/wifi/WifiApSettings$29;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiApSettings$29;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_2

    .line 1296
    :cond_12
    const/16 v0, 0xf

    if-ne p1, v0, :cond_13

    .line 1297
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901f8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0905d9

    new-instance v2, Lcom/android/settings/wifi/WifiApSettings$32;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiApSettings$32;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/WifiApSettings$31;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiApSettings$31;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_2

    .line 1327
    :cond_13
    const/16 v0, 0x10

    if-ne p1, v0, :cond_14

    .line 1328
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1330
    const v0, 0x7f0901dd

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1333
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03006b

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    .line 1334
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1335
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    const v1, 0x7f0b0125

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1336
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    const v3, 0x7f0b0136

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1338
    new-instance v3, Lcom/android/settings/wifi/WifiApSettings$33;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiApSettings$33;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1345
    new-instance v0, Lcom/android/settings/wifi/WifiApSettings$34;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApSettings$34;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1352
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_2

    .line 1353
    :cond_14
    const/16 v0, 0x11

    if-ne p1, v0, :cond_15

    .line 1354
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1355
    const v0, 0x7f0901e1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1356
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03005b

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    .line 1357
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1358
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    const v2, 0x7f0b010c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 1359
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 1361
    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiApSettings;->loadPreference(I)V

    .line 1362
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->getBatterySpinnerPosition()I

    move-result v2

    .line 1363
    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1365
    new-instance v2, Lcom/android/settings/wifi/WifiApSettings$35;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiApSettings$35;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1426
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_2

    .line 1428
    :cond_15
    const/16 v0, 0x14

    if-ne p1, v0, :cond_16

    .line 1429
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1430
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1432
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03006e

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    .line 1433
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1434
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    const v1, 0x7f0b013b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1435
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    const v3, 0x7f0b013c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1437
    new-instance v3, Lcom/android/settings/wifi/WifiApSettings$36;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiApSettings$36;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1447
    new-instance v0, Lcom/android/settings/wifi/WifiApSettings$37;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApSettings$37;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1453
    new-instance v0, Lcom/android/settings/wifi/WifiApSettings$38;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApSettings$38;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v2, v8, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1464
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_2

    .line 1465
    :cond_16
    const/16 v0, 0x15

    if-ne p1, v0, :cond_17

    .line 1466
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1467
    const v0, 0x7f090002

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1468
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03006d

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    .line 1469
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1470
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    const v1, 0x7f0b0137

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1471
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    const v2, 0x7f0b0138

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1472
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    const v4, 0x7f0b0139

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 1474
    new-instance v4, Lcom/android/settings/wifi/WifiApSettings$39;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/WifiApSettings$39;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1500
    new-instance v0, Lcom/android/settings/wifi/WifiApSettings$40;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApSettings$40;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1506
    new-instance v0, Lcom/android/settings/wifi/WifiApSettings$41;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApSettings$41;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1512
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_2

    .line 1513
    :cond_17
    const/16 v0, 0x16

    if-ne p1, v0, :cond_18

    .line 1514
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1515
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1517
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030069

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    .line 1518
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1519
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    const v1, 0x7f0b011f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1520
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    const v3, 0x7f0b0120

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1522
    new-instance v3, Lcom/android/settings/wifi/WifiApSettings$42;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiApSettings$42;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1528
    new-instance v0, Lcom/android/settings/wifi/WifiApSettings$43;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApSettings$43;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1534
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_2

    .line 1535
    :cond_18
    const/16 v0, 0x17

    if-ne p1, v0, :cond_19

    .line 1536
    const-string v0, "WifiApSettings"

    const-string v1, "DIALOG_CONFIGURE_SWITCH_AUTOMATIC"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1539
    const v0, 0x7f0901db

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1540
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03005e

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    .line 1541
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1542
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    const v1, 0x7f0b0115

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1543
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    const v1, 0x7f0b0116

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1544
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    const v3, 0x7f0b0117

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1546
    new-instance v3, Lcom/android/settings/wifi/WifiApSettings$44;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiApSettings$44;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1564
    new-instance v0, Lcom/android/settings/wifi/WifiApSettings$45;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApSettings$45;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1570
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_2

    .line 1571
    :cond_19
    const/16 v0, 0x18

    if-ne p1, v0, :cond_1a

    .line 1573
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1574
    const v0, 0x7f0901db

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1575
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03005f

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    .line 1576
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1577
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    const v1, 0x7f0b0118

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1578
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    const v1, 0x7f0b0119

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1579
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mView:Landroid/view/View;

    const v3, 0x7f0b011a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1581
    new-instance v3, Lcom/android/settings/wifi/WifiApSettings$46;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiApSettings$46;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1588
    new-instance v0, Lcom/android/settings/wifi/WifiApSettings$47;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApSettings$47;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1594
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_2

    :cond_1a
    move-object v0, v5

    .line 1599
    goto/16 :goto_2
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 1649
    const-string v0, "WifiApSettings"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 1651
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    if-eqz v0, :cond_0

    .line 1652
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    .line 1654
    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1980
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0, p3}, Lcom/android/settings/wifi/WifiApDialog;->setSecurityMode(I)V

    .line 1981
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApDialog;->showSecurityFields()V

    .line 1983
    if-nez p3, :cond_0

    .line 1984
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->dismissDialog(I)V

    .line 1985
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    .line 1989
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 1991
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 1642
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 1643
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->pause()V

    .line 1644
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1645
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const-string v3, "WifiApSettings"

    .line 1659
    const-string v0, "WifiApSettings"

    const-string v0, "onPreferenceTreeClick "

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->getWifiState()I

    move-result v0

    .line 1662
    const-string v1, "WifiApSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rememberedSsid  ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSsid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")      rememberedPassword  ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")     rememberedSecurity  ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSecurity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1680
    const-string v1, "WifiApSettings"

    const-string v1, "preference == mEnableWifiAp"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1703
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    .line 1705
    const-string v0, "WifiApSettings"

    const-string v0, "show dialog"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1707
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->Dont_display_checked_flag:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->Dont_display_checked_flag:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 1710
    const-string v0, "WifiApSettings"

    const-string v0, "Turn Mobile AP on"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApSettings;->showProgressDialog2()V

    .line 1712
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->confirmWifiAp()V

    goto :goto_0

    .line 1714
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->Dont_display_checked_flag:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_4

    .line 1716
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    goto :goto_0

    .line 1718
    :cond_4
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    goto :goto_0

    .line 1729
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1730
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApInfo()I

    move-result v0

    .line 1731
    const-string v1, "WifiApSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "turn off button: connected client number:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    if-eqz v0, :cond_6

    .line 1733
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    goto :goto_0

    .line 1735
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->setWifiApDisable()V

    goto :goto_0

    .line 1739
    :cond_7
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mNetworkSettings:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    .line 1740
    const-string v0, "WifiApSettings"

    const-string v0, "preference == mNetworkSettings"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApSettings;->showDialog(I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 1626
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 1627
    const-string v0, "WifiApSettings"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->resume()V

    .line 1629
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/WifiApSettings;->WifiDisconnectMode:I

    .line 1630
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WifiApSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1631
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 1633
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1635
    :cond_0
    new-instance v0, Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;-><init>(Lcom/android/settings/wifi/WifiApSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDisconnectDelayThread:Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;

    .line 1636
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mDisconnectDelayThread:Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApSettings$DisconnectDelayThread;->start()V

    .line 1638
    :cond_1
    return-void
.end method

.method public saveConfiguration()V
    .locals 8

    .prologue
    const/16 v7, 0x1a

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2006
    const-string v0, "WifiApSettings"

    const-string v1, "saveConfiguration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->getWhiteListMac()V

    .line 2011
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_3

    .line 2012
    const v0, 0x7f0905bb

    new-array v1, v4, [Ljava/lang/Object;

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WifiApSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2013
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2014
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSsid:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 2015
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedPassword:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 2017
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 2018
    iget v0, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSecurity:I

    if-ne v0, v5, :cond_0

    .line 2019
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 2020
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 2021
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    .line 2106
    :goto_0
    return-void

    .line 2030
    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSecurity:I

    if-ne v0, v4, :cond_2

    .line 2031
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 2032
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 2033
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v7, :cond_1

    .line 2034
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 2036
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 2039
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 2049
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_8

    .line 2054
    const v0, 0x7f0905bc

    new-array v1, v5, [Ljava/lang/Object;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/16 v2, 0x40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WifiApSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2055
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2056
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSsid:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 2057
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedPassword:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 2059
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 2060
    iget v0, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSecurity:I

    if-ne v0, v5, :cond_5

    .line 2061
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 2062
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 2063
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_0

    .line 2072
    :cond_5
    iget v0, p0, Lcom/android/settings/wifi/WifiApSettings;->rememberedSecurity:I

    if-ne v0, v4, :cond_7

    .line 2073
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 2074
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 2075
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v7, :cond_6

    .line 2076
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_0

    .line 2078
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_0

    .line 2082
    :cond_7
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_0

    .line 2092
    :cond_8
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->saveRememberedVariablesFromConfiguration()V

    .line 2093
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2094
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1, v4}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 2095
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApEnabler;->updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V

    .line 2096
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->setHelpMessage()V

    goto/16 :goto_0

    .line 2097
    :cond_9
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_0
.end method

.method public saveDefaultConfiguration()V
    .locals 3

    .prologue
    .line 1995
    const-string v0, "WifiApSettings"

    const-string v1, "saveDefaultConfiguration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->getWhiteListMac()V

    .line 1997
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->saveRememberedVariablesFromConfiguration()V

    .line 1998
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1999
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 2000
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiApEnabler;->updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V

    .line 2001
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApSettings;->setHelpMessage()V

    .line 2004
    :goto_0
    return-void

    .line 2002
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto :goto_0
.end method

.method public showProgressDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1603
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1604
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1605
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1606
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1607
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0905d1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1608
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1609
    return-void
.end method

.method public showProgressDialog2()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1612
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog2:Landroid/app/ProgressDialog;

    .line 1613
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog2:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1614
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog2:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1615
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog2:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1618
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog2:Landroid/app/ProgressDialog;

    const v1, 0x7f0901fd

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1620
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApSettings;->mProgressDialog2:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1621
    return-void
.end method
