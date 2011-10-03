.class public Lcom/android/settings/wifi/WifiApManageAllowedDevice;
.super Landroid/preference/PreferenceActivity;
.source "WifiApManageAllowedDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiApManageAllowedDevice$DisconnectDelayThread;
    }
.end annotation


# static fields
.field private static final ADD_DEVICE:Ljava/lang/String; = "add_device"

.field private static final ALLOW_ALL_DEVICE_CONNECT:Ljava/lang/String; = "allow_all_devices_to_connect"

.field private static final DEVICE_LIST_CATEGORY:Ljava/lang/String; = "device_list_category"

.field private static final DIALOG_ADD_DEVICE:I = 0x2

.field private static final DIALOG_DISCONNECT:I = 0x1

.field private static final DIALOG_MAC_ADDRESS_NULL_WARN:I = 0x3

.field private static final STA_DISCONNECT_DELAY:I = 0x1f4


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAddDevice:Landroid/preference/Preference;

.field private mAllowAllDeviceConnect:Landroid/preference/CheckBoxPreference;

.field private mDeviceList:Landroid/preference/PreferenceCategory;

.field private mDisconnectDelayThread:Lcom/android/settings/wifi/WifiApManageAllowedDevice$DisconnectDelayThread;

.field private mSelected:Landroid/preference/Preference;

.field private mView:Landroid/view/View;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mac_address:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 54
    const-string v0, "WifiApManageAllowedDevice"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->TAG:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 62
    iput-object v1, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mDisconnectDelayThread:Lcom/android/settings/wifi/WifiApManageAllowedDevice$DisconnectDelayThread;

    .line 471
    return-void
.end method

.method private static final IsMacAddress(Ljava/lang/String;)Z
    .locals 3
    .parameter "macAddressCandidate"

    .prologue
    .line 406
    const-string v2, "[0-9a-fA-F]{2}[-:][0-9a-fA-F]{2}[-:][0-9a-fA-F]{2}[-:][0-9a-fA-F]{2}[-:][0 -9a-fA-F]{2}[-:][0-9a-fA-F]{2}"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 407
    .local v1, macPattern:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 408
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method private MakeMacString()V
    .locals 6

    .prologue
    .line 416
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration;->whiteMacAddr:Ljava/lang/String;

    .line 417
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mDeviceList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int v2, v3, v4

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 418
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mDeviceList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/WifiApAllowedDevice;

    .line 419
    .local v1, device:Lcom/android/settings/wifi/WifiApAllowedDevice;
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->whiteMacAddr:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 420
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiApAllowedDevice;->getMac()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration;->whiteMacAddr:Ljava/lang/String;

    .line 425
    :goto_1
    const-string v3, "WifiApManageAllowedDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MakeMacString : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->whiteMacAddr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 422
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->whiteMacAddr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiApAllowedDevice;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, buffer:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object v0, v3, Landroid/net/wifi/WifiConfiguration;->whiteMacAddr:Ljava/lang/String;

    goto :goto_1

    .line 427
    .end local v0           #buffer:Ljava/lang/String;
    .end local v1           #device:Lcom/android/settings/wifi/WifiApAllowedDevice;
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mDeviceList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/WifiConfiguration;->whiteMacCnt:I

    .line 428
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiApManageAllowedDevice;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mSelected:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiApManageAllowedDevice;)Landroid/preference/PreferenceCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mDeviceList:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic access$1000(Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-static {p0}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->IsMacAddress(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiApManageAllowedDevice;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->MakeMacString()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiApManageAllowedDevice;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->setWhiteListMac()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiApManageAllowedDevice;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mAllowAllDeviceConnect:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiApManageAllowedDevice;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiApManageAllowedDevice;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->setAllowAllDeviceChecked()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WifiApManageAllowedDevice;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settings/wifi/WifiApManageAllowedDevice;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/WifiApManageAllowedDevice;)Lcom/android/settings/wifi/WifiApManageAllowedDevice$DisconnectDelayThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mDisconnectDelayThread:Lcom/android/settings/wifi/WifiApManageAllowedDevice$DisconnectDelayThread;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/settings/wifi/WifiApManageAllowedDevice;Lcom/android/settings/wifi/WifiApManageAllowedDevice$DisconnectDelayThread;)Lcom/android/settings/wifi/WifiApManageAllowedDevice$DisconnectDelayThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mDisconnectDelayThread:Lcom/android/settings/wifi/WifiApManageAllowedDevice$DisconnectDelayThread;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/WifiApManageAllowedDevice;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mac_address:Landroid/widget/EditText;

    return-object v0
