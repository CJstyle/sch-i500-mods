.class public Lcom/android/settings/wifi/AccessPointListDialog;
.super Landroid/preference/PreferenceActivity;
.source "AccessPointListDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/AccessPointListDialog$Scanner;
    }
.end annotation


# static fields
.field private static final KEY_ACCESS_POINTS:Ljava/lang/String; = "access_points"

.field private static final KEY_ADD_OTHER_NETWORK:Ljava/lang/String; = "add_network"

.field private static final MENU_ID_ADVANCED:I = 0x2

.field private static final MENU_ID_CONNECT:I = 0x3

.field private static final MENU_ID_FORGET:I = 0x4

.field private static final MENU_ID_MODIFY:I = 0x5

.field private static final MENU_ID_SCAN:I = 0x1

.field private static final MENU_ID_WPS_PIN:I = 0x6

.field private static final TAG:Ljava/lang/String; = "AccessPointListDialog"

.field private static final WPS_MAX_TIME:I = 0x1d4c0

.field private static final WPS_PBC_MODE:I = 0x1

.field private static final WPS_PIN_MODE:I = 0x2


# instance fields
.field private ad:Landroid/app/AlertDialog;

.field private mAccessPoints:Lcom/android/settings/ProgressCategory;

.field private mAddNetwork:Landroid/preference/Preference;

.field private mDialog:Lcom/android/settings/wifi/WifiDialog;

.field private final mFilter:Landroid/content/IntentFilter;

.field private mKeyStoreNetworkId:I

.field private mLapseTime:I

.field private mLastInfo:Landroid/net/wifi/WifiInfo;

.field private mLastPriority:I

.field private mLastState:Landroid/net/NetworkInfo$DetailedState;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNotifyOpenNetworks:Landroid/preference/CheckBoxPreference;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

.field private mProgressNumberFormat:Ljava/lang/String;

.field private mRandomPinNumber:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mResetNetworks:Z

.field private final mScanner:Lcom/android/settings/wifi/AccessPointListDialog$Scanner;

.field private mSelected:Lcom/android/settings/wifi/AccessPoint;

.field private mTimer:Landroid/os/CountDownTimer;

.field protected mWakeLock:Landroid/os/PowerManager$WakeLock;

.field protected mWakeLockforToast:Landroid/os/PowerManager$WakeLock;

.field private mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWpsButton:Landroid/preference/Preference;

.field private mWpsInProgress:Z

.field rememberedAccessPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/wifi/AccessPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 132
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mResetNetworks:Z

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mKeyStoreNetworkId:I

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->rememberedAccessPoints:Ljava/util/List;

    .line 123
    iput-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->ad:Landroid/app/AlertDialog;

    .line 133
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mFilter:Landroid/content/IntentFilter;

    .line 134
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.GET_WPS_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    new-instance v0, Lcom/android/settings/wifi/AccessPointListDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/AccessPointListDialog$1;-><init>(Lcom/android/settings/wifi/AccessPointListDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 152
    new-instance v0, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;-><init>(Lcom/android/settings/wifi/AccessPointListDialog;Lcom/android/settings/wifi/AccessPointListDialog$1;)V

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mScanner:Lcom/android/settings/wifi/AccessPointListDialog$Scanner;

    .line 153
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/AccessPointListDialog;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/AccessPointListDialog;->handleEvent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/AccessPointListDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLapseTime:I

    return v0
.end method

.method static synthetic access$1020(Lcom/android/settings/wifi/AccessPointListDialog;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iget v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLapseTime:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLapseTime:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/AccessPointListDialog;)Lcom/sec/android/touchwiz/widget/TwProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/AccessPointListDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressNumberFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/settings/wifi/AccessPointListDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressNumberFormat:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/AccessPointListDialog;)Lcom/android/settings/ProgressCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/wifi/AccessPointListDialog;)Landroid/net/NetworkInfo$DetailedState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/AccessPointListDialog;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->ad:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/AccessPointListDialog;)Lcom/android/settings/wifi/AccessPoint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/AccessPointListDialog;Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/AccessPointListDialog;->getNewNetworkId(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/AccessPointListDialog;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/AccessPointListDialog;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/AccessPointListDialog;->connect(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/AccessPointListDialog;Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/AccessPointListDialog;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/AccessPointListDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->wpsCommandCancel()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/AccessPointListDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->dismissProgressDialog()V

    return-void
.end method

.method private connect(I)V
    .locals 8
    .parameter "networkId"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 674
    if-ne p1, v6, :cond_0

    .line 703
    :goto_0
    return-void

    .line 679
    :cond_0
    iget v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastPriority:I

    const v4, 0xf4240

    if-le v3, v4, :cond_3

    .line 680
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v3}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v3

    sub-int v2, v3, v5

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_2

    .line 681
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v3, v2}, Lcom/android/settings/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 682
    .local v0, accessPoint:Lcom/android/settings/wifi/AccessPoint;
    iget v3, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v3, v6, :cond_1

    .line 683
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 684
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    iget v3, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iput v3, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 685
    iput v7, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 686
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 680
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 689
    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    :cond_2
    iput v7, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastPriority:I

    .line 693
    .end local v2           #i:I
    :cond_3
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 694
    .restart local v1       #config:Landroid/net/wifi/WifiConfiguration;
    iput p1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 695
    iget v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastPriority:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastPriority:I

    iput v3, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 696
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 697
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->saveNetworks()V

    .line 700
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, p1, v5}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 701
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->reconnect()Z

    .line 702
    iput-boolean v5, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mResetNetworks:Z

    goto :goto_0
