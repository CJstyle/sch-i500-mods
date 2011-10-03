.class public Lcom/android/settings/DevelopmentSettings;
.super Landroid/preference/PreferenceActivity;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final ALLOW_MOCK_LOCATION:Ljava/lang/String; = "allow_mock_location"

.field private static final DEBUG:Z = true

.field private static final ENABLE_ADB:Ljava/lang/String; = "enable_adb"

.field private static final TAG:Ljava/lang/String; = "DevelopmentSettings"

.field private static final USBMENUSEL_PATH:Ljava/lang/String; = "/sys/devices/platform/android_usb/UsbMenuSel"

.field private static final USBMODE_ASKON:I = 0x4

.field private static final USBMODE_KIES:I = 0x0

.field private static final USBMODE_MTP:I = 0x1

.field private static final USBMODE_UMS:I = 0x2

.field private static final USB_SETTING_MODE:Ljava/lang/String; = "usb_setting_mode"

.field private static final askon:[B

.field private static final kies:[B

.field private static final mtp:[B

.field private static final ums:[B


# instance fields
.field private mAllowMockLocation:Landroid/preference/CheckBoxPreference;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mEnableAdb:Landroid/preference/CheckBoxPreference;

.field private mOkClicked:Z

.field private mOkDialog:Landroid/app/Dialog;

.field private mPluggedType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 68
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/DevelopmentSettings;->kies:[B

    .line 69
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/DevelopmentSettings;->mtp:[B

    .line 70
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings/DevelopmentSettings;->ums:[B

    .line 71
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/settings/DevelopmentSettings;->askon:[B

    return-void

    .line 68
    :array_0
    .array-data 0x1
        0x4bt
        0x49t
        0x45t
        0x53t
        0x0t
    .end array-data

    .line 69
    nop

    :array_1
    .array-data 0x1
        0x4dt
        0x54t
        0x50t
        0x0t
    .end array-data

    .line 70
    :array_2
    .array-data 0x1
        0x55t
        0x4dt
        0x53t
        0x0t
    .end array-data

    .line 71
    :array_3
    .array-data 0x1
        0x41t
        0x53t
        0x4bt
        0x4ft
        0x4et
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/DevelopmentSettings;->mPluggedType:I

    .line 78
    new-instance v0, Lcom/android/settings/DevelopmentSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DevelopmentSettings$1;-><init>(Lcom/android/settings/DevelopmentSettings;)V

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private ShowErrorPopup()V
    .locals 3

    .prologue
    .line 150
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 151
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0902ef

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0905a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 153
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900b3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/android/settings/DevelopmentSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/DevelopmentSettings$2;-><init>(Lcom/android/settings/DevelopmentSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 158
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 159
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/DevelopmentSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/android/settings/DevelopmentSettings;->mPluggedType:I

    return p1
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mOkDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 216
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mOkDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mOkDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method private initIntentFilter()V
    .locals 2

    .prologue
    .line 144
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 145
    .local v0, intentFilterBattery:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/DevelopmentSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 147
    return-void
.end method

.method private isKiesEnabled()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 309
    const/4 v0, 0x0

    .line 311
    .local v0, enabled:I
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tool_launcher_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 313
    if-nez v0, :cond_0

    .line 315
    const/4 v1, 0x1

    .line 318
    :goto_0
    return v1

    :cond_0
    move v1, v3

    goto :goto_0
.end method

.method private selectUsb([B)V
    .locals 3
    .parameter "usb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/sys/devices/platform/android_usb/UsbMenuSel"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 298
    .local v1, out:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 306
    :goto_0
    return-void

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw v2
.end method

.method private writeKies()V
    .locals 5

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "usb_setting_mode"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 256
    .local v0, current_usb_setting_mode:I
    packed-switch v0, :pswitch_data_0

    .line 293
    :goto_0
    :pswitch_0
    return-void

    .line 259
    :pswitch_1
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->isKiesEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 260
    sget-object v2, Lcom/android/settings/DevelopmentSettings;->kies:[B

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->selectUsb([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 290
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 291
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 262
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    :try_start_1
    sget-object v2, Lcom/android/settings/DevelopmentSettings;->kies:[B

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->selectUsb([B)V

    goto :goto_0

    .line 267
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->isKiesEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 268
    sget-object v2, Lcom/android/settings/DevelopmentSettings;->mtp:[B

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->selectUsb([B)V

    goto :goto_0

    .line 270
    :cond_1
    sget-object v2, Lcom/android/settings/DevelopmentSettings;->kies:[B

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->selectUsb([B)V

    goto :goto_0

    .line 275
    :pswitch_3
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->isKiesEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 276
    sget-object v2, Lcom/android/settings/DevelopmentSettings;->ums:[B

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->selectUsb([B)V

    goto :goto_0

    .line 278
    :cond_2
    sget-object v2, Lcom/android/settings/DevelopmentSettings;->kies:[B

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->selectUsb([B)V

    goto :goto_0

    .line 283
    :pswitch_4
    sget-object v2, Lcom/android/settings/DevelopmentSettings;->askon:[B

    invoke-direct {p0, v2}, Lcom/android/settings/DevelopmentSettings;->selectUsb([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    .line 219
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 220
    iput-boolean v3, p0, Lcom/android/settings/DevelopmentSettings;->mOkClicked:Z

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "usb_setting_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 232
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 237
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    const v0, 0x7f04000c

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->addPreferencesFromResource(I)V

    .line 107
    const-string v0, "enable_adb"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    .line 109
    const-string v0, "allow_mock_location"

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    .line 110
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dismissDialog()V

    .line 249
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 250
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/android/settings/DevelopmentSettings;->mOkClicked:Z

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 244
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 137
    const-string v0, "DevelopmentSettings"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 139
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/DevelopmentSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 140
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 165
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    .line 209
    :goto_0
    return v0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_6

    .line 171
    iget v0, p0, Lcom/android/settings/DevelopmentSettings;->mPluggedType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 172
    const-string v0, "DevelopmentSettings"

    const-string v1, "USB connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 178
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->ShowErrorPopup()V

    move v0, v3

    .line 179
    goto :goto_0

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 183
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 184
    iput-boolean v3, p0, Lcom/android/settings/DevelopmentSettings;->mOkClicked:Z

    .line 185
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mOkDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->dismissDialog()V

    .line 186
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09041e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09041d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mOkDialog:Landroid/app/Dialog;

    .line 193
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mOkDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 194
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_4
    :goto_2
    move v0, v3

    .line 209
    goto :goto_0

    .line 196
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 197
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->writeKies()V

    goto :goto_2

    .line 204
    :cond_6
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_4

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mock_location"

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v4

    :goto_3
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_7
    move v2, v3

    goto :goto_3
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 114
    const-string v0, "DevelopmentSettings"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 119
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "adb_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 125
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mock_location"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 128
    invoke-direct {p0}, Lcom/android/settings/DevelopmentSettings;->initIntentFilter()V

    .line 132
    return-void

    :cond_0
    move v1, v3

    .line 119
    goto :goto_0

    :cond_1
    move v1, v3

    .line 125
    goto :goto_1
.end method
