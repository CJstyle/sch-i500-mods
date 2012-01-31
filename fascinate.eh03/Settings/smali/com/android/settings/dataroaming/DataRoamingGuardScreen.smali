.class public Lcom/android/settings/dataroaming/DataRoamingGuardScreen;
.super Landroid/app/ListActivity;
.source "DataRoamingGuardScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dataroaming/DataRoamingGuardScreen$RoamSettingsObserver;,
        Lcom/android/settings/dataroaming/DataRoamingGuardScreen$RoamAdapter;
    }
.end annotation


# instance fields
.field entries:[Ljava/lang/CharSequence;

.field entryValues:[Ljava/lang/CharSequence;

.field private mCurrentMode:I

.field private mRoamSettingsObserver:Lcom/android/settings/dataroaming/DataRoamingGuardScreen$RoamSettingsObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/dataroaming/DataRoamingGuardScreen;->mCurrentMode:I

    .line 185
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/dataroaming/DataRoamingGuardScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/settings/dataroaming/DataRoamingGuardScreen;->mCurrentMode:I

    return v0
.end method

.method private fillArrays()V
    .locals 6

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/settings/dataroaming/DataRoamingGuardScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050038

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 110
    .local v3, set:[Ljava/lang/CharSequence;
    array-length v4, v3

    div-int/lit8 v2, v4, 0x2

    .line 111
    .local v2, len:I
    new-array v4, v2, [Ljava/lang/CharSequence;

    iput-object v4, p0, Lcom/android/settings/dataroaming/DataRoamingGuardScreen;->entries:[Ljava/lang/CharSequence;

    .line 112
    new-array v4, v2, [Ljava/lang/CharSequence;

    iput-object v4, p0, Lcom/android/settings/dataroaming/DataRoamingGuardScreen;->entryValues:[Ljava/lang/CharSequence;

    .line 114
    const/4 v1, 0x0

    .line 115
    .local v1, k:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 116
    iget-object v4, p0, Lcom/android/settings/dataroaming/DataRoamingGuardScreen;->entries:[Ljava/lang/CharSequence;

    aget-object v5, v3, v0

    aput-object v5, v4, v1

    .line 117
    iget-object v4, p0, Lcom/android/settings/dataroaming/DataRoamingGuardScreen;->entryValues:[Ljava/lang/CharSequence;

    add-int/lit8 v0, v0, 0x1

    aget-object v5, v3, v0

    aput-object v5, v4, v1

    .line 118
    add-int/lit8 v1, v1, 0x1

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_0
    return-void
.end method

.method private turnOnScreen()V
    .locals 7

    .prologue
    const-string v6, "DataRoamingGuard"

    .line 123
    const-string v4, "power"

    invoke-virtual {p0, v4}, Lcom/android/settings/dataroaming/DataRoamingGuardScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 124
    .local v2, pm:Landroid/os/PowerManager;
    const-string v4, "DataRoamingGuard"

    const-string v4, "turnOnScreen()"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-string v4, "keyguard"

    invoke-virtual {p0, v4}, Lcom/android/settings/dataroaming/DataRoamingGuardScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 126
    .local v1, keyguardManager:Landroid/app/KeyguardManager;
    if-eqz v1, :cond_0

    .line 127
    const-string v4, "DataRoamingGuard"

    invoke-virtual {v1, v6}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v0

    .line 128
    .local v0, keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;
    const-string v4, "DataRoamingGuard"

    const-string v4, "Disable keyguard"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 132
    .end local v0           #keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;
    :cond_0
    if-eqz v2, :cond_1

    .line 133
    const v4, 0x1000001a

    const-string v5, "DataRoamingGuard"

    invoke-virtual {v2, v4, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    .line 135
    .local v3, wl:Landroid/os/PowerManager$WakeLock;
    if-eqz v3, :cond_1

    .line 136
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-nez v4, :cond_1

    .line 137
    const-string v4, "DataRoamingGuard"

    const-string v4, "Acquiring WakeLock"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-wide/16 v4, 0x7530

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 142
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

    .line 49
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const-string v4, "DataRoamingGuard"

    const-string v5, "onCreate()"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const v4, 0x7f03001c

    invoke-virtual {p0, v4}, Lcom/android/settings/dataroaming/DataRoamingGuardScreen;->setContentView(I)V

    .line 53
    const v4, 0x7f09061f

    invoke-virtual {p0, v4}, Lcom/android/settings/dataroaming/DataRoamingGuardScreen;->setTitle(I)V

    .line 55
    invoke-direct {p0}, Lcom/android/settings/dataroaming/DataRoamingGuardScreen;->fillArrays()V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/dataroaming/DataRoamingGuardScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "data_roam_access_settings"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 58
    .local v2, mode:I
    iput v2, p0, Lcom/android/settings/dataroaming/DataRoamingGuardScreen;->mCurrentMode:I

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/dataroaming/DataRoamingGuardScreen;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 61
    .local v3, view:Landroid/widget/ListView;
    new-instance v4, Lcom/android/settings/dataroaming/DataRoamingGuardScreen$RoamAdapter;

    invoke-direct {v4, p0, p0}, Lcom/android/settings/dataroaming/DataRoamingGuardScreen$RoamAdapter;-><init>(Lcom/android/settings/dataroaming/DataRoamingGuardScreen;Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 63
    const v4, 0x7f0b0038

    invoke-virtual {p0, v4}, Lcom/android/settings/dataroaming/DataRoamingGuardScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 64
    .local v0, cancel:Landroid/widget/Button;
    new-instance v4, Lcom/android/settings/dataroaming/DataRoamingGuardScreen$1;

    invoke-direct {v4, p0}, Lcom/android/settings/dataroaming/DataRoamingGuardScreen$1;-><init>(Lcom/android/settings/dataroaming/DataRoamingGuardScreen;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    new-instance v4, Lcom/android/settings/dataroaming/DataRoamingGuardScreen$RoamSettingsObserver;

    invoke-direct {v4, p0}, Lcom/android/settings/dataroaming/DataRoamingGuardScreen$RoamSettingsObserver;-><init>(Lcom/android/settings/dataroaming/DataRoamingGuardScreen;)V

    iput-object v4, p0, Lcom/android/settings/dataroaming/DataRoamingGuardScreen;->mRoamSettingsObserver:Lcom/android/settings/dataroaming/DataRoamingGuardScreen$RoamSettingsObserver;

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/dataroaming/DataRoamingGuardScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 72
    .local v1, contentResolver:Landroid/content/ContentResolver;
    const-string v4, "data_roam_access_settings"

    invoke-static {v7}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/dataroaming/DataRoamingGuardScreen;->mRoamSettingsObserver:Lcom/android/settings/dataroaming/DataRoamingGuardScreen$RoamSettingsObserver;

    invoke-virtual {v1, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 75
    const-string v4, "data_roam_access_notify"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/dataroaming/DataRoamingGuardScreen;->mRoamSettingsObserver:Lcom/android/settings/dataroaming/DataRoamingGuardScreen$RoamSettingsObserver;

    invoke-virtual {v1, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 78
    invoke-direct {p0}, Lcom/android/settings/dataroaming/DataRoamingGuardScreen;->turnOnScreen()V

    .line 79
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 104
    const-string v0, "DataRoamingGuard"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/dataroaming/DataRoamingGuardScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dataroaming/DataRoamingGuardScreen;->mRoamSettingsObserver:Lcom/android/settings/dataroaming/DataRoamingGuardScreen$RoamSettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 106
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 90
    iget-object v2, p0, Lcom/android/settings/dataroaming/DataRoamingGuardScreen;->entryValues:[Ljava/lang/CharSequence;

    aget-object v2, v2, p3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 91
    .local v1, value:I
    const-string v2, "DataRoamingGuard"

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

    iget v4, p0, Lcom/android/settings/dataroaming/DataRoamingGuardScreen;->mCurrentMode:I

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

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/dataroaming/DataRoamingGuardScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 94
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const-string v2, "data_roam_access_notify"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 96
    iget v2, p0, Lcom/android/settings/dataroaming/DataRoamingGuardScreen;->mCurrentMode:I

    if-eq v2, v1, :cond_0

    .line 97
    const-string v2, "data_roam_access_settings"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dataroaming/DataRoamingGuardScreen;->finish()V

    .line 100
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 82
    const-string v1, "DataRoamingGuard"

    const-string v2, "onNewIntent()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/dataroaming/DataRoamingGuardScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_roam_access_settings"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 85
    .local v0, mode:I
    iput v0, p0, Lcom/android/settings/dataroaming/DataRoamingGuardScreen;->mCurrentMode:I

    .line 86
    invoke-direct {p0}, Lcom/android/settings/dataroaming/DataRoamingGuardScreen;->turnOnScreen()V

    .line 87
    return-void
.end method