.end method

.method private dismissProgressDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-string v3, "AccessPointListDialog"

    .line 575
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v1, :cond_0

    .line 576
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 578
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    if-eqz v1, :cond_1

    .line 579
    const-string v1, "AccessPointListDialog"

    const-string v1, "dismissProgressDialog(), mProgressDialog.dissmiss()"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->dismiss()V

    .line 583
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    .line 584
    const v1, 0x1d4c0

    iput v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLapseTime:I

    .line 585
    iput-boolean v4, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWpsInProgress:Z

    .line 588
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/16 v2, -0x63

    invoke-virtual {v1, v2, v4}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v0

    .line 589
    .local v0, result:Z
    if-nez v0, :cond_2

    .line 590
    const-string v1, "AccessPointListDialog"

    const-string v1, "ENABLE ALL is fail"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :goto_0
    return-void

    .line 592
    :cond_2
    const-string v1, "AccessPointListDialog"

    const-string v1, "ENABLE ALL is success"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private enableNetworks()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 706
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v2}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int v1, v2, v3

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 707
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v2, v1}, Lcom/android/settings/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 708
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 709
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 706
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 712
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_1
    iput-boolean v4, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mResetNetworks:Z

    .line 713
    return-void
.end method

.method private forget(I)V
    .locals 1
    .parameter "networkId"

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 670
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->saveNetworks()V

    .line 671
    return-void
.end method

.method private getNewNetworkId(Landroid/net/wifi/WifiConfiguration;)I
    .locals 6
    .parameter "config"

    .prologue
    .line 723
    const/4 v1, 0x0

    .line 724
    .local v1, found:Z
    const/4 v3, -0x1

    .line 725
    .local v3, newNetId:I
    iget-object v5, p0, Lcom/android/settings/wifi/AccessPointListDialog;->rememberedAccessPoints:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 726
    .local v0, accessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/AccessPoint;->checkIfSame(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 727
    const/4 v1, 0x1

    .line 728
    iget v3, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    .line 732
    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    :cond_1
    if-eqz v1, :cond_2

    move v4, v3

    .line 735
    .end local v3           #newNetId:I
    .local v4, newNetId:I
    :goto_0
    return v4

    .end local v4           #newNetId:I
    .restart local v3       #newNetId:I
    :cond_2
    iget-object v5, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, p1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    move v4, v3

    .end local v3           #newNetId:I
    .restart local v4       #newNetId:I
    goto :goto_0
.end method

.method public static getTimeString(I)Ljava/lang/String;
    .locals 6
    .parameter "milliSecond"

    .prologue
    .line 616
    div-int/lit16 v2, p0, 0x3e8

    div-int/lit8 v0, v2, 0x3c

    .line 617
    .local v0, min:I
    div-int/lit16 v2, p0, 0x3e8

    rem-int/lit8 v1, v2, 0x3c

    .line 619
    .local v1, second:I
    const-string v2, "%02d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private handleEvent(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    const-string v4, "AccessPointListDialog"

    .line 810
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 811
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 812
    const-string v3, "wifi_state"

    const/4 v4, 0x4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/AccessPointListDialog;->updateWifiState(I)V

    .line 844
    :cond_0
    :goto_0
    return-void

    .line 814
    :cond_1
    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 815
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->updateAccessPoints()V

    goto :goto_0

    .line 816
    :cond_2
    const-string v3, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 817
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 818
    iput-object v5, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    .line 820
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->updateAccessPoints()V

    goto :goto_0

    .line 821
    :cond_4
    const-string v3, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 822
    const-string v3, "newState"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/SupplicantState;

    invoke-static {v3}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/AccessPointListDialog;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    .line 824
    :cond_5
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 825
    const-string v3, "networkInfo"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    iput-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 826
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    .line 827
    .local v2, state:Landroid/net/NetworkInfo$DetailedState;
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/AccessPointListDialog;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 829
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_0

    .line 830
    const-string v3, "AccessPointListDialog"

    const-string v3, "Network is connected, activity will finish"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v2}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v1

    .line 832
    .local v1, msg:Ljava/lang/String;
    const/4 v3, 0x1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 833
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->finish()V

    goto :goto_0

    .line 835
    .end local v1           #msg:Ljava/lang/String;
    .end local v2           #state:Landroid/net/NetworkInfo$DetailedState;
    :cond_6
    const-string v3, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 836
    invoke-direct {p0, v5}, Lcom/android/settings/wifi/AccessPointListDialog;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0

    .line 839
    :cond_7
    const-string v3, "android.net.wifi.GET_WPS_EVENT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 840
    const-string v3, "AccessPointListDialog"

    const-string v3, "handleEvent(), GET_WPS_EVENT_ACTION"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    const-string v3, "wps_event"

    const/4 v4, 0x5

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/AccessPointListDialog;->updateWpsEvent(I)V

    goto/16 :goto_0
