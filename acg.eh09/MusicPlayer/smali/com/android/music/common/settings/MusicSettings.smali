.class public Lcom/android/music/common/settings/MusicSettings;
.super Landroid/app/Activity;
.source "MusicSettings.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mEffectValue:I

.field private static mEqualizerValue:I

.field private static mVisualizationValue:I


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private mEffectTextView:Landroid/widget/TextView;

.field private mEqualizerTextView:Landroid/widget/TextView;

.field private final mKillReceiver:Landroid/content/BroadcastReceiver;

.field private final mMediaReceiver:Landroid/content/BroadcastReceiver;

.field private mMusicMenuTextView:Landroid/widget/TextView;

.field private mMusicSettings:Landroid/app/Activity;

.field private mSettingsLayout:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mToken:Lcom/android/music/common/util/MusicPlayerUtil$ServiceToken;

.field private mVisualizationCheckBox:Landroid/widget/CheckBox;

.field private settingsWindow:Landroid/view/Window;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/android/music/common/settings/MusicSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/music/common/settings/MusicSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 73
    iput-object p0, p0, Lcom/android/music/common/settings/MusicSettings;->mMusicSettings:Landroid/app/Activity;

    .line 106
    new-instance v0, Lcom/android/music/common/settings/MusicSettings$1;

    invoke-direct {v0, p0}, Lcom/android/music/common/settings/MusicSettings$1;-><init>(Lcom/android/music/common/settings/MusicSettings;)V

    iput-object v0, p0, Lcom/android/music/common/settings/MusicSettings;->mConnection:Landroid/content/ServiceConnection;

    .line 120
    new-instance v0, Lcom/android/music/common/settings/MusicSettings$2;

    invoke-direct {v0, p0}, Lcom/android/music/common/settings/MusicSettings$2;-><init>(Lcom/android/music/common/settings/MusicSettings;)V

    iput-object v0, p0, Lcom/android/music/common/settings/MusicSettings;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    .line 153
    new-instance v0, Lcom/android/music/common/settings/MusicSettings$3;

    invoke-direct {v0, p0}, Lcom/android/music/common/settings/MusicSettings$3;-><init>(Lcom/android/music/common/settings/MusicSettings;)V

    iput-object v0, p0, Lcom/android/music/common/settings/MusicSettings;->mKillReceiver:Landroid/content/BroadcastReceiver;

    .line 442
    new-instance v0, Lcom/android/music/common/settings/MusicSettings$8;

    invoke-direct {v0, p0}, Lcom/android/music/common/settings/MusicSettings$8;-><init>(Lcom/android/music/common/settings/MusicSettings;)V

    iput-object v0, p0, Lcom/android/music/common/settings/MusicSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/music/common/settings/MusicSettings;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/music/common/settings/MusicSettings;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettings;->mMusicSettings:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 49
    sget v0, Lcom/android/music/common/settings/MusicSettings;->mVisualizationValue:I

    return v0
.end method

