.class public Lcom/android/settings/bluetooth/BluetoothSettings;
.super Landroid/preference/PreferenceActivity;
.source "BluetoothSettings.java"

# interfaces
.implements Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;


# static fields
.field private static final BLUETOOTH_START_DIALOG:I = 0x2

.field private static final DEBUG:Z = true

.field private static final KEY_BT_CHECKBOX:Ljava/lang/String; = "bt_checkbox"

.field private static final KEY_BT_DEVICE_LIST:Ljava/lang/String; = "bt_device_list"

.field private static final KEY_BT_DISCOVERABLE:Ljava/lang/String; = "bt_discoverable"

.field private static final KEY_BT_NAME:Ljava/lang/String; = "bt_name"

.field private static final KEY_BT_SCAN:Ljava/lang/String; = "bt_scan"

.field private static final SCREEN_TYPE_DEVICEPICKER:I = 0x1

.field private static final SCREEN_TYPE_SETTINGS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BluetoothSettings"


# instance fields
.field private bluetoothState:I

.field private intent:Landroid/content/Intent;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mBtenableDevicePicker:Z

.field private mCallFromBPP:Z

.field private mCallFromHeadset:Z

.field private mCallFromObex:Z

.field private final mDensoCarkit_03Navi:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceList:Lcom/android/settings/ProgressCategory;

.field private mDevicePreferenceMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/android/settings/bluetooth/CachedBluetoothDevice;",
            "Lcom/android/settings/bluetooth/BluetoothDevicePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

.field private mEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

.field private mFilterType:I

.field private mLaunchClass:Ljava/lang/String;

.field private mLaunchPackage:Ljava/lang/String;

.field private mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private mNamePreference:Lcom/android/settings/bluetooth/BluetoothNamePreference;

.field private mNeedAuth:Z

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenType:I