.end method

.method private requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .parameter "config"

    .prologue
    const/4 v1, 0x1

    .line 659
    invoke-static {p1}, Lcom/android/settings/wifi/WifiDialog;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->test()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 661
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mKeyStoreNetworkId:I

    .line 662
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    move v0, v1

    .line 665
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private saveNetworks()V
    .locals 1

    .prologue
    .line 717
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->enableNetworks()V

    .line 718
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 719
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->updateAccessPoints()V

    .line 720
    return-void
.end method

.method private showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 2
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    .line 487
    const-string v0, "AccessPointListDialog"

    const-string v1, "showDialog()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->dismiss()V

    .line 491
    :cond_0
    new-instance v0, Lcom/android/settings/wifi/WifiDialog;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 494
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->show()V

    .line 495
    return-void
.end method

.method private showDialog(Lcom/android/settings/wifi/AccessPoint;ZZZZ)V
    .locals 8
    .parameter "accessPoint"
    .parameter "edit"
    .parameter "retry"
    .parameter "details"
    .parameter "manageNetwork"

    .prologue
    .line 499
    const-string v0, "AccessPointListDialog"

    const-string v1, "showDialog - with details manageNetwork  "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->dismiss()V

    .line 505
    :cond_0
    new-instance v0, Lcom/android/settings/wifi/WifiDialog;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;ZZZZ)V

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 506
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0, p0}, Lcom/android/settings/wifi/WifiDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 507
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->show()V

    .line 508
    return-void
.end method

