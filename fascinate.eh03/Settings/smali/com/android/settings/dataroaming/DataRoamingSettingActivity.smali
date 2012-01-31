.class public Lcom/android/settings/dataroaming/DataRoamingSettingActivity;
.super Landroid/app/ListActivity;
.source "DataRoamingSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dataroaming/DataRoamingSettingActivity$RoamSettingsObserver;,
        Lcom/android/settings/dataroaming/DataRoamingSettingActivity$RoamAdapter;
    }
.end annotation


# instance fields
.field entries:[Ljava/lang/CharSequence;

.field entryValues:[Ljava/lang/CharSequence;

.field private mCurrentMode:I

.field private mRoamSettingsObserver:Lcom/android/settings/dataroaming/DataRoamingSettingActivity$RoamSettingsObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/dataroaming/DataRoamingSettingActivity;->mCurrentMode:I

    .line 181
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/dataroaming/DataRoamingSettingActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/settings/dataroaming/DataRoamingSettingActivity;->mCurrentMode:I

    return v0
.end method

.method private fillArrays()V
    .locals 6

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/android/settings/dataroaming/DataRoamingSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050037

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 105
    .local v3, set:[Ljava/lang/CharSequence;
    array-length v4, v3

    div-int/lit8 v2, v4, 0x2

    .line 106
    .local v2, len:I
    new-array v4, v2, [Ljava/lang/CharSequence;

    iput-object v4, p0, Lcom/android/settings/dataroaming/DataRoamingSettingActivity;->entries:[Ljava/lang/CharSequence;

    .line 107
    new-array v4, v2, [Ljava/lang/CharSequence;

    iput-object v4, p0, Lcom/android/settings/dataroaming/DataRoamingSettingActivity;->entryValues:[Ljava/lang/CharSequence;

    .line 109
    const/4 v1, 0x0

    .line 110
    .local v1, k:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 111
    iget-object v4, p0, Lcom/android/settings/dataroaming/DataRoamingSettingActivity;->entries:[Ljava/lang/CharSequence;

    aget-object v5, v3, v0

    aput-object v5, v4, v1

    .line 112
    iget-object v4, p0, Lcom/android/settings/dataroaming/DataRoamingSettingActivity;->entryValues:[Ljava/lang/CharSequence;

    add-int/lit8 v0, v0, 0x1

    aget-object v5, v3, v0

    aput-object v5, v4, v1

    .line 113
    add-int/lit8 v1, v1, 0x1

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_0
    return-void
.end method

.method private turnOnScreen()V
    .locals 7

    .prologue
    const-string v6, "DataRoamingSettingActivity"

    .line 118
    const-string v4, "power"

    invoke-virtual {p0, v4}, Lcom/android/settings/dataroaming/DataRoamingSettingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 119
    .local v2, pm:Landroid/os/PowerManager;
    const-string v4, "DataRoamingSettingActivity"

    const-string v4, "turnOnScreen()"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const-string v4, "keyguard"

    invoke-virtual {p0, v4}, Lcom/android/settings/dataroaming/DataRoamingSettingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 121
    .local v1, keyguardManager:Landroid/app/KeyguardManager;
    if-eqz v1, :cond_0

    .line 122
    const-string v4, "DataRoamingSettingActivity"

    invoke-virtual {v1, v6}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v0

    .line 123
    .local v0, keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;
    const-string v4, "DataRoamingSettingActivity"

    const-string v4, "Disable keyguard"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 127
    .end local v0           #keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;
    :cond_0
    if-eqz v2, :cond_1

    .line 128
    const v4, 0x1000001a

    const-string v5, "DataRoamingSettingActivity"

    invoke-virtual {v2, v4, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    .line 130
    .local v3, wl:Landroid/os/PowerManager$WakeLock;
    if-eqz v3, :cond_1

    .line 131
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-nez v4, :cond_1

    .line 132
    const-string v4, "DataRoamingSettingActivity"

    const-string v4, "Acquiring WakeLock"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const-wide/16 v4, 0x7530

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 137
    .end local v3           #wl:Landroid/os/PowerManager$WakeLock;
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const-string v7, "data_roam_access_settings"

    .line 43
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const-string v4, "DataRoamingSettingActivity"

    const-string v5, "onCreate()"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const v4, 0x7f03001b

    invoke-virtual {p0, v4}, Lcom/android/settings/dataroaming/DataRoamingSettingActivity;->setContentView(I)V

    .line 47
    const v4, 0x7f09061d

    invoke-virtual {p0, v4}, Lcom/android/settings/dataroaming/DataRoamingSettingActivity;->setTitle(I)V

    .line 49
    invoke-direct {p0}, Lcom/android/settings/dataroaming/DataRoamingSettingActivity;->fillArrays()V

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/dataroaming/DataRoamingSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "data_roam_access_settings"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 52
    .local v2, mode:I
    iput v2, p0, Lcom/android/settings/dataroaming/DataRoamingSettingActivity;->mCurrentMode:I

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/dataroaming/DataRoamingSettingActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 55
    .local v3, view:Landroid/widget/ListView;
    new-instance v4, Lcom/android/settings/dataroaming/DataRoamingSettingActivity$RoamAdapter;

    invoke-direct {v4, p0, p0}, Lcom/android/settings/dataroaming/DataRoamingSettingActivity$RoamAdapter;-><init>(Lcom/android/settings/dataroaming/DataRoamingSettingActivity;Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 58
    const v4, 0x7f0b0038

    invoke-virtual {p0, v4}, Lcom/android/settings/dataroaming/DataRoamingSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 59
    .local v0, cancel:Landroid/widget/Button;
    new-instance v4, Lcom/android/settings/dataroaming/DataRoamingSettingActivity$1;

    invoke-direct {v4, p0}, Lcom/android/settings/dataroaming/DataRoamingSettingActivity$1;-><init>(Lcom/android/settings/dataroaming/DataRoamingSettingActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    new-instance v4, Lcom/android/settings/dataroaming/DataRoamingSettingActivity$RoamSettingsObserver;

    invoke-direct {v4, p0}, Lcom/android/settings/dataroaming/DataRoamingSettingActivity$RoamSettingsObserver;-><init>(Lcom/android/settings/dataroaming/DataRoamingSettingActivity;)V

    iput-object v4, p0, Lcom/android/settings/dataroaming/DataRoamingSettingActivity;->mRoamSettingsObserver:Lcom/android/settings/dataroaming/DataRoamingSettingActivity$RoamSettingsObserver;

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/dataroaming/DataRoamingSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 67
    .local v1, contentResolver:Landroid/content/ContentResolver;
    const-string v4, "data_roam_access_settings"

    invoke-static {v7}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/dataroaming/DataRoamingSettingActivity;->mRoamSettingsObserver:Lcom/android/settings/dataroaming/DataRoamingSettingActivity$RoamSettingsObserver;

    invoke-virtual {v1, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 70
    const-string v4, "data_roam_access_notify"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/dataroaming/DataRoamingSettingActivity;->mRoamSettingsObserver:Lcom/android/settings/dataroaming/DataRoamingSettingActivity$RoamSettingsObserver;

    invoke-virtual {v1, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 73
    invoke-direct {p0}, Lcom/android/settings/dataroaming/DataRoamingSettingActivity;->turnOnScreen()V

    .line 74
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 99
    const-string v0, "DataRoamingSettingActivity"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/dataroaming/DataRoamingSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dataroaming/DataRoamingSettingActivity;->mRoamSettingsObserver:Lcom/android/settings/dataroaming/DataRoamingSettingActivity$RoamSettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 101
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 85
    iget-object v2, p0, Lcom/android/settings/dataroaming/DataRoamingSettingActivity;->entryValues:[Ljava/lang/CharSequence;

    aget-object v2, v2, p3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 86
    .local v1, value:I
    const-string v2, "DataRoamingSettingActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onListItemClick(): position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCurrentMode:value - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/dataroaming/DataRoamingSettingActivity;->mCurrentMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/dataroaming/DataRoamingSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 89
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const-string v2, "data_roam_access_notify"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 91
    iget v2, p0, Lcom/android/settings/dataroaming/DataRoamingSettingActivity;->mCurrentMode:I

    if-eq v2, v1, :cond_0

    .line 92
    const-string v2, "data_roam_access_settings"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dataroaming/DataRoamingSettingActivity;->finish()V

    .line 95
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 77
    const-string v1, "DataRoamingSettingActivity"

    const-string v2, "onNewIntent()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/dataroaming/DataRoamingSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_roam_access_settings"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 80
    .local v0, mode:I
    iput v0, p0, Lcom/android/settings/dataroaming/DataRoamingSettingActivity;->mCurrentMode:I

    .line 81
    invoke-direct {p0}, Lcom/android/settings/dataroaming/DataRoamingSettingActivity;->turnOnScreen()V

    .line 82
    return-void
.end method
