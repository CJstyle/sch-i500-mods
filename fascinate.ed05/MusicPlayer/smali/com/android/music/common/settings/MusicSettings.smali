.class public Lcom/android/music/common/settings/MusicSettings;
.super Landroid/app/Activity;
.source "MusicSettings.java"


# static fields
.field public static final BACKGROUND_PLAYING_ON:Z = true

.field public static final KEY_MUSIC_MENU:Ljava/lang/String; = "music_menu"

.field public static final KEY_PROFILE:Ljava/lang/String; = "profile_name"

.field public static final KEY_SOUND_EFFECT:Ljava/lang/String; = "sound_effect"

.field public static final PREFKEY_3DSOUND:Ljava/lang/String; = "3DSOUND"

.field public static final PREFKEY_BACKGROUND_PLAYING:Ljava/lang/String; = "BACKGROUND_PLAYING"

.field public static final PREFKEY_CUSTOM_EQUALIZER:Ljava/lang/String; = "CUSTOM_EQUALIZER"

.field public static final PREFKEY_EFFECT:Ljava/lang/String; = "EFFECT"

.field public static final PREFKEY_EQUALIZER:Ljava/lang/String; = "EQUALIZER"

.field public static final PREFKEY_PLAYLIST_MENU_LIST:Ljava/lang/String; = "PLAYLIST_MENU_LIST"

.field public static final PREFKEY_TAB_MENU_LIST:Ljava/lang/String; = "TAB_MENU_LIST"

.field public static final PREFKEY_VISUALIZATION:Ljava/lang/String; = "VISUALIZATION"

.field private static final TAG:Ljava/lang/String;

.field private static mEffectValue:I

.field private static mEqualizerValue:I

.field private static mVisualizationValue:I


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

.field private mEffectTextView:Landroid/widget/TextView;

.field private mEqualizerTextView:Landroid/widget/TextView;

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

.field private mVisualizationCheckBox:Landroid/widget/CheckBox;

.field private settingsWindow:Landroid/view/Window;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/android/music/common/settings/MusicSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/music/common/settings/MusicSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    iput-object p0, p0, Lcom/android/music/common/settings/MusicSettings;->mMusicSettings:Landroid/app/Activity;

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/common/settings/MusicSettings;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    .line 80
    new-instance v0, Lcom/android/music/common/settings/MusicSettings$1;

    invoke-direct {v0, p0}, Lcom/android/music/common/settings/MusicSettings$1;-><init>(Lcom/android/music/common/settings/MusicSettings;)V

    iput-object v0, p0, Lcom/android/music/common/settings/MusicSettings;->mConnection:Landroid/content/ServiceConnection;

    .line 93
    new-instance v0, Lcom/android/music/common/settings/MusicSettings$2;

    invoke-direct {v0, p0}, Lcom/android/music/common/settings/MusicSettings$2;-><init>(Lcom/android/music/common/settings/MusicSettings;)V

    iput-object v0, p0, Lcom/android/music/common/settings/MusicSettings;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    .line 326
    new-instance v0, Lcom/android/music/common/settings/MusicSettings$7;

    invoke-direct {v0, p0}, Lcom/android/music/common/settings/MusicSettings$7;-><init>(Lcom/android/music/common/settings/MusicSettings;)V

    iput-object v0, p0, Lcom/android/music/common/settings/MusicSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/music/common/settings/MusicSettings;)Lcom/android/music/player/service/ICorePlayerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettings;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/music/common/settings/MusicSettings;Lcom/android/music/player/service/ICorePlayerService;)Lcom/android/music/player/service/ICorePlayerService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/music/common/settings/MusicSettings;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/music/common/settings/MusicSettings;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/music/common/settings/MusicSettings;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettings;->mMusicSettings:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 38
    sget v0, Lcom/android/music/common/settings/MusicSettings;->mVisualizationValue:I

    return v0
.end method