.method private showProgressDialog(I)V
    .locals 7
    .parameter "wpsMode"

    .prologue
    const v5, 0x1d4c0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 514
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    if-eqz v0, :cond_0

    .line 515
    const-string v0, "AccessPointListDialog"

    const-string v1, "showProgressDialog(), dissmiss former dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->dismiss()V

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 522
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    .line 523
    iput v5, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLapseTime:I

    .line 525
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    const v1, 0x7f02004d

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setIcon(I)V

    .line 526
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setProgressStyle(I)V

    .line 527
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    const v1, 0x7f0903a7

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AccessPointListDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/AccessPointListDialog$8;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/AccessPointListDialog$8;-><init>(Lcom/android/settings/wifi/AccessPointListDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 535
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 537
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 538
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    const v1, 0x7f090199

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setTitle(I)V

    .line 539
    const-string v0, "%08d"

    new-array v1, v3, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mRandomPinNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 540
    .local v6, eightDigitPin:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09019c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 546
    .end local v6           #eightDigitPin:Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setProgress(I)V

    .line 547
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setMax(I)V

    .line 548
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setProgressPercentVisibility(I)V

    .line 549
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setProgressNumberVisibility(I)V

    .line 550
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    const-string v1, "%2d:%2d"

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwProgressDialog;->show()V

    .line 554
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_2

    .line 555
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 559
    :cond_2
    new-instance v0, Lcom/android/settings/wifi/AccessPointListDialog$9;

    const-wide/32 v2, 0x1d8a8

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/AccessPointListDialog$9;-><init>(Lcom/android/settings/wifi/AccessPointListDialog;JJ)V

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPointListDialog$9;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mTimer:Landroid/os/CountDownTimer;

    .line 571
    return-void
.end method

.method private showWpsToast(I)V
    .locals 4
    .parameter "messageResId"

    .prologue
    const-string v3, "AccessPointListDialog"

    .line 876
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    if-eqz v0, :cond_0

    .line 877
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->dismissProgressDialog()V

    .line 878
    const-string v0, "AccessPointListDialog"

    const-string v0, "showWpsToast(), WPS FAIL"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    const v0, 0x7f09019f

    if-ne p1, v0, :cond_0

    .line 880
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->wpsCommandCancel()V

    .line 884
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mPowerManager:Landroid/os/PowerManager;

    const v1, 0x2000001a

    const-string v2, "AccessPointListDialog"

    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWakeLockforToast:Landroid/os/PowerManager$WakeLock;

    .line 886
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 887
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWakeLockforToast:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 889
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 890
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 893
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWakeLockforToast:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 894
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWakeLockforToast:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 896
    :cond_2
    return-void
.end method

.method private updateAccessPoints()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const-string v12, "AccessPointListDialog"

    .line 740
    const-string v10, "AccessPointListDialog"

    const-string v10, "updateAccessPoints()"

    invoke-static {v12, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 743
    .local v1, allAccessPoints:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/wifi/AccessPoint;>;"
    iget-object v10, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 744
    .local v3, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v3, :cond_4

    .line 745
    iput v13, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastPriority:I

    .line 746
    iget-object v10, p0, Lcom/android/settings/wifi/AccessPointListDialog;->rememberedAccessPoints:Ljava/util/List;

    iget-object v11, p0, Lcom/android/settings/wifi/AccessPointListDialog;->rememberedAccessPoints:Ljava/util/List;

    invoke-interface {v10, v11}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 747
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 750
    .local v2, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v10, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v10, :cond_0

    iget-object v10, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_0

    .line 754
    iget v10, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    iget v11, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastPriority:I

    if-le v10, v11, :cond_1

    .line 755
    iget v10, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    iput v10, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastPriority:I

    .line 759
    :cond_1
    iget v10, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v10, :cond_3

    .line 760
    const/4 v10, 0x2

    iput v10, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 765
    :cond_2
    :goto_1
    new-instance v0, Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 766
    .local v0, accessPoint:Lcom/android/settings/wifi/AccessPoint;
    iget-object v10, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v11, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v10, v11}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 767
    iget-object v10, p0, Lcom/android/settings/wifi/AccessPointListDialog;->rememberedAccessPoints:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 768
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 761
    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    :cond_3
    iget-boolean v10, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mResetNetworks:Z

    if-eqz v10, :cond_2

    iget v10, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 762
    iput v13, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_1

    .line 772
    .end local v2           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_4
    const-string v10, "AccessPointListDialog"

    const-string v10, "updateAccessPoints(), WifiConfigureation list updated"

    invoke-static {v12, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    iget-object v10, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v9

    .line 775
    .local v9, results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v9, :cond_8

    .line 776
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/ScanResult;

    .line 778
    .local v8, result:Landroid/net/wifi/ScanResult;
    iget-object v10, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v10, :cond_5

    iget-object v10, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, v8, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v11, "[IBSS]"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 783
    const/4 v5, 0x0

    .line 784
    .local v5, found:Z
    const/4 v4, 0x0

    .line 785
    .local v4, configuredAP:Lcom/android/settings/wifi/AccessPoint;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 786
    .restart local v0       #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {v0, v8}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 787
    const/4 v5, 0x1

    .line 788
    move-object v4, v0

    .line 792
    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    :cond_7
    const-string v10, "AccessPointListDialog"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "result-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    if-nez v5, :cond_5

    .line 794
    new-instance v10, Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {v10, p0, v8}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 800
    .end local v4           #configuredAP:Lcom/android/settings/wifi/AccessPoint;
    .end local v5           #found:Z
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #result:Landroid/net/wifi/ScanResult;
    :cond_8
    iget-object v10, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v10}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 801
    iget-object v10, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v10, v13}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 803
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 804
    .restart local v0       #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    iget-object v10, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v10, v0}, Lcom/android/settings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 806
    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    :cond_9
    const-string v10, "AccessPointListDialog"

    const-string v10, "updateAccessPoints(), ScanResult list updated"

    invoke-static {v12, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    return-void
.end method

.method private updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 900
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 901
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mScanner:Lcom/android/settings/wifi/AccessPointListDialog$Scanner;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;->pause()V

    .line 927
    :cond_0
    :goto_0
    return-void

    .line 905
    :cond_1
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_4

    .line 906
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mScanner:Lcom/android/settings/wifi/AccessPointListDialog$Scanner;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;->pause()V

    .line 913
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 914
    if-eqz p1, :cond_3

    .line 915
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 918
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_2
    if-ltz v0, :cond_5

    .line 919
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1, v0}, Lcom/android/settings/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 918
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 908
    .end local v0           #i:I
    :cond_4
    iget-boolean v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWpsInProgress:Z

    if-nez v1, :cond_2

    .line 909
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mScanner:Lcom/android/settings/wifi/AccessPointListDialog$Scanner;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;->resume()V

    goto :goto_1

    .line 922
    .restart local v0       #i:I
    :cond_5
    iget-boolean v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mResetNetworks:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v1, :cond_6

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v1, :cond_6

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_0

    .line 924
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->updateAccessPoints()V

    .line 925
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->enableNetworks()V

    goto :goto_0