.field private mSelectedDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 78
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 113
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    .line 117
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mCallFromObex:Z

    .line 118
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mCallFromBPP:Z

    .line 119
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mCallFromHeadset:Z

    .line 120
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBtenableDevicePicker:Z

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "00:02:C7"

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDensoCarkit_03Navi:Ljava/util/ArrayList;

    .line 141
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothSettings$1;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settings/bluetooth/LocalBluetoothManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/BluetoothSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->onBluetoothStateChanged(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/BluetoothSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScreenType:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/bluetooth/BluetoothSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBtenableDevicePicker:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings/bluetooth/BluetoothSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBtenableDevicePicker:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/util/WeakHashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/bluetooth/BluetoothSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->addDevices()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/bluetooth/BluetoothSettings;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/bluetooth/BluetoothSettings;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/bluetooth/BluetoothSettings;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method private addDevicePreference(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)Z
    .locals 7
    .parameter "cachedDevice"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 535
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v2

    .line 536
    .local v2, uuids:[Landroid/os/ParcelUuid;
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    .line 537
    .local v1, bluetoothClass:Landroid/bluetooth/BluetoothClass;
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 539
    .local v0, bda:Ljava/lang/String;
    iget v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mFilterType:I

    packed-switch v3, :pswitch_data_0

    move v3, v5

    .line 599
    :goto_0
    return v3

    .line 541
    :pswitch_0
    if-eqz v2, :cond_1

    .line 542
    sget-object v3, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->OPP_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->isDensoCarkit_03Navi(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v3, v5

    .line 544
    goto :goto_0

    .line 545
    :cond_1
    if-eqz v1, :cond_9

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v5

    .line 547
    goto :goto_0

    .line 551
    :pswitch_1
    if-eqz v2, :cond_3

    .line 552
    sget-object v3, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->A2DP_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v5

    .line 553
    goto :goto_0

    .line 555
    :cond_2
    sget-object v3, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->HEADSET_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v5

    .line 556
    goto :goto_0

    .line 557
    :cond_3
    if-eqz v1, :cond_9

    .line 558
    invoke-virtual {v1, v5}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v5

    goto :goto_0

    .line 560
    :cond_4
    invoke-virtual {v1, v6}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v5

    goto :goto_0

    .line 566
    :pswitch_2
    if-eqz v2, :cond_5

    .line 567
    sget-object v3, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->HEADSET_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v5

    .line 568
    goto :goto_0

    .line 569
    :cond_5
    if-eqz v1, :cond_9

    .line 570
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v3

    const/16 v4, 0x408

    if-eq v3, v4, :cond_6

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v3

    const/16 v4, 0x404

    if-eq v3, v4, :cond_6

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v3

    const/16 v4, 0x420

    if-ne v3, v4, :cond_9

    :cond_6
    move v3, v5

    .line 572
    goto :goto_0

    .line 576
    :pswitch_3
    if-eqz v2, :cond_7

    .line 577
    sget-object v3, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->A2DP_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v5

    .line 578
    goto :goto_0

    .line 579
    :cond_7
    if-eqz v1, :cond_9

    .line 580
    invoke-virtual {v1, v5}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v3

    const/16 v4, 0x600

    if-eq v3, v4, :cond_9

    move v3, v5

    .line 581
    goto/16 :goto_0

    .line 585
    :pswitch_4
    if-eqz v2, :cond_8

    .line 586
    sget-object v3, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;->PRINTER_PROFILE_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v5

    .line 587
    goto/16 :goto_0

    .line 589
    :cond_8
    if-eqz v1, :cond_9

    .line 590
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v5

    .line 591
    goto/16 :goto_0

    :cond_9
    move v3, v6

    .line 599
    goto/16 :goto_0

    .line 539
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private addDevices()V
    .locals 5

    .prologue
    .line 388
    const-string v3, "BluetoothSettings"

    const-string v4, "[SISO]call to addDevices from settings"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/List;

    move-result-object v1

    .line 391
    .local v1, cachedDevices:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/bluetooth/CachedBluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .line 392
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->onDeviceAdded(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 394
    .end local v0           #cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    :cond_0
    return-void
.end method

.method private cancelDiscovery()V
    .locals 2

    .prologue
    .line 643
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 645
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceList:Lcom/android/settings/ProgressCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 647
    :cond_0
    return-void
.end method

.method private createDevicePreference(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 2
    .parameter "cachedDevice"

    .prologue
    .line 603
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;-><init>(Landroid/content/Context;Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    .line 604
    .local v0, preference:Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceList:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1, v0}, Lcom/android/settings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 605
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    return-void
.end method

.method private getDeviceFromMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .locals 6
    .parameter "menuInfo"

    .prologue
    const/4 v5, 0x0

    .line 500
    if-eqz p1, :cond_0

    instance-of v3, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-nez v3, :cond_1

    :cond_0
    move-object v3, v5

    .line 511
    :goto_0
    return-object v3

    .line 504
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v1, v0

    .line 505
    .local v1, adapterMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    iget v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    .line 507
    .local v2, pref:Landroid/preference/Preference;
    if-eqz v2, :cond_2

    instance-of v3, v2, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-nez v3, :cond_3

    :cond_2
    move-object v3, v5

    .line 508
    goto :goto_0

    .line 511
    :cond_3
    check-cast v2, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .end local v2           #pref:Landroid/preference/Preference;
    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    goto :goto_0
.end method

.method private onBluetoothStateChanged(I)V
    .locals 2
    .parameter "bluetoothState"

    .prologue
    .line 622
    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 627
    :cond_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceList:Lcom/android/settings/ProgressCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    goto :goto_0
.end method

.method private sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .parameter "device"

    .prologue
    .line 633
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.devicepicker.action.DEVICE_SELECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 634
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLaunchPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLaunchClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 635
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLaunchPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLaunchClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 637
    :cond_0
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 638
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 639
    return-void
.end method


# virtual methods
.method public isDensoCarkit_03Navi(Ljava/lang/String;)Z
    .locals 3
    .parameter "address"

    .prologue
    .line 135
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDensoCarkit_03Navi:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 136
    .local v1, mDenso03NaviAddr:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 138
    .end local v1           #mDenso03NaviAddr:Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, 0x2

    .line 319
    if-ne p1, v2, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 320
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->finish()V

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    if-ne p1, v2, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->startScanning(Z)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 529
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 530
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 492
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->getDeviceFromMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 493
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 496
    :goto_0
    return v1

    .line 495
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->onContextItemSelected(Landroid/view/MenuItem;)V

    .line 496
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v10, "bt_device_list"

    const-string v9, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    .line 203
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 205
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 206
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->finish()V

    .line 217
    :cond_0
    iput v7, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mFilterType:I

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 219
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.bluetooth.devicepicker.action.LAUNCH"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 222
    iput v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScreenType:I

    .line 223
    const-string v5, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNeedAuth:Z

    .line 224
    const-string v5, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    invoke-virtual {v3, v9, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mFilterType:I

    .line 226
    const-string v5, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLaunchPackage:Ljava/lang/String;

    .line 227
    const-string v5, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLaunchClass:Ljava/lang/String;

    .line 229
    const v5, 0x7f090092

    invoke-virtual {p0, v5}, Lcom/android/settings/bluetooth/BluetoothSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/bluetooth/BluetoothSettings;->setTitle(Ljava/lang/CharSequence;)V

    .line 230
    const v5, 0x7f040010

    invoke-virtual {p0, v5}, Lcom/android/settings/bluetooth/BluetoothSettings;->addPreferencesFromResource(I)V

    .line 233
    const-string v5, "device_policy"

    invoke-virtual {p0, v5}, Lcom/android/settings/bluetooth/BluetoothSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    .line 234
    .local v4, mDPM:Landroid/app/admin/DevicePolicyManager;
    const-string v5, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    invoke-virtual {v3, v9, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mFilterType:I

    .line 237
    invoke-virtual {v4, v6}, Landroid/app/admin/DevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v5

    if-nez v5, :cond_2

    .line 238
    const v5, 0x7f09063f

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->finish()V

    .line 314
    .end local v4           #mDPM:Landroid/app/admin/DevicePolicyManager;
    :cond_1
    :goto_0
    return-void

    .line 241
    .restart local v4       #mDPM:Landroid/app/admin/DevicePolicyManager;
    :cond_2
    invoke-virtual {v4, v6}, Landroid/app/admin/DevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v5

    if-ne v5, v8, :cond_3

    iget v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mFilterType:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    iget v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mFilterType:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_3

    .line 243
    const v5, 0x7f090640

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 244
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->finish()V

    goto :goto_0

    .line 250
    :cond_3
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothState()I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_5

    .line 262
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/broadcom/bt/app/settings/BluetoothEnableActivity;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 263
    .local v2, in:Landroid/content/Intent;
    const/4 v5, 0x2

    invoke-virtual {p0, v2, v5}, Lcom/android/settings/bluetooth/BluetoothSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 300
    .end local v2           #in:Landroid/content/Intent;
    .end local v4           #mDPM:Landroid/app/admin/DevicePolicyManager;
    :cond_4
    :goto_1
    const-string v5, "bt_device_list"

    invoke-virtual {p0, v10}, Lcom/android/settings/bluetooth/BluetoothSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/ProgressCategory;

    iput-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceList:Lcom/android/settings/ProgressCategory;

    .line 302
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/bluetooth/BluetoothSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 305
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 306
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 307
    const-string v5, "android.obex.FromObexPushActivity"

    invoke-virtual {v1, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mCallFromObex:Z

    .line 308
    const-string v5, "android.printer.PrinterTest"

    invoke-virtual {v1, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mCallFromBPP:Z

    .line 310
    const-string v5, "android.bluetooth.FromHeadsetActivity"

    invoke-virtual {v1, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mCallFromHeadset:Z

    goto :goto_0

    .line 267
    .end local v1           #extras:Landroid/os/Bundle;
    .restart local v4       #mDPM:Landroid/app/admin/DevicePolicyManager;
    :cond_5
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothState()I

    move-result v5

    const/16 v6, 0xc

    if-ne v5, v6, :cond_4

    .line 269
    const-string v5, "BluetoothSettings"

    const-string v6, "SISO Bluetooth is ON condition "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v5, v8}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->startScanning(Z)V

    goto :goto_1

    .line 285
    .end local v4           #mDPM:Landroid/app/admin/DevicePolicyManager;
    :cond_6
    const v5, 0x7f040008

    invoke-virtual {p0, v5}, Lcom/android/settings/bluetooth/BluetoothSettings;->addPreferencesFromResource(I)V

    .line 287
    new-instance v6, Lcom/android/settings/bluetooth/BluetoothEnabler;

    const-string v5, "bt_checkbox"

    invoke-virtual {p0, v5}, Lcom/android/settings/bluetooth/BluetoothSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    invoke-direct {v6, p0, v5}, Lcom/android/settings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v6, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    .line 291
    new-instance v6, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    const-string v5, "bt_discoverable"

    invoke-virtual {p0, v5}, Lcom/android/settings/bluetooth/BluetoothSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    invoke-direct {v6, p0, v5}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v6, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    .line 295
    const-string v5, "bt_name"

    invoke-virtual {p0, v5}, Lcom/android/settings/bluetooth/BluetoothSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/bluetooth/BluetoothNamePreference;

    iput-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNamePreference:Lcom/android/settings/bluetooth/BluetoothNamePreference;

    .line 297
    const-string v5, "bt_device_list"

    invoke-virtual {p0, v10}, Lcom/android/settings/bluetooth/BluetoothSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/ProgressCategory;

    iput-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceList:Lcom/android/settings/ProgressCategory;

    goto/16 :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 479
    iget v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScreenType:I

    if-eqz v1, :cond_1

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 482
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/settings/bluetooth/BluetoothSettings;->getDeviceFromMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 483
    .local v0, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    if-eqz v0, :cond_0

    .line 485
    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 487
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->cancelDiscovery()V

    goto :goto_0
.end method

.method public onDeviceAdded(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 2
    .parameter "cachedDevice"

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 517
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Got onDeviceAdded, but cachedDevice already exists"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 520
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->addDevicePreference(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 521
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothSettings;->createDevicePreference(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    .line 523
    :cond_1
    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 2
    .parameter "cachedDevice"

    .prologue
    .line 609
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 610
    .local v0, preference:Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    if-eqz v0, :cond_0

    .line 611
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceList:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1, v0}, Lcom/android/settings/ProgressCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 613
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 362
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 366
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->cancelDiscovery()V

    .line 369
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/app/Activity;)V

    .line 371
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 373
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->unregisterCallback(Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;)V

    .line 374
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScreenType:I

    if-nez v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNamePreference:Lcom/android/settings/bluetooth/BluetoothNamePreference;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->pause()V

    .line 376
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->pause()V

    .line 377
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->pause()V

    .line 379
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 11
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    const-string v10, "android.obex.SelectedDeviceName"

    const-string v9, "android.obex.SelectedDeviceAddress"

    const-string v8, "android.intent.action.SEND"

    .line 400
    const-string v4, "bt_scan"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 401
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v4, v6}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->startScanning(Z)V

    move v4, v6

    .line 472
    :goto_0
    return v4

    .line 407
    :cond_0
    const-string v4, "bt_checkbox"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 408
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->cancelDiscovery()V

    .line 412
    :cond_1
    instance-of v4, p2, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-eqz v4, :cond_9

    .line 413
    move-object v0, p2

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    move-object v1, v0

    .line 415
    .local v1, btPreference:Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    iget-boolean v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mCallFromObex:Z

    if-eqz v4, :cond_3

    .line 418
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->cancelDiscovery()V

    .line 420
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 421
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "android.obex.settings"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 422
    const-string v4, "android.obex.SelectedDeviceAddress"

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    const-string v4, "android.obex.SelectedDeviceName"

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 425
    invoke-virtual {p0, v7, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->setResult(ILandroid/content/Intent;)V

    .line 426
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->finish()V

    .end local v3           #intent:Landroid/content/Intent;
    :cond_2
    :goto_1
    move v4, v6

    .line 469
    goto :goto_0

    .line 427
    :cond_3
    iget-boolean v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mCallFromBPP:Z

    if-eqz v4, :cond_4

    .line 430
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->cancelDiscovery()V

    .line 432
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 433
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v4, "android.obex.settings"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 434
    const-string v4, "android.obex.SelectedDeviceAddress"

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    const-string v4, "android.obex.SelectedDeviceName"

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    invoke-virtual {p0, v7, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->setResult(ILandroid/content/Intent;)V

    .line 438
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->finish()V

    goto :goto_1

    .line 441
    .end local v3           #intent:Landroid/content/Intent;
    :cond_4
    iget-boolean v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mCallFromHeadset:Z

    if-eqz v4, :cond_5

    .line 442
    const-string v4, "BluetoothSettings"

    const-string v5, "Connecting Bluetooth Headset in Call Screen/MP Screen"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->onClicked()V

    goto :goto_1

    .line 446
    :cond_5
    iget v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScreenType:I

    if-nez v4, :cond_6

    .line 454
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->onClicked()V

    goto :goto_1

    .line 455
    :cond_6
    iget v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScreenType:I

    if-ne v4, v6, :cond_2

    .line 456
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    .line 458
    .local v2, device:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 459
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->stopScanning()V

    .line 460
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->persistSelectedDeviceInPicker(Ljava/lang/String;)V

    .line 461
    invoke-virtual {v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v4

    const/16 v5, 0xc

    if-eq v4, v5, :cond_7

    iget-boolean v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNeedAuth:Z

    if-nez v4, :cond_8

    .line 463
    :cond_7
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    .line 464
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->finish()V

    goto/16 :goto_1

    .line 466
    :cond_8
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->onClicked()V

    goto/16 :goto_1

    .line 472
    .end local v1           #btPreference:Lcom/android/settings/bluetooth/BluetoothDevicePreference;
    .end local v2           #device:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 332
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 336
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->clear()V

    .line 337
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceList:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 338
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->addDevices()V

    .line 340
    iget v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mScreenType:I

    if-nez v1, :cond_0

    .line 341
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->resume()V

    .line 342
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->resume()V

    .line 343
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mNamePreference:Lcom/android/settings/bluetooth/BluetoothNamePreference;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->resume()V

    .line 346
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1, p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->registerCallback(Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;)V

    .line 353
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 354
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 355
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 356
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 357
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1, p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/app/Activity;)V

    .line 358
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 1
    .parameter "started"

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceList:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, p1}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 617
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .prologue
    .line 383
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onUserLeaveHint()V

    .line 384
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->stopScanning()V

    .line 385
    return-void
.end method
