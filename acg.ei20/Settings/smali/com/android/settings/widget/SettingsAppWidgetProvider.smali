.class public Lcom/android/settings/widget/SettingsAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/SettingsAppWidgetProvider$1;,
        Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker;,
        Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker;,
        Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;,
        Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker;,
        Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;
    }
.end annotation


# static fields
.field private static final BUTTON_BLUETOOTH:I = 0x4

.field private static final BUTTON_BRIGHTNESS:I = 0x1

.field private static final BUTTON_GPS:I = 0x3

.field private static final BUTTON_SYNC:I = 0x2

.field private static final BUTTON_WIFI:I = 0x0

.field private static final DEFAULT_BACKLIGHT:I = 0x66

.field private static final GPS_SHOW_DO_NOT:Ljava/lang/String; = "com.android.settings.GPSDdialogFlag"

.field private static final IND_DRAWABLE_MID:[I = null

.field private static final IND_DRAWABLE_OFF:[I = null

.field private static final IND_DRAWABLE_ON:[I = null

.field private static final IS_SHOW:Ljava/lang/String; = "show_again"

.field private static final MAXIMUM_BACKLIGHT:I = 0xff

.field private static final MINIMUM_BACKLIGHT:I = 0x1e

.field private static final POS_CENTER:I = 0x1

.field private static final POS_LEFT:I = 0x0

.field private static final POS_RIGHT:I = 0x2

.field private static final STATE_DISABLED:I = 0x0

.field private static final STATE_ENABLED:I = 0x1

.field private static final STATE_INTERMEDIATE:I = 0x5

.field private static final STATE_TURNING_OFF:I = 0x3

.field private static final STATE_TURNING_ON:I = 0x2

.field private static final STATE_UNKNOWN:I = 0x4

.field static final TAG:Ljava/lang/String; = "SettingsAppWidgetProvider"

.field static final THIS_APPWIDGET:Landroid/content/ComponentName;

.field private static final sBluetoothState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

.field private static final sGpsState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

.field private static sLocalBluetoothManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private static final sSyncState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

.field private static final sWifiState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 54
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.widget.SettingsAppWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    .line 58
    sput-object v3, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sLocalBluetoothManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 86
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_OFF:[I

    .line 92
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_MID:[I

    .line 98
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_ON:[I

    .line 111
    new-instance v0, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker;

    invoke-direct {v0, v3}, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V

    sput-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    .line 112
    new-instance v0, Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;

    invoke-direct {v0, v3}, Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V

    sput-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    .line 113
    new-instance v0, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker;

    invoke-direct {v0, v3}, Lcom/android/settings/widget/SettingsAppWidgetProvider$GpsStateTracker;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V

    sput-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sGpsState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    .line 114
    new-instance v0, Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker;

    invoke-direct {v0, v3}, Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V

    sput-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sSyncState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    return-void

    .line 86
    nop

    :array_0
    .array-data 0x4
        0x11t 0x0t 0x2t 0x7ft
        0x10t 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
    .end array-data

    .line 92
    :array_1
    .array-data 0x4
        0xet 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
        0xft 0x0t 0x2t 0x7ft
    .end array-data

    .line 98
    :array_2
    .array-data 0x4
        0x14t 0x0t 0x2t 0x7ft
        0x13t 0x0t 0x2t 0x7ft
        0x15t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 591
    return-void
.end method

.method static synthetic access$1200(Landroid/content/Context;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-static {p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->getBackgroundDataState(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400()[I
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_OFF:[I

    return-object v0
.end method

.method static synthetic access$500()[I
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_ON:[I

    return-object v0
.end method

.method static synthetic access$600()[I
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_MID:[I

    return-object v0
.end method

.method static synthetic access$800()Lcom/android/settings/bluetooth/LocalBluetoothManager;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sLocalBluetoothManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/settings/bluetooth/LocalBluetoothManager;)Lcom/android/settings/bluetooth/LocalBluetoothManager;
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    sput-object p0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sLocalBluetoothManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    return-object p0
.end method

.method static buildUpdate(Landroid/content/Context;I)Landroid/widget/RemoteViews;
    .locals 3
    .parameter "context"
    .parameter "appWidgetId"

    .prologue
    .line 684
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030057

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 686
    .local v0, views:Landroid/widget/RemoteViews;
    const v1, 0x7f0b00fd

    const/4 v2, 0x0

    invoke-static {p0, p1, v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 688
    const v1, 0x7f0b0109

    const/4 v2, 0x1

    invoke-static {p0, p1, v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 691
    const v1, 0x7f0b0106

    const/4 v2, 0x2

    invoke-static {p0, p1, v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 694
    const v1, 0x7f0b0103

    const/4 v2, 0x3

    invoke-static {p0, p1, v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 696
    const v1, 0x7f0b0100

    const/4 v2, 0x4

    invoke-static {p0, p1, v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 700
    invoke-static {v0, p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 701
    return-object v0
.end method

.method private static getBackgroundDataState(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 881
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 883
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v1

    return v1
.end method

.method private static getBrightness(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 894
    :try_start_0
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    .line 896
    .local v2, power:Landroid/os/IPowerManager;
    if-eqz v2, :cond_1

    .line 897
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 899
    .local v0, brightness:I
    const/16 v3, 0x64

    if-le v0, v3, :cond_0

    const/4 v3, 0x1

    .line 904
    .end local v0           #brightness:I
    .end local v2           #power:Landroid/os/IPowerManager;
    :goto_0
    return v3

    .restart local v0       #brightness:I
    .restart local v2       #power:Landroid/os/IPowerManager;
    :cond_0
    move v3, v6

    .line 899
    goto :goto_0

    .line 901
    .end local v0           #brightness:I
    .end local v2           #power:Landroid/os/IPowerManager;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 902
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "SettingsAppWidgetProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBrightness: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    move v3, v6

    .line 904
    goto :goto_0
.end method

.method private static getBrightnessMode(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 915
    :try_start_0
    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    .line 917
    .local v2, power:Landroid/os/IPowerManager;
    if-eqz v2, :cond_1

    .line 918
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness_mode"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 920
    .local v0, brightnessMode:I
    if-ne v0, v5, :cond_0

    move v3, v5

    .line 925
    .end local v0           #brightnessMode:I
    .end local v2           #power:Landroid/os/IPowerManager;
    :goto_0
    return v3

    .restart local v0       #brightnessMode:I
    .restart local v2       #power:Landroid/os/IPowerManager;
    :cond_0
    move v3, v6

    .line 920
    goto :goto_0

    .line 922
    .end local v0           #brightnessMode:I
    .end local v2           #power:Landroid/os/IPowerManager;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 923
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "SettingsAppWidgetProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBrightnessMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    move v3, v6

    .line 925
    goto :goto_0
.end method

.method private static getLaunchPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;
    .locals 5
    .parameter "context"
    .parameter "appWidgetId"
    .parameter "buttonId"

    .prologue
    const/4 v4, 0x0

    .line 755
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 756
    .local v0, launchIntent:Landroid/content/Intent;
    const-class v2, Lcom/android/settings/widget/SettingsAppWidgetProvider;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 757
    const-string v2, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 758
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "custom:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 759
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 761
    .local v1, pi:Landroid/app/PendingIntent;
    return-object v1
.end method

.method private toggleBrightness(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const-string v8, "toggleBrightness: "

    const-string v5, "screen_brightness_mode"

    const-string v5, "screen_brightness"

    const-string v7, "SettingsAppWidgetProvider"

    .line 935
    :try_start_0
    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v4

    .line 937
    .local v4, power:Landroid/os/IPowerManager;
    if-eqz v4, :cond_1

    .line 938
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 939
    .local v2, cr:Landroid/content/ContentResolver;
    const-string v5, "screen_brightness"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 941
    .local v0, brightness:I
    const/4 v1, 0x0

    .line 943
    .local v1, brightnessMode:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10d000a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 945
    const-string v5, "screen_brightness_mode"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 951
    :cond_0
    const/4 v5, 0x1

    if-ne v1, v5, :cond_2

    .line 952
    const/16 v0, 0x1e

    .line 953
    const/4 v1, 0x0

    .line 963
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10d000a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 966
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness_mode"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 973
    :goto_1
    if-nez v1, :cond_1

    .line 974
    invoke-interface {v4, v0}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V

    .line 975
    const-string v5, "screen_brightness"

    invoke-static {v2, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 983
    .end local v0           #brightness:I
    .end local v1           #brightnessMode:I
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v4           #power:Landroid/os/IPowerManager;
    :cond_1
    :goto_2
    return-void

    .line 954
    .restart local v0       #brightness:I
    .restart local v1       #brightnessMode:I
    .restart local v2       #cr:Landroid/content/ContentResolver;
    .restart local v4       #power:Landroid/os/IPowerManager;
    :cond_2
    const/16 v5, 0x66

    if-ge v0, v5, :cond_3

    .line 955
    const/16 v0, 0x66

    goto :goto_0

    .line 956
    :cond_3
    const/16 v5, 0xff

    if-ge v0, v5, :cond_4

    .line 957
    const/16 v0, 0xff

    goto :goto_0

    .line 959
    :cond_4
    const/4 v1, 0x1

    .line 960
    const/16 v0, 0x1e

    goto :goto_0

    .line 971
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 978
    .end local v0           #brightness:I
    .end local v1           #brightnessMode:I
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v4           #power:Landroid/os/IPowerManager;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 979
    .local v3, e:Landroid/os/RemoteException;
    const-string v5, "SettingsAppWidgetProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "toggleBrightness: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 980
    .end local v3           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v5

    move-object v3, v5

    .line 981
    .local v3, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v5, "SettingsAppWidgetProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "toggleBrightness: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .locals 4
    .parameter "views"
    .parameter "context"

    .prologue
    const v3, 0x7f020015

    const v2, 0x7f0b010b

    const v1, 0x7f0b010a

    .line 723
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v0, p1, p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 724
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v0, p1, p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 725
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sGpsState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v0, p1, p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 726
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sSyncState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v0, p1, p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 728
    invoke-static {p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->getBrightnessMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    const v0, 0x7f02001b

    invoke-virtual {p0, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 731
    invoke-virtual {p0, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 744
    :goto_0
    return-void

    .line 733
    :cond_0
    invoke-static {p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->getBrightness(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 734
    const v0, 0x7f02001d

    invoke-virtual {p0, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 736
    invoke-virtual {p0, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 739
    :cond_1
    const v0, 0x7f02001c

    invoke-virtual {p0, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 741
    const v0, 0x7f020012

    invoke-virtual {p0, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0
.end method

.method public static updateWidget(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 710
    const/4 v2, -0x1

    invoke-static {p0, v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->buildUpdate(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 712
    .local v1, views:Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 713
    .local v0, gm:Landroid/appwidget/AppWidgetManager;
    sget-object v2, Lcom/android/settings/widget/SettingsAppWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 714
    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 672
    const-class v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;

    .line 673
    .local v0, clazz:Ljava/lang/Class;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 674
    .local v1, pm:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v4, ".widget.SettingsAppWidgetProvider"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 678
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 663
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 664
    .local v0, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, ".widget.SettingsAppWidgetProvider"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 668
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 772
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 813
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 814
    .local v0, action:Ljava/lang/String;
    const-string v10, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 815
    sget-object v10, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v10, p1, p2}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 843
    :cond_0
    :goto_0
    const-string v10, "GPSstate"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 845
    const-string v10, "SettingsAppWidgetProvider"

    const-string v11, "GPSstate"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    new-instance v5, Landroid/content/Intent;

    const-string v10, "com.android.settings.GPSDdialogFlag"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 848
    .local v5, i:Landroid/content/Intent;
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 849
    .local v8, prefs:Landroid/content/SharedPreferences;
    const-string v10, "show_again"

    const/4 v11, 0x0

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 851
    .local v6, isShow:Z
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 852
    .local v9, resolver:Landroid/content/ContentResolver;
    if-nez v6, :cond_c

    .line 853
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 854
    .local v1, authIntent:Landroid/content/Intent;
    const-class v10, Lcom/android/settings/LocationAlert;

    invoke-virtual {v1, p1, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 856
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {p1, v10, v1, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 859
    .local v7, pendingIntent:Landroid/app/PendingIntent;
    :try_start_0
    invoke-virtual {v7}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 871
    .end local v1           #authIntent:Landroid/content/Intent;
    .end local v5           #i:Landroid/content/Intent;
    .end local v6           #isShow:Z
    .end local v7           #pendingIntent:Landroid/app/PendingIntent;
    .end local v8           #prefs:Landroid/content/SharedPreferences;
    .end local v9           #resolver:Landroid/content/ContentResolver;
    :cond_1
    :goto_1
    invoke-static {p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 872
    return-void

    .line 816
    :cond_2
    const-string v10, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 817
    sget-object v10, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v10, p1, p2}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 818
    :cond_3
    const-string v10, "android.settings.GPS_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 819
    invoke-static {p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->updateWidget(Landroid/content/Context;)V

    goto :goto_0

    .line 820
    :cond_4
    const-string v10, "android.settings.BRIGHTNESS_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 821
    invoke-static {p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->updateWidget(Landroid/content/Context;)V

    goto :goto_0

    .line 822
    :cond_5
    const-string v10, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 823
    sget-object v10, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sGpsState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v10, p1, p2}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 824
    :cond_6
    sget-object v10, Landroid/content/SyncStorageEngine;->SYNC_CONNECTION_SETTING_CHANGED_INTENT:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 826
    sget-object v10, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sSyncState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v10, p1, p2}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 827
    :cond_7
    const-string v10, "android.intent.category.ALTERNATIVE"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 828
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 829
    .local v3, data:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 830
    .local v2, buttonId:I
    if-nez v2, :cond_8

    .line 831
    sget-object v10, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v10, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 832
    :cond_8
    const/4 v10, 0x1

    if-ne v2, v10, :cond_9

    .line 833
    invoke-direct {p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->toggleBrightness(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 834
    :cond_9
    const/4 v10, 0x2

    if-ne v2, v10, :cond_a

    .line 835
    sget-object v10, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sSyncState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v10, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 836
    :cond_a
    const/4 v10, 0x3

    if-ne v2, v10, :cond_b

    .line 837
    sget-object v10, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sGpsState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v10, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 838
    :cond_b
    const/4 v10, 0x4

    if-ne v2, v10, :cond_0

    .line 839
    sget-object v10, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v10, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 860
    .end local v2           #buttonId:I
    .end local v3           #data:Landroid/net/Uri;
    .restart local v1       #authIntent:Landroid/content/Intent;
    .restart local v5       #i:Landroid/content/Intent;
    .restart local v6       #isShow:Z
    .restart local v7       #pendingIntent:Landroid/app/PendingIntent;
    .restart local v8       #prefs:Landroid/content/SharedPreferences;
    .restart local v9       #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v4

    .line 861
    .local v4, e:Landroid/app/PendingIntent$CanceledException;
    const-string v10, "SettingsAppWidgetProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PendingIntent.CanceledException, e="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 864
    .end local v1           #authIntent:Landroid/content/Intent;
    .end local v4           #e:Landroid/app/PendingIntent$CanceledException;
    .end local v7           #pendingIntent:Landroid/app/PendingIntent;
    :cond_c
    const-string v10, "gps"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto/16 :goto_1
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 654
    const/4 v2, -0x1

    invoke-static {p1, v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->buildUpdate(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 656
    .local v1, view:Landroid/widget/RemoteViews;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_0

    .line 657
    aget v2, p3, v0

    invoke-virtual {p2, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 656
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 659
    :cond_0
    return-void
.end method