.method static synthetic access$302(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    sput p0, Lcom/android/music/common/settings/MusicSettings;->mVisualizationValue:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/music/common/settings/MusicSettings;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettings;->mVisualizationCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 38
    sget v0, Lcom/android/music/common/settings/MusicSettings;->mEffectValue:I

    return v0
.end method

.method static synthetic access$502(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    sput p0, Lcom/android/music/common/settings/MusicSettings;->mEffectValue:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/music/common/settings/MusicSettings;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettings;->mEffectTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private getValues()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 178
    invoke-static {p0}, Lcom/android/music/common/util/MusicValueSaveController;->getEqualizer(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/android/music/common/settings/MusicSettings;->mEqualizerValue:I

    .line 179
    sget v0, Lcom/android/music/common/settings/MusicSettings;->mEqualizerValue:I

    sget-object v1, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mEqualizerString:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget v0, Lcom/android/music/common/settings/MusicSettings;->mEqualizerValue:I

    :goto_0
    sput v0, Lcom/android/music/common/settings/MusicSettings;->mEqualizerValue:I

    .line 181
    invoke-static {p0}, Lcom/android/music/common/util/MusicValueSaveController;->getEffect(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/android/music/common/settings/MusicSettings;->mEffectValue:I

    .line 182
    sget v0, Lcom/android/music/common/settings/MusicSettings;->mEffectValue:I

    sget-object v1, Lcom/android/music/common/settings/MusicSettingsEffect;->mEffectString:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget v0, Lcom/android/music/common/settings/MusicSettings;->mEffectValue:I

    :goto_1
    sput v0, Lcom/android/music/common/settings/MusicSettings;->mEffectValue:I

    .line 186
    invoke-static {p0}, Lcom/android/music/common/util/MusicValueSaveController;->getVisualization(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/android/music/common/settings/MusicSettings;->mVisualizationValue:I

    .line 187
    return-void

    :cond_0
    move v0, v2

    .line 179
    goto :goto_0

    :cond_1
    move v0, v2

    .line 182
    goto :goto_1
.end method

.method private setDisplayByValues()V
    .locals 8

    .prologue
    .line 191
    iget-object v5, p0, Lcom/android/music/common/settings/MusicSettings;->mEqualizerTextView:Landroid/widget/TextView;

    sget-object v6, Lcom/android/music/common/settings/MusicSettingsEqualizer;->mEqualizerString:[I

    sget v7, Lcom/android/music/common/settings/MusicSettings;->mEqualizerValue:I

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 192
    iget-object v5, p0, Lcom/android/music/common/settings/MusicSettings;->mEffectTextView:Landroid/widget/TextView;

    sget-object v6, Lcom/android/music/common/settings/MusicSettingsEffect;->mEffectString:[I

    sget v7, Lcom/android/music/common/settings/MusicSettings;->mEffectValue:I

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 193
    sget v5, Lcom/android/music/common/settings/MusicSettings;->mVisualizationValue:I

    if-nez v5, :cond_0

    .line 195
    iget-object v5, p0, Lcom/android/music/common/settings/MusicSettings;->mVisualizationCheckBox:Landroid/widget/CheckBox;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 205
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .local v1, mMusicMenuText:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/music/common/settings/MusicSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f07

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, mMusicMenuName:[Ljava/lang/String;
    invoke-static {p0}, Lcom/android/music/common/util/MusicValueSaveController;->getMusicMenu(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 217
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

    .line 219
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

    .line 220
    if-nez v2, :cond_1

    .line 234
    :goto_1
    return-void

    .line 199
    .end local v0           #mMusicMenuName:[Ljava/lang/String;
    .end local v1           #mMusicMenuText:Ljava/lang/StringBuilder;
    .end local v2           #setting:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/music/common/settings/MusicSettings;->mVisualizationCheckBox:Landroid/widget/CheckBox;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 223
    .restart local v0       #mMusicMenuName:[Ljava/lang/String;
    .restart local v1       #mMusicMenuText:Ljava/lang/StringBuilder;
    .restart local v2       #setting:Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v5, "|"

    invoke-direct {v3, v2, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .local v3, strToken:Ljava/util/StringTokenizer;
    :cond_2
    :goto_2
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 226
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 227
    .local v4, token:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aget-object v5, v0, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 229
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 232
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
    .line 258
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettings;->mSettingsLayout:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/music/common/settings/MusicSettings$3;

    invoke-direct {v1, p0}, Lcom/android/music/common/settings/MusicSettings$3;-><init>(Lcom/android/music/common/settings/MusicSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettings;->mSettingsLayout:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/music/common/settings/MusicSettings$4;

    invoke-direct {v1, p0}, Lcom/android/music/common/settings/MusicSettings$4;-><init>(Lcom/android/music/common/settings/MusicSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettings;->mSettingsLayout:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/music/common/settings/MusicSettings$5;

    invoke-direct {v1, p0}, Lcom/android/music/common/settings/MusicSettings$5;-><init>(Lcom/android/music/common/settings/MusicSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettings;->mSettingsLayout:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/music/common/settings/MusicSettings$6;

    invoke-direct {v1, p0}, Lcom/android/music/common/settings/MusicSettings$6;-><init>(Lcom/android/music/common/settings/MusicSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    return-void
.end method

.method private settingsLayoutInit()V
    .locals 2

    .prologue
    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/music/common/settings/MusicSettings;->mSettingsLayout:Ljava/util/ArrayList;

    .line 241
    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettings;->mSettingsLayout:Ljava/util/ArrayList;

    const v0, 0x7f0c00b1

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettings;->mSettingsLayout:Ljava/util/ArrayList;

    const v0, 0x7f0c00b4

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettings;->mSettingsLayout:Ljava/util/ArrayList;

    const v0, 0x7f0c00b6

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettings;->mSettingsLayout:Ljava/util/ArrayList;

    const v0, 0x7f0c00b8

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    const v0, 0x7f0c00b2

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/music/common/settings/MusicSettings;->mEqualizerTextView:Landroid/widget/TextView;

    .line 249
    const v0, 0x7f0c00b5

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/music/common/settings/MusicSettings;->mEffectTextView:Landroid/widget/TextView;

    .line 250
    const v0, 0x7f0c00b7

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/music/common/settings/MusicSettings;->mMusicMenuTextView:Landroid/widget/TextView;

    .line 252
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/music/common/settings/MusicSettings;->getWindow()Landroid/view/Window;

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/common/settings/MusicSettings;->settingsWindow:Landroid/view/Window;

    .line 113
    iget-object v2, p0, Lcom/android/music/common/settings/MusicSettings;->settingsWindow:Landroid/view/Window;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 115
    const v2, 0x7f030023

    invoke-virtual {p0, v2}, Lcom/android/music/common/settings/MusicSettings;->setContentView(I)V

    .line 116
    const v2, 0x7f0c00b9

    invoke-virtual {p0, v2}, Lcom/android/music/common/settings/MusicSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/music/common/settings/MusicSettings;->mVisualizationCheckBox:Landroid/widget/CheckBox;

    .line 118
    iget-object v2, p0, Lcom/android/music/common/settings/MusicSettings;->mConnection:Landroid/content/ServiceConnection;

    invoke-static {p0, v2}, Lcom/android/music/common/util/MusicPlayerUtil;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    .line 120
    invoke-direct {p0}, Lcom/android/music/common/settings/MusicSettings;->settingsLayoutInit()V

    .line 121
    invoke-direct {p0}, Lcom/android/music/common/settings/MusicSettings;->settingsEventInit()V

    .line 123
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 124
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "musicPlayer.service.HEADSET_PLUG_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    iget-object v2, p0, Lcom/android/music/common/settings/MusicSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/music/common/settings/MusicSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 128
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 130
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 133
    iget-object v2, p0, Lcom/android/music/common/settings/MusicSettings;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/music/common/settings/MusicSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 136
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 167
    invoke-static {p0}, Lcom/android/music/common/util/MusicPlayerUtil;->unbindService(Landroid/content/Context;)V

    .line 168
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 169
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettings;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 171
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 172
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 141
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 143
    invoke-static {p0}, Lcom/android/music/common/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const v0, 0x7f0a00eb

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 145
    invoke-virtual {p0}, Lcom/android/music/common/settings/MusicSettings;->finish()V

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-direct {p0}, Lcom/android/music/common/settings/MusicSettings;->getValues()V

    .line 152
    invoke-direct {p0}, Lcom/android/music/common/settings/MusicSettings;->setDisplayByValues()V

    goto :goto_0
.end method