.end method

.method private updateWifiState(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    .line 930
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 931
    iget-boolean v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWpsInProgress:Z

    if-nez v0, :cond_0

    .line 932
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mScanner:Lcom/android/settings/wifi/AccessPointListDialog$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;->resume()V

    .line 934
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->updateAccessPoints()V

    .line 952
    :goto_0
    return-void

    .line 937
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 939
    const-string v0, "AccessPointListDialog"

    const-string v1, "Uzzal : Wifi is disabled so dismising list-dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mScanner:Lcom/android/settings/wifi/AccessPointListDialog$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;->pause()V

    .line 941
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 942
    iput-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 943
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->finish()V

    goto :goto_0

    .line 946
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mScanner:Lcom/android/settings/wifi/AccessPointListDialog$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;->pause()V

    .line 947
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 949
    iput-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    goto :goto_0
.end method

.method private updateWpsEvent(I)V
    .locals 4
    .parameter "eventType"

    .prologue
    const v2, 0x7f09019e

    const-string v3, "AccessPointListDialog"

    .line 847
    const-string v0, "AccessPointListDialog"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleWpsEvent: eventType - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mScanner:Lcom/android/settings/wifi/AccessPointListDialog$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;->resume()V

    .line 850
    packed-switch p1, :pswitch_data_0

    .line 873
    :cond_0
    :goto_0
    return-void

    .line 852
    :pswitch_0
    const-string v0, "AccessPointListDialog"

    const-string v0, "WPS Success"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    if-eqz v0, :cond_0

    .line 854
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->dismissProgressDialog()V

    .line 855
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 861
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/AccessPointListDialog;->showWpsToast(I)V

    goto :goto_0

    .line 864
    :pswitch_2
    const v0, 0x7f09019f

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AccessPointListDialog;->showWpsToast(I)V

    goto :goto_0

    .line 867
    :pswitch_3
    const v0, 0x7f09019d

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AccessPointListDialog;->showWpsToast(I)V

    goto :goto_0

    .line 870
    :pswitch_4
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/AccessPointListDialog;->showWpsToast(I)V

    goto :goto_0

    .line 850
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private wpsCommandCancel()V
    .locals 2

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mScanner:Lcom/android/settings/wifi/AccessPointListDialog$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;->resume()V

    .line 653
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->wpsCommandCancel()Z

    .line 654
    const-string v0, "AccessPointListDialog"

    const-string v1, "wpsCommandCancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    return-void
.end method

.method private wpsPbcConnect()V
    .locals 2

    .prologue
    .line 624
    const-string v0, "AccessPointListDialog"

    const-string v1, "wpsPbcConnect"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mScanner:Lcom/android/settings/wifi/AccessPointListDialog$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;->pause()V

    .line 626
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWpsInProgress:Z

    .line 627
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->wpsPbcConnect()Z

    .line 629
    return-void
.end method

.method private wpsPinConnect(Lcom/android/settings/wifi/AccessPoint;)Z
    .locals 5
    .parameter "accessPoint"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "AccessPointListDialog"

    .line 633
    const-string v1, "AccessPointListDialog"

    const-string v1, "wpsPinConnect"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mScanner:Lcom/android/settings/wifi/AccessPointListDialog$Scanner;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;->pause()V

    .line 635
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWpsInProgress:Z

    .line 636
    iget-object v0, p1, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 637
    .local v0, bssid:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->wpsPinConnect(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mRandomPinNumber:I

    .line 638
    iget v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mRandomPinNumber:I

    if-gtz v1, :cond_0

    .line 640
    const-string v1, "AccessPointListDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WPS_PIN: pin value error, value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mRandomPinNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iput v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mRandomPinNumber:I

    .line 642
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->wpsCommandCancel()V

    move v1, v3

    .line 645
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialogInterface"
    .parameter "button"

    .prologue
    const/4 v6, -0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v5, -0x1

    .line 428
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v4, v5, :cond_1

    move v1, v8

    .line 430
    .local v1, forgetable:Z
    :goto_0
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    iget-boolean v4, v4, Lcom/android/settings/wifi/WifiDialog;->manageNetwork:Z

    if-eqz v4, :cond_3

    .line 431
    if-ne p2, v6, :cond_2

    .line 432
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v4, v8}, Lcom/android/settings/wifi/AccessPointListDialog;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    .line 484
    :cond_0
    :goto_1
    return-void

    .end local v1           #forgetable:Z
    :cond_1
    move v1, v7

    .line 428
    goto :goto_0

    .line 433
    .restart local v1       #forgetable:Z
    :cond_2
    const/4 v4, -0x2

    if-ne p2, v4, :cond_0

    .line 434
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/AccessPointListDialog;->forget(I)V

    .line 435
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    iget-object v5, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v4, v5}, Lcom/android/settings/ProgressCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 437
    :cond_3
    if-ne p2, v5, :cond_4

    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    iget-boolean v4, v4, Lcom/android/settings/wifi/WifiDialog;->edit:Z

    if-nez v4, :cond_4

    .line 438
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/AccessPointListDialog;->forget(I)V

    .line 440
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    iget-object v5, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v4, v5}, Lcom/android/settings/ProgressCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 441
    :cond_4
    if-eq p2, v6, :cond_5

    if-ne p2, v5, :cond_b

    :cond_5
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v4, :cond_b

    .line 442
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v4}, Lcom/android/settings/wifi/WifiDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 444
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_6

    .line 445
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/AccessPointListDialog;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 446
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/AccessPointListDialog;->connect(I)V

    goto :goto_1

    .line 448
    :cond_6
    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v4, v5, :cond_7

    .line 449
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v4, :cond_0

    .line 450
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v0}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 451
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->saveNetworks()V

    goto :goto_1

    .line 454
    :cond_7
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    .line 456
    .local v3, networkId:I
    if-ne v3, v5, :cond_8

    .line 457
    const v4, 0x7f0905a8

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 460
    :cond_8
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v3, v7}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 461
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 462
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    iget-boolean v4, v4, Lcom/android/settings/wifi/WifiDialog;->edit:Z

    if-nez v4, :cond_9

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AccessPointListDialog;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 464
    :cond_9
    const v4, 0x7f09000d

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/wifi/AccessPointListDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 465
    .local v2, messageRes:Ljava/lang/String;
    invoke-static {p0, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 466
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->saveNetworks()V

    .line 467
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/AccessPointListDialog;->connect(I)V

    goto/16 :goto_1

    .line 469
    .end local v2           #messageRes:Ljava/lang/String;
    :cond_a
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/AccessPointListDialog;->connect(I)V

    goto/16 :goto_1

    .line 475
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v3           #networkId:I
    :cond_b
    if-ne p2, v6, :cond_0

    iget-object v4, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v4, :cond_0

    .line 477
    const-string v4, "AccessPointListDialog"

    const-string v5, "onClick() WPS_PIN"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/AccessPointListDialog;->wpsPinConnect(Lcom/android/settings/wifi/AccessPoint;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 479
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/AccessPointListDialog;->showProgressDialog(I)V

    goto/16 :goto_1

    .line 481
    :cond_c
    const v4, 0x7f09019e

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/AccessPointListDialog;->showWpsToast(I)V

    goto/16 :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 222
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 223
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 285
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    if-nez v2, :cond_0

    .line 286
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    .line 325
    :goto_0
    return v2

    .line 288
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 325
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0

    .line 290
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 291
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/AccessPointListDialog;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 292
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/AccessPointListDialog;->connect(I)V

    :cond_1
    :goto_1
    move v2, v4

    .line 306
    goto :goto_0

    .line 294
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v2, :cond_3

    .line 296
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 297
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 298
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 299
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 300
    .local v1, networkId:I
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1, v5}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 301
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/AccessPointListDialog;->connect(I)V

    goto :goto_1

    .line 303
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #networkId:I
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v2, v5}, Lcom/android/settings/wifi/AccessPointListDialog;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_1

    .line 308
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/AccessPointListDialog;->forget(I)V

    .line 310
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2, v3}, Lcom/android/settings/ProgressCategory;->removePreference(Landroid/preference/Preference;)Z

    move v2, v4

    .line 311
    goto :goto_0

    .line 313
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v2, v4}, Lcom/android/settings/wifi/AccessPointListDialog;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    move v2, v4

    .line 315
    goto :goto_0

    .line 318
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/AccessPointListDialog;->wpsPinConnect(Lcom/android/settings/wifi/AccessPoint;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 319
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/AccessPointListDialog;->showProgressDialog(I)V

    :goto_2
    move v2, v4

    .line 323
    goto :goto_0

    .line 321
    :cond_4
    const v2, 0x7f09019e

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/AccessPointListDialog;->showWpsToast(I)V

    goto :goto_2

    .line 288
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const-string v4, "AccessPointListDialog"

    .line 157
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 159
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AccessPointListDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 160
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AccessPointListDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mPowerManager:Landroid/os/PowerManager;

    .line 161
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mPowerManager:Landroid/os/PowerManager;

    const/16 v2, 0x1a

    const-string v3, "AccessPointListDialog"

    invoke-virtual {v1, v2, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 166
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AccessPointListDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 167
    .local v0, mStatusBar:Landroid/app/StatusBarManager;
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    .line 169
    const v1, 0x7f040001

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AccessPointListDialog;->addPreferencesFromResource(I)V

    .line 171
    const-string v1, "access_points"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AccessPointListDialog;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/ProgressCategory;

    iput-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    .line 172
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAccessPoints:Lcom/android/settings/ProgressCategory;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/ProgressCategory;->setOrderingAsAdded(Z)V

    .line 173
    const-string v1, "add_network"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AccessPointListDialog;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAddNetwork:Landroid/preference/Preference;

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AccessPointListDialog;->registerForContextMenu(Landroid/view/View;)V

    .line 175
    const-string v1, "AccessPointListDialog"

    const-string v1, "onCreate() finish"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8
    .parameter "menu"
    .parameter "view"
    .parameter "info"

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 256
    instance-of v3, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v3, :cond_2

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3
    iget v4, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    .line 260
    .local v2, preference:Landroid/preference/Preference;
    instance-of v3, v2, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_2

    .line 261
    check-cast v2, Lcom/android/settings/wifi/AccessPoint;

    .end local v2           #preference:Landroid/preference/Preference;
    iput-object v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    .line 262
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v3

    if-eq v3, v6, :cond_3

    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    if-nez v3, :cond_3

    move v0, v7

    .line 263
    .local v0, connectable:Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v3, v6, :cond_4

    move v1, v7

    .line 264
    .local v1, forgetable:Z
    :goto_1
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget-object v3, v3, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 265
    if-eqz v0, :cond_0

    .line 266
    const/4 v3, 0x3

    const v4, 0x7f090193

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 268
    :cond_0
    if-eqz v1, :cond_1

    .line 269
    const/4 v3, 0x4

    const v4, 0x7f090194

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 270
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eqz v3, :cond_1

    .line 271
    const/4 v3, 0x5

    const v4, 0x7f090195

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 276
    :cond_1
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget-boolean v3, v3, Lcom/android/settings/wifi/AccessPoint;->wpsPinMode:Z

    if-eqz v3, :cond_2

    .line 281
    .end local v0           #connectable:Z
    .end local v1           #forgetable:Z
    :cond_2
    return-void

    :cond_3
    move v0, v5

    .line 262
    goto :goto_0

    .restart local v0       #connectable:Z
    :cond_4
    move v1, v5

    .line 263
    goto :goto_1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    const-string v1, "AccessPointListDialog"

    .line 597
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-ne p1, v0, :cond_1

    .line 598
    const-string v0, "AccessPointListDialog"

    const-string v0, "onDismiss(), dismiss mDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 600
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mProgressDialog:Lcom/sec/android/touchwiz/widget/TwProgressDialog;

    if-ne p1, v0, :cond_0

    .line 601
    const-string v0, "AccessPointListDialog"

    const-string v0, "onDismiss(), dismiss mProgressDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-boolean v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWpsInProgress:Z

    if-eqz v0, :cond_0

    .line 603
    const-string v0, "AccessPointListDialog"

    const-string v0, "onDismiss(), mWpsInProgress is true"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->dismissProgressDialog()V

    .line 605
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->wpsCommandCancel()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 195
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 196
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPointListDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 200
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mScanner:Lcom/android/settings/wifi/AccessPointListDialog$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;->pause()V

    .line 207
    iget-boolean v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mResetNetworks:Z

    if-eqz v0, :cond_1

    .line 208
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->enableNetworks()V

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 211
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 215
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->dismissProgressDialog()V

    .line 216
    const-string v0, "AccessPointListDialog"

    const-string v1, "onPause() finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "screen"
    .parameter "preference"

    .prologue
    const v6, 0x7f0904b1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    const-string v3, "AccessPointListDialog"

    .line 330
    const-string v0, "AccessPointListDialog"

    const-string v0, "onPreferenceTreeClick()"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    instance-of v0, p2, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_4

    .line 332
    check-cast p2, Lcom/android/settings/wifi/AccessPoint;

    .end local p2
    iput-object p2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    .line 334
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 335
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v0, :cond_1

    .line 336
    const-string v0, "AccessPointListDialog"

    const-string v0, "detected  NETWORK open "

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0905f8

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget-object v5, v5, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    aput-object v5, v3, v2

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/wifi/AccessPointListDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0905f7

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget-object v5, v5, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    aput-object v5, v3, v2

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/wifi/AccessPointListDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/AccessPointListDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/AccessPointListDialog$4;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/AccessPointListDialog$4;-><init>(Lcom/android/settings/wifi/AccessPointListDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0904b2

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AccessPointListDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/AccessPointListDialog$3;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/AccessPointListDialog$3;-><init>(Lcom/android/settings/wifi/AccessPointListDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/AccessPointListDialog$2;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/AccessPointListDialog$2;-><init>(Lcom/android/settings/wifi/AccessPointListDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->ad:Landroid/app/AlertDialog;

    :cond_0
    :goto_0
    move v0, v4

    .line 424
    :goto_1
    return v0

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eq v0, v4, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 369
    :cond_2
    const-string v0, "AccessPointListDialog"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "detected  NETWORK secured status and security ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->security:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0905f8

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget-object v5, v5, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    aput-object v5, v3, v2

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/wifi/AccessPointListDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0905f9

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    iget-object v5, v5, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    aput-object v5, v3, v2

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/wifi/AccessPointListDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/AccessPointListDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/AccessPointListDialog$7;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/AccessPointListDialog$7;-><init>(Lcom/android/settings/wifi/AccessPointListDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0904b2

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AccessPointListDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/AccessPointListDialog$6;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/AccessPointListDialog$6;-><init>(Lcom/android/settings/wifi/AccessPointListDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/AccessPointListDialog$5;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/AccessPointListDialog$5;-><init>(Lcom/android/settings/wifi/AccessPointListDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->ad:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 403
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    move-object v0, p0

    move v3, v2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/AccessPointListDialog;->showDialog(Lcom/android/settings/wifi/AccessPoint;ZZZZ)V

    goto/16 :goto_0

    .line 405
    .restart local p2
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mAddNetwork:Landroid/preference/Preference;

    if-ne p2, v0, :cond_5

    .line 406
    iput-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    .line 407
    invoke-direct {p0, v1, v4}, Lcom/android/settings/wifi/AccessPointListDialog;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto/16 :goto_0

    .line 411
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWpsButton:Landroid/preference/Preference;

    if-ne p2, v0, :cond_6

    .line 412
    iput-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    .line 413
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/AccessPointListDialog;->showProgressDialog(I)V

    .line 414
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->wpsPbcConnect()V

    goto/16 :goto_0

    .line 417
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mNotifyOpenNetworks:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_8

    .line 418
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_networks_available_notification_on"

    iget-object v3, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mNotifyOpenNetworks:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_7

    move v2, v4

    :cond_7
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 422
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto/16 :goto_1
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 180
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 181
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/AccessPointListDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 185
    iget v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mKeyStoreNetworkId:I

    if-eq v0, v2, :cond_1

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->test()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 186
    iget v0, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mKeyStoreNetworkId:I

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AccessPointListDialog;->connect(I)V

    .line 188
    :cond_1
    iput v2, p0, Lcom/android/settings/wifi/AccessPointListDialog;->mKeyStoreNetworkId:I

    .line 189
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPointListDialog;->updateAccessPoints()V

    .line 190
    const-string v0, "AccessPointListDialog"

    const-string v1, "onResume() finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-void
.end method