.end method

.method private getWhiteListMac()V
    .locals 4

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 434
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const-string v2, "mifi_ap_white_mac_addr"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration;->whiteMacAddr:Ljava/lang/String;

    .line 435
    const-string v1, "WifiApManageAllowedDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWhiteListMac : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->whiteMacAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    return-void
.end method

.method private resetAllowedDevice()V
    .locals 3

    .prologue
    .line 400
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mDeviceList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 401
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mDeviceList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/WifiApAllowedDevice;

    .line 400
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 403
    :cond_0
    return-void
.end method

.method private setAllowAllDeviceChecked()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const-string v6, "WifiApManageAllowedDevice"

    .line 451
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 456
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const-string v4, "mifi_ap_profile_num"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/net/wifi/WifiConfiguration;->profileNumber:I

    .line 458
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->profileNumber:I

    sub-int v2, v3, v5

    .line 460
    .local v2, index:I
    sget-object v3, Landroid/provider/Settings$System;->MIFI_ALLOW_ALL_DEVICE_CHECKED:[Ljava/lang/String;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v4, v4, Landroid/net/wifi/WifiConfiguration;->allow_all_device_checked:Z

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 461
    const-string v3, "WifiApManageAllowedDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setWhiteListMac : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v5, v5, Landroid/net/wifi/WifiConfiguration;->allow_all_device_checked:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    .end local v2           #index:I
    :goto_1
    return-void

    .line 460
    .restart local v2       #index:I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 462
    .end local v2           #index:I
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 463
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "WifiApManageAllowedDevice"

    const-string v3, "setAllowAllDeviceChecked AP settings not found, returning"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setWhiteListMac()V
    .locals 4

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 442
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "mifi_ap_white_mac_cnt"

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->whiteMacCnt:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 443
    const-string v1, "mifi_ap_white_mac_addr"

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->whiteMacAddr:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 444
    const-string v1, "WifiApManageAllowedDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWhiteListMac : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->whiteMacAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    return-void
.end method

.method private updateAllowedDevice()V
    .locals 10

    .prologue
    .line 367
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 369
    .local v1, allowedDevices:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/wifi/WifiApAllowedDevice;>;"
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mDeviceList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 372
    const/4 v4, 0x0

    .line 373
    .local v4, device_mac:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->getWhiteListMac()V

    .line 374
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v7, v9, Landroid/net/wifi/WifiConfiguration;->whiteMacAddr:Ljava/lang/String;

    .line 376
    .local v7, mac_String:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v8, v9, Landroid/net/wifi/WifiConfiguration;->whiteMacCnt:I

    .line 377
    .local v8, mac_num:I
    const/4 v2, 0x0

    .line 378
    .local v2, cursor:I
    if-eqz v7, :cond_0

    .line 379
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v8, :cond_0

    .line 381
    add-int/lit8 v9, v2, 0x11

    invoke-virtual {v7, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 382
    if-eqz v4, :cond_0

    .line 383
    new-instance v3, Lcom/android/settings/wifi/WifiApAllowedDevice;

    invoke-direct {v3, p0, v4}, Lcom/android/settings/wifi/WifiApAllowedDevice;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 384
    .local v3, device:Lcom/android/settings/wifi/WifiApAllowedDevice;
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    add-int/lit8 v2, v2, 0x11

    .line 379
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 393
    .end local v3           #device:Lcom/android/settings/wifi/WifiApAllowedDevice;
    .end local v5           #i:I
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiApAllowedDevice;

    .line 394
    .local v0, allowedDevice:Lcom/android/settings/wifi/WifiApAllowedDevice;
    iget-object v9, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mDeviceList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 396
    .end local v0           #allowedDevice:Lcom/android/settings/wifi/WifiApAllowedDevice;
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 82
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const v0, 0x7f030068

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->addPreferencesFromResource(I)V

    .line 85
    const-string v0, "allow_all_devices_to_connect"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mAllowAllDeviceConnect:Landroid/preference/CheckBoxPreference;

    .line 86
    const-string v0, "add_device"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mAddDevice:Landroid/preference/Preference;

    .line 87
    const-string v0, "device_list_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mDeviceList:Landroid/preference/PreferenceCategory;

    .line 90
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 91
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApProfileConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 93
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_0

    .line 94
    const-string v0, "WifiApManageAllowedDevice"

    const-string v1, "WifiConfig is Null!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string v0, "WifiConfig is Null"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mDeviceList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->setOrderingAsAdded(Z)V

    .line 107
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->updateAllowedDevice()V

    .line 109
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->whiteMacCnt:I

    if-lez v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->allow_all_device_checked:Z

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mAllowAllDeviceConnect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 112
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mAllowAllDeviceConnect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 113
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mAddDevice:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mDeviceList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 132
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mAllowAllDeviceConnect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 117
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mAllowAllDeviceConnect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mAddDevice:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 119
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mDeviceList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    goto :goto_0

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->allow_all_device_checked:Z

    .line 124
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->setAllowAllDeviceChecked()V

    .line 125
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mAllowAllDeviceConnect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 126
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mAllowAllDeviceConnect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 127
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mAddDevice:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter "id"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v4, "WifiApManageAllowedDevice"

    .line 212
    if-ne p1, v5, :cond_0

    .line 213
    const-string v3, "WifiApManageAllowedDevice"

    const-string v3, "DIALOG_DISCONNECT"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mSelected:Landroid/preference/Preference;

    check-cast v2, Lcom/android/settings/wifi/WifiApAllowedDevice;

    .line 216
    .local v2, allowedDevice:Lcom/android/settings/wifi/WifiApAllowedDevice;
    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiApAllowedDevice;->getMac()Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, allowedDevMac:Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiApAllowedDevice;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0901df

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiApAllowedDevice;->getMac()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090005

    new-instance v5, Lcom/android/settings/wifi/WifiApManageAllowedDevice$2;

    invoke-direct {v5, p0, v1}, Lcom/android/settings/wifi/WifiApManageAllowedDevice$2;-><init>(Lcom/android/settings/wifi/WifiApManageAllowedDevice;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090006

    new-instance v5, Lcom/android/settings/wifi/WifiApManageAllowedDevice$1;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/WifiApManageAllowedDevice$1;-><init>(Lcom/android/settings/wifi/WifiApManageAllowedDevice;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 362
    .end local v1           #allowedDevMac:Ljava/lang/String;
    .end local v2           #allowedDevice:Lcom/android/settings/wifi/WifiApAllowedDevice;
    :goto_0
    return-object v3

    .line 270
    :cond_0
    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 271
    const-string v3, "WifiApManageAllowedDevice"

    const-string v3, "DIALOG_ADD_DEVICE"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 273
    .local v0, Add_Device_Dialog:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f09020d

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030058

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mView:Landroid/view/View;

    .line 275
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 276
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mView:Landroid/view/View;

    const v4, 0x7f0b010c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mac_address:Landroid/widget/EditText;

    .line 278
    const v3, 0x7f0901f2

    new-instance v4, Lcom/android/settings/wifi/WifiApManageAllowedDevice$3;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/WifiApManageAllowedDevice$3;-><init>(Lcom/android/settings/wifi/WifiApManageAllowedDevice;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 335
    const v3, 0x7f0900f9

    new-instance v4, Lcom/android/settings/wifi/WifiApManageAllowedDevice$4;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/WifiApManageAllowedDevice$4;-><init>(Lcom/android/settings/wifi/WifiApManageAllowedDevice;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 340
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto :goto_0

    .line 343
    .end local v0           #Add_Device_Dialog:Landroid/app/AlertDialog$Builder;
    :cond_1
    const/4 v3, 0x3

    if-ne p1, v3, :cond_2

    .line 344
    const-string v3, "WifiApManageAllowedDevice"

    const-string v3, "DIALOG_MAC_ADDRESS_NULL_WARN"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1040014

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1080027

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090211

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0905db

    new-instance v5, Lcom/android/settings/wifi/WifiApManageAllowedDevice$6;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/WifiApManageAllowedDevice$6;-><init>(Lcom/android/settings/wifi/WifiApManageAllowedDevice;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    new-instance v5, Lcom/android/settings/wifi/WifiApManageAllowedDevice$5;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/WifiApManageAllowedDevice$5;-><init>(Lcom/android/settings/wifi/WifiApManageAllowedDevice;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    :cond_2
    move-object v3, v6

    .line 362
    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "screen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v5, "WifiApManageAllowedDevice"

    .line 136
    instance-of v1, p2, Lcom/android/settings/wifi/WifiApAllowedDevice;

    if-eqz v1, :cond_0

    .line 137
    check-cast p2, Lcom/android/settings/wifi/WifiApAllowedDevice;

    .end local p2
    iput-object p2, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mSelected:Landroid/preference/Preference;

    .line 138
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->showDialog(I)V

    :goto_0
    move v1, v3

    .line 195
    :goto_1
    return v1

    .line 139
    .restart local p2
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mAddDevice:Landroid/preference/Preference;

    if-ne p2, v1, :cond_1

    .line 140
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->showDialog(I)V

    goto :goto_0

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mAllowAllDeviceConnect:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_6

    .line 143
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mAllowAllDeviceConnect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 145
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-boolean v3, v1, Landroid/net/wifi/WifiConfiguration;->allow_all_device_checked:Z

    .line 146
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->setAllowAllDeviceChecked()V

    .line 148
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->whiteMacCnt:I

    if-lez v1, :cond_3

    .line 149
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mAddDevice:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 150
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mDeviceList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 151
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 165
    :goto_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 167
    .local v0, wifiApState:I
    if-eq v0, v2, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 170
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 172
    new-instance v1, Lcom/android/settings/wifi/WifiApManageAllowedDevice$DisconnectDelayThread;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiApManageAllowedDevice$DisconnectDelayThread;-><init>(Lcom/android/settings/wifi/WifiApManageAllowedDevice;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mDisconnectDelayThread:Lcom/android/settings/wifi/WifiApManageAllowedDevice$DisconnectDelayThread;

    .line 173
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mDisconnectDelayThread:Lcom/android/settings/wifi/WifiApManageAllowedDevice$DisconnectDelayThread;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiApManageAllowedDevice$DisconnectDelayThread;->start()V

    .line 175
    const-string v1, "WifiApManageAllowedDevice"

    const-string v1, "mWifiManager.setWifiApEnabled : true"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 154
    .end local v0           #wifiApState:I
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mAddDevice:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 155
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mDeviceList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    goto :goto_2

    .line 158
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-boolean v4, v1, Landroid/net/wifi/WifiConfiguration;->allow_all_device_checked:Z

    .line 159
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->setAllowAllDeviceChecked()V

    .line 161
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mAddDevice:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 162
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mDeviceList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    goto :goto_2

    .line 177
    .restart local v0       #wifiApState:I
    :cond_5
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApManageAllowedDevice;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2, v4}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 178
    const-string v1, "WifiApManageAllowedDevice"

    const-string v1, "mWifiManager.setWifiApEnabled : false"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 193
    .end local v0           #wifiApState:I
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto/16 :goto_1
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 201
    packed-switch p1, :pswitch_data_0

    .line 206
    :goto_0
    return-void

    .line 203
    :pswitch_0
    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0

    .line 201
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