.method static synthetic access$202(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    sput p0, Lcom/android/music/common/settings/MusicSettings;->mVisualizationValue:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/music/common/settings/MusicSettings;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettings;->mVisualizationCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 49
    sget v0, Lcom/android/music/common/settings/MusicSettings;->mEffectValue:I

    return v0
.end method

.method static synthetic access$402(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    sput p0, Lcom/android/music/common/settings/MusicSettings;->mEffectValue:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/music/common/settings/MusicSettings;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettings;->mEffectTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private getValues()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 279
    invoke-static {p0}, Lcom/android/music/common/util/MusicValueSaveController;->getEqualizer(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/android/music/common/settings/MusicSettings;->mEqualizerValue:I

    .line 280
    sget v0, Lcom/android/music/common/settings/MusicSettings;->mEqualizerValue:I

    sget-object v1, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mEqualizerString:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget v0, Lcom/android/music/common/settings/MusicSettings;->mEqualizerValue:I

    :goto_0
    sput v0, Lcom/android/music/common/settings/MusicSettings;->mEqualizerValue:I

    .line 282
    invoke-static {p0}, Lcom/android/music/common/util/MusicValueSaveController;->getEffect(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/android/music/common/settings/MusicSettings;->mEffectValue:I

    .line 283
    sget v0, Lcom/android/music/common/settings/MusicSettings;->mEffectValue:I

    sget-object v1, Lcom/android/music/common/settings/MusicSettingsEffect;->mEffectString:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget v0, Lcom/android/music/common/settings/MusicSettings;->mEffectValue:I

    :goto_1
    sput v0, Lcom/android/music/common/settings/MusicSettings;->mEffectValue:I

    .line 287
    invoke-static {p0}, Lcom/android/music/common/util/MusicValueSaveController;->getVisualization(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/android/music/common/settings/MusicSettings;->mVisualizationValue:I

    .line 288
    return-void

    :cond_0
    move v0, v2

    .line 280
    goto :goto_0

    :cond_1
    move v0, v2

    .line 283
    goto :goto_1
.end method

.method private setDisplayByValues()V
    .locals 8

    .prologue
    .line 292
    iget-object v5, p0, Lcom/android/music/common/settings/MusicSettings;->mEqualizerTextView:Landroid/widget/TextView;

    sget-object v6, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mEqualizerString:[I

    sget v7, Lcom/android/music/common/settings/MusicSettings;->mEqualizerValue:I

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 293
    iget-object v5, p0, Lcom/android/music/common/settings/MusicSettings;->mEffectTextView:Landroid/widget/TextView;

    sget-object v6, Lcom/android/music/common/settings/MusicSettingsEffect;->mEffectString:[I

    sget v7, Lcom/android/music/common/settings/MusicSettings;->mEffectValue:I

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 294
    sget v5, Lcom/android/music/common/settings/MusicSettings;->mVisualizationValue:I

    if-nez v5, :cond_0

    .line 296
    iget-object v5, p0, Lcom/android/music/common/settings/MusicSettings;->mVisualizationCheckBox:Landroid/widget/CheckBox;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 306
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    .local v1, mMusicMenuText:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/music/common/settings/MusicSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f07

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, mMusicMenuName:[Ljava/lang/String;
    invoke-static {p0}, Lcom/android/music/common/util/MusicValueSaveController;->getMusicMenu(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 318
    .local v2, setting:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0}, Lcom/android/music/common/util/MusicValueSaveController;->getPlaylistMenu(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 320
    sget-object v5, Lcom/android/music/common/settings/MusicSettings;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setDisplayByValues(): setting="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    if-nez v2, :cond_1

    .line 342
    :goto_1
    return-void

    .line 300
    .end local v0           #mMusicMenuName:[Ljava/lang/String;
    .end local v1           #mMusicMenuText:Ljava/lang/StringBuilder;
    .end local v2           #setting:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/music/common/settings/MusicSettings;->mVisualizationCheckBox:Landroid/widget/CheckBox;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 324
    .restart local v0       #mMusicMenuName:[Ljava/lang/String;
    .restart local v1       #mMusicMenuText:Ljava/lang/StringBuilder;
    .restart local v2       #setting:Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v5, "|"

    invoke-direct {v3, v2, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    .local v3, strToken:Ljava/util/StringTokenizer;
    :cond_2
    :goto_2
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 327
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 328
    .local v4, token:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aget-object v5, v0, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 330
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 333
    .end local v4           #token:Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/android/music/common/settings/MusicSettings;->mMusicMenuTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private settingsEventInit()V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettings;->mSettingsLayout:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/music/common/settings/MusicSettings$4;

    invoke-direct {v1, p0}, Lcom/android/music/common/settings/MusicSettings$4;-><init>(Lcom/android/music/common/settings/MusicSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettings;->mSettingsLayout:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/music/common/settings/MusicSettings$5;

    invoke-direct {v1, p0}, Lcom/android/music/common/settings/MusicSettings$5;-><init>(Lcom/android/music/common/settings/MusicSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettings;->mSettingsLayout:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/music/common/settings/MusicSettings$6;

    invoke-direct {v1, p0}, Lcom/android/music/common/settings/MusicSettings$6;-><init>(Lcom/android/music/common/settings/MusicSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettings;->mSettingsLayout:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/music/common/settings/MusicSettings$7;

    invoke-direct {v1, p0}, Lcom/android/music/common/settings/MusicSettings$7;-><init>(Lcom/android/music/common/settings/MusicSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    return-void
.end method

.method private settingsLayoutInit()V
    .locals 2

    .prologue
    .line 346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/music/common/settings/MusicSettings;->mSettingsLayout:Ljava/util/ArrayList;

    .line 349
    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettings;->mSettingsLayout:Ljava/util/ArrayList;

    const v0, 0x7f0c00b2

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettings;->mSettingsLayout:Ljava/util/ArrayList;

    const v0, 0x7f0c00b5

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettings;->mSettingsLayout:Ljava/util/ArrayList;

    const v0, 0x7f0c00b8

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettings;->mSettingsLayout:Ljava/util/ArrayList;

    const v0, 0x7f0c00ba

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    const v0, 0x7f0c00b3

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/music/common/settings/MusicSettings;->mEqualizerTextView:Landroid/widget/TextView;

    .line 359
    const v0, 0x7f0c00b7

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/music/common/settings/MusicSettings;->mEffectTextView:Landroid/widget/TextView;

    .line 360
    const v0, 0x7f0c00b9

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/music/common/settings/MusicSettings;->mMusicMenuTextView:Landroid/widget/TextView;

    .line 362
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 173
    invoke-virtual {p0}, Lcom/android/music/common/settings/MusicSettings;->getWindow()Landroid/view/Window;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/common/settings/MusicSettings;->settingsWindow:Landroid/view/Window;

    .line 174
    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettings;->settingsWindow:Landroid/view/Window;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 176
    const v3, 0x7f030024

    invoke-virtual {p0, v3}, Lcom/android/music/common/settings/MusicSettings;->setContentView(I)V

    .line 177
    const v3, 0x7f0c00bb

    invoke-virtual {p0, v3}, Lcom/android/music/common/settings/MusicSettings;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/music/common/settings/MusicSettings;->mVisualizationCheckBox:Landroid/widget/CheckBox;

    .line 179
    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettings;->mConnection:Landroid/content/ServiceConnection;

    invoke-static {p0, v3}, Lcom/android/music/common/util/MusicPlayerUtil;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/android/music/common/util/MusicPlayerUtil$ServiceToken;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/common/settings/MusicSettings;->mToken:Lcom/android/music/common/util/MusicPlayerUtil$ServiceToken;

    .line 181
    invoke-direct {p0}, Lcom/android/music/common/settings/MusicSettings;->settingsLayoutInit()V

    .line 182
    invoke-direct {p0}, Lcom/android/music/common/settings/MusicSettings;->settingsEventInit()V

    .line 184
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 185
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "musicPlayer.service.HEADSET_PLUG_CHANGE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/android/music/common/settings/MusicSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 190
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 192
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    const-string v3, "file"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 195
    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettings;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/android/music/common/settings/MusicSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 197
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.music.kill.garbageActivity"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 198
    .local v2, killIntentFilter:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettings;->mKillReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Lcom/android/music/common/settings/MusicSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 201
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettings;->mToken:Lcom/android/music/common/util/MusicPlayerUtil$ServiceToken;

    invoke-static {v0}, Lcom/android/music/common/util/MusicPlayerUtil;->unbindFromService(Lcom/android/music/common/util/MusicPlayerUtil$ServiceToken;)V

    .line 257
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 258
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettings;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 272
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 273
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 206
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 208
    invoke-static {p0}, Lcom/android/music/common/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    const v0, 0x7f0a00f3

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 210
    invoke-virtual {p0}, Lcom/android/music/common/settings/MusicSettings;->finish()V

    .line 227
    :goto_0
    return-void

    .line 225
    :cond_0
    invoke-direct {p0}, Lcom/android/music/common/settings/MusicSettings;->getValues()V

    .line 226
    invoke-direct {p0}, Lcom/android/music/common/settings/MusicSettings;->setDisplayByValues()V

    goto :goto_0
.end method
