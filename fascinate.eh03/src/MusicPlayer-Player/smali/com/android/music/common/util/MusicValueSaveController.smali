.class public Lcom/android/music/common/util/MusicValueSaveController;
.super Ljava/lang/Object;
.source "MusicValueSaveController.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mCurrentTab:I

.field private static mCustomEqualizer:Ljava/lang/String;

.field private static mEffect:I

.field private static mEqualizer:I

.field private static mMusicMenu:Ljava/lang/String;

.field private static mMusicMenuOrder:Ljava/lang/String;

.field private static mPlaylistMenu:Ljava/lang/String;

.field private static mRepeat:I

.field private static mSaveCurrentTab:Z

.field private static mSaveCustomEqualizer:Z

.field private static mSaveEffect:Z

.field private static mSaveEqualizer:Z

.field private static mSaveMusicMenu:Z

.field private static mSaveMusicMenuOrder:Z

.field private static mSavePlaylistMenu:Z

.field private static mSaveRepeat:Z

.field private static mSaveShuffle:Z

.field private static mSaveVisualization:Z

.field private static mShuffle:I

.field private static mVisualization:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 16
    const-class v0, Lcom/android/music/common/util/MusicValueSaveController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/music/common/util/MusicValueSaveController;->TAG:Ljava/lang/String;

    .line 37
    sput v2, Lcom/android/music/common/util/MusicValueSaveController;->mEffect:I

    .line 38
    sput v2, Lcom/android/music/common/util/MusicValueSaveController;->mEqualizer:I

    .line 39
    sput v2, Lcom/android/music/common/util/MusicValueSaveController;->mRepeat:I

    .line 40
    sput v2, Lcom/android/music/common/util/MusicValueSaveController;->mShuffle:I

    .line 41
    sput v2, Lcom/android/music/common/util/MusicValueSaveController;->mVisualization:I

    .line 50
    sput v2, Lcom/android/music/common/util/MusicValueSaveController;->mCurrentTab:I

    .line 57
    sput-boolean v1, Lcom/android/music/common/util/MusicValueSaveController;->mSaveMusicMenuOrder:Z

    .line 58
    sput-boolean v1, Lcom/android/music/common/util/MusicValueSaveController;->mSaveMusicMenu:Z

    .line 59
    sput-boolean v1, Lcom/android/music/common/util/MusicValueSaveController;->mSavePlaylistMenu:Z

    .line 60
    sput-boolean v1, Lcom/android/music/common/util/MusicValueSaveController;->mSaveCustomEqualizer:Z

    .line 61
    sput-boolean v1, Lcom/android/music/common/util/MusicValueSaveController;->mSaveEffect:Z

    .line 62
    sput-boolean v1, Lcom/android/music/common/util/MusicValueSaveController;->mSaveEqualizer:Z

    .line 63
    sput-boolean v1, Lcom/android/music/common/util/MusicValueSaveController;->mSaveRepeat:Z

    .line 64
    sput-boolean v1, Lcom/android/music/common/util/MusicValueSaveController;->mSaveShuffle:Z

    .line 65
    sput-boolean v1, Lcom/android/music/common/util/MusicValueSaveController;->mSaveVisualization:Z

    .line 67
    sput-boolean v1, Lcom/android/music/common/util/MusicValueSaveController;->mSaveCurrentTab:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentTab(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, -0x1

    .line 265
    sget v1, Lcom/android/music/common/util/MusicValueSaveController;->mCurrentTab:I

    if-ne v1, v2, :cond_0

    .line 266
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 267
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "prefer.currenttab"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/music/common/util/MusicValueSaveController;->mCurrentTab:I

    .line 269
    .end local v0           #settings:Landroid/content/SharedPreferences;
    :cond_0
    sget v1, Lcom/android/music/common/util/MusicValueSaveController;->mCurrentTab:I

    return v1
.end method

.method public static getCustomEqualizer(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 134
    sget-object v1, Lcom/android/music/common/util/MusicValueSaveController;->mCustomEqualizer:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 135
    sget-object v1, Lcom/android/music/common/util/MusicValueSaveController;->mCustomEqualizer:Ljava/lang/String;

    .line 145
    :goto_0
    return-object v1

    .line 137
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 139
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "CUSTOM_EQUALIZER"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/music/common/util/MusicValueSaveController;->mCustomEqualizer:Ljava/lang/String;

    .line 141
    sget-object v1, Lcom/android/music/common/util/MusicValueSaveController;->mCustomEqualizer:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 142
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/music/common/util/MusicValueSaveController;->mSavePlaylistMenu:Z

    .line 143
    const-string v1, "0|0|0|0|0|0|0|0|"

    sput-object v1, Lcom/android/music/common/util/MusicValueSaveController;->mCustomEqualizer:Ljava/lang/String;

    .line 145
    :cond_1
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/android/music/common/util/MusicValueSaveController;->mCustomEqualizer:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getEffect(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, -0x1

    .line 150
    sget v1, Lcom/android/music/common/util/MusicValueSaveController;->mEffect:I

    if-eq v1, v2, :cond_0

    .line 151
    sget v1, Lcom/android/music/common/util/MusicValueSaveController;->mEffect:I

    .line 160
    :goto_0
    return v1

    .line 153
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 155
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "EFFECT"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/music/common/util/MusicValueSaveController;->mEffect:I

    .line 156
    sget v1, Lcom/android/music/common/util/MusicValueSaveController;->mEffect:I

    if-ne v1, v2, :cond_1

    .line 157
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/music/common/util/MusicValueSaveController;->mSaveEffect:Z

    .line 158
    const/4 v1, 0x0

    sput v1, Lcom/android/music/common/util/MusicValueSaveController;->mEffect:I

    .line 160
    :cond_1
    sget v1, Lcom/android/music/common/util/MusicValueSaveController;->mEffect:I

    goto :goto_0
.end method

.method public static getEqualizer(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 165
    sget v1, Lcom/android/music/common/util/MusicValueSaveController;->mEqualizer:I

    if-eq v1, v2, :cond_0

    .line 166
    sget v1, Lcom/android/music/common/util/MusicValueSaveController;->mEqualizer:I

    .line 175
    :goto_0
    return v1

    .line 168
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 170
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "EQUALIZER"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/music/common/util/MusicValueSaveController;->mEqualizer:I

    .line 171
    sget v1, Lcom/android/music/common/util/MusicValueSaveController;->mEqualizer:I

    if-ne v1, v2, :cond_1

    .line 172
    sput-boolean v3, Lcom/android/music/common/util/MusicValueSaveController;->mSaveEqualizer:Z

    .line 173
    sput v3, Lcom/android/music/common/util/MusicValueSaveController;->mEqualizer:I

    .line 175
    :cond_1
    sget v1, Lcom/android/music/common/util/MusicValueSaveController;->mEqualizer:I

    goto :goto_0
.end method

.method public static getMusicMenu(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 91
    sget-object v1, Lcom/android/music/common/util/MusicValueSaveController;->mMusicMenu:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 92
    sget-object v1, Lcom/android/music/common/util/MusicValueSaveController;->mMusicMenu:Ljava/lang/String;

    .line 106
    :goto_0
    return-object v1

    .line 94
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 96
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "TAB_MENU_LIST"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/music/common/util/MusicValueSaveController;->mMusicMenu:Ljava/lang/String;

    .line 98
    sget-object v1, Lcom/android/music/common/util/MusicValueSaveController;->mMusicMenu:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 99
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/music/common/util/MusicValueSaveController;->mSaveMusicMenu:Z

    .line 103
    const-string v1, "3|4|5|"

    sput-object v1, Lcom/android/music/common/util/MusicValueSaveController;->mMusicMenu:Ljava/lang/String;

    .line 106
    :cond_1
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/android/music/common/util/MusicValueSaveController;->mMusicMenu:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getMusicMenuOrder(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 71
    sget-object v1, Lcom/android/music/common/util/MusicValueSaveController;->mMusicMenuOrder:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 72
    sget-object v1, Lcom/android/music/common/util/MusicValueSaveController;->mMusicMenuOrder:Ljava/lang/String;

    .line 86
    :goto_0
    return-object v1

    .line 74
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 76
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "TAB_MENU_LIST_ORDER"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/music/common/util/MusicValueSaveController;->mMusicMenuOrder:Ljava/lang/String;

    .line 78
    sget-object v1, Lcom/android/music/common/util/MusicValueSaveController;->mMusicMenuOrder:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 79
    sput-boolean v5, Lcom/android/music/common/util/MusicValueSaveController;->mSaveMusicMenuOrder:Z

    .line 81
    const-string v1, "%d|%d|%d|%d|%d|"

    new-array v2, v8, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/music/common/util/MusicValueSaveController;->mMusicMenuOrder:Ljava/lang/String;

    .line 86
    :cond_1
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/android/music/common/util/MusicValueSaveController;->mMusicMenuOrder:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getPlaylistMenu(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 111
    sget-object v1, Lcom/android/music/common/util/MusicValueSaveController;->mPlaylistMenu:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 112
    sget-object v1, Lcom/android/music/common/util/MusicValueSaveController;->mPlaylistMenu:Ljava/lang/String;

    .line 129
    :goto_0
    return-object v1

    .line 114
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 116
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "PLAYLIST_MENU_LIST"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/music/common/util/MusicValueSaveController;->mPlaylistMenu:Ljava/lang/String;

    .line 118
    sget-object v1, Lcom/android/music/common/util/MusicValueSaveController;->mPlaylistMenu:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 119
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/music/common/util/MusicValueSaveController;->mSavePlaylistMenu:Z

    .line 121
    const-string v1, "10|11|12|"

    sput-object v1, Lcom/android/music/common/util/MusicValueSaveController;->mPlaylistMenu:Ljava/lang/String;

    .line 129
    :cond_1
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/android/music/common/util/MusicValueSaveController;->mPlaylistMenu:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getRepeat(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, -0x1

    .line 180
    sget v1, Lcom/android/music/common/util/MusicValueSaveController;->mRepeat:I

    if-eq v1, v2, :cond_0

    .line 181
    sget v1, Lcom/android/music/common/util/MusicValueSaveController;->mRepeat:I

    .line 190
    :goto_0
    return v1

    .line 183
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 185
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "prefer.repeat"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/music/common/util/MusicValueSaveController;->mRepeat:I

    .line 186
    sget v1, Lcom/android/music/common/util/MusicValueSaveController;->mRepeat:I

    if-ne v1, v2, :cond_1

    .line 187
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/music/common/util/MusicValueSaveController;->mSaveRepeat:Z

    .line 188
    const/4 v1, 0x2

    sput v1, Lcom/android/music/common/util/MusicValueSaveController;->mRepeat:I

    .line 190
    :cond_1
    sget v1, Lcom/android/music/common/util/MusicValueSaveController;->mRepeat:I

    goto :goto_0
.end method

.method public static getShuffle(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 210
    sget v1, Lcom/android/music/common/util/MusicValueSaveController;->mShuffle:I

    if-eq v1, v2, :cond_1

    .line 211
    sget v1, Lcom/android/music/common/util/MusicValueSaveController;->mShuffle:I

    if-nez v1, :cond_0

    move v1, v3

    .line 220
    :goto_0
    return v1

    :cond_0
    move v1, v4

    .line 211
    goto :goto_0

    .line 213
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 215
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "prefer.shuffle"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/music/common/util/MusicValueSaveController;->mShuffle:I

    .line 216
    sget v1, Lcom/android/music/common/util/MusicValueSaveController;->mShuffle:I

    if-ne v1, v2, :cond_2

    .line 217
    sput-boolean v4, Lcom/android/music/common/util/MusicValueSaveController;->mSaveShuffle:Z

    .line 218
    sput v3, Lcom/android/music/common/util/MusicValueSaveController;->mShuffle:I

    .line 220
    :cond_2
    sget v1, Lcom/android/music/common/util/MusicValueSaveController;->mShuffle:I

    if-nez v1, :cond_3

    move v1, v3

    goto :goto_0

    :cond_3
    move v1, v4

    goto :goto_0
.end method

.method public static getVisualization(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, -0x1

    .line 195
    sget v1, Lcom/android/music/common/util/MusicValueSaveController;->mVisualization:I

    if-eq v1, v2, :cond_0

    .line 196
    sget v1, Lcom/android/music/common/util/MusicValueSaveController;->mVisualization:I

    .line 205
    :goto_0
    return v1

    .line 198
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 200
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "VISUALIZATION"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/music/common/util/MusicValueSaveController;->mVisualization:I

    .line 201
    sget v1, Lcom/android/music/common/util/MusicValueSaveController;->mVisualization:I

    if-ne v1, v2, :cond_1

    .line 202
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/music/common/util/MusicValueSaveController;->mSaveVisualization:Z

    .line 203
    const/4 v1, 0x0

    sput v1, Lcom/android/music/common/util/MusicValueSaveController;->mVisualization:I

    .line 205
    :cond_1
    sget v1, Lcom/android/music/common/util/MusicValueSaveController;->mVisualization:I

    goto :goto_0
.end method

.method public static saveSettingValue(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 327
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 329
    .local v2, settings:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 330
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v0, 0x0

    .line 332
    .local v0, changed:Z
    sget-boolean v3, Lcom/android/music/common/util/MusicValueSaveController;->mSaveMusicMenuOrder:Z

    if-eqz v3, :cond_0

    .line 333
    const-string v3, "TAB_MENU_LIST_ORDER"

    sget-object v4, Lcom/android/music/common/util/MusicValueSaveController;->mMusicMenuOrder:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 334
    sput-boolean v5, Lcom/android/music/common/util/MusicValueSaveController;->mSaveMusicMenuOrder:Z

    .line 335
    const/4 v0, 0x1

    .line 338
    :cond_0
    sget-boolean v3, Lcom/android/music/common/util/MusicValueSaveController;->mSaveMusicMenu:Z

    if-eqz v3, :cond_1

    .line 339
    const-string v3, "TAB_MENU_LIST"

    sget-object v4, Lcom/android/music/common/util/MusicValueSaveController;->mMusicMenu:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 340
    sput-boolean v5, Lcom/android/music/common/util/MusicValueSaveController;->mSaveMusicMenu:Z

    .line 341
    const/4 v0, 0x1

    .line 345
    sget-object v3, Lcom/android/music/common/util/MusicValueSaveController;->mMusicMenu:Ljava/lang/String;

    sget v4, Lcom/android/music/common/util/MusicValueSaveController;->mCurrentTab:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 346
    sget-object v3, Lcom/android/music/common/util/MusicValueSaveController;->TAG:Ljava/lang/String;

    const-string v4, "Make current tab as All tab."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const/4 v3, -0x1

    sput v3, Lcom/android/music/common/util/MusicValueSaveController;->mCurrentTab:I

    .line 349
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/music/common/util/MusicValueSaveController;->mSaveCurrentTab:Z

    .line 354
    :cond_1
    sget-boolean v3, Lcom/android/music/common/util/MusicValueSaveController;->mSavePlaylistMenu:Z

    if-eqz v3, :cond_2

    .line 355
    const-string v3, "PLAYLIST_MENU_LIST"

    sget-object v4, Lcom/android/music/common/util/MusicValueSaveController;->mPlaylistMenu:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 356
    sput-boolean v5, Lcom/android/music/common/util/MusicValueSaveController;->mSavePlaylistMenu:Z

    .line 357
    const/4 v0, 0x1

    .line 360
    :cond_2
    sget-boolean v3, Lcom/android/music/common/util/MusicValueSaveController;->mSaveCustomEqualizer:Z

    if-eqz v3, :cond_3

    .line 361
    const-string v3, "CUSTOM_EQUALIZER"

    sget-object v4, Lcom/android/music/common/util/MusicValueSaveController;->mCustomEqualizer:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 362
    sput-boolean v5, Lcom/android/music/common/util/MusicValueSaveController;->mSaveCustomEqualizer:Z

    .line 363
    const/4 v0, 0x1

    .line 366
    :cond_3
    sget-boolean v3, Lcom/android/music/common/util/MusicValueSaveController;->mSaveEffect:Z

    if-eqz v3, :cond_4

    .line 367
    const-string v3, "EFFECT"

    sget v4, Lcom/android/music/common/util/MusicValueSaveController;->mEffect:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 368
    sput-boolean v5, Lcom/android/music/common/util/MusicValueSaveController;->mSaveEffect:Z

    .line 369
    const/4 v0, 0x1

    .line 372
    :cond_4
    sget-boolean v3, Lcom/android/music/common/util/MusicValueSaveController;->mSaveEqualizer:Z

    if-eqz v3, :cond_5

    .line 373
    const-string v3, "EQUALIZER"

    sget v4, Lcom/android/music/common/util/MusicValueSaveController;->mEqualizer:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 374
    sput-boolean v5, Lcom/android/music/common/util/MusicValueSaveController;->mSaveEqualizer:Z

    .line 375
    const/4 v0, 0x1

    .line 378
    :cond_5
    sget-boolean v3, Lcom/android/music/common/util/MusicValueSaveController;->mSaveRepeat:Z

    if-eqz v3, :cond_6

    .line 379
    const-string v3, "prefer.repeat"

    sget v4, Lcom/android/music/common/util/MusicValueSaveController;->mRepeat:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 380
    sput-boolean v5, Lcom/android/music/common/util/MusicValueSaveController;->mSaveRepeat:Z

    .line 381
    const/4 v0, 0x1

    .line 384
    :cond_6
    sget-boolean v3, Lcom/android/music/common/util/MusicValueSaveController;->mSaveVisualization:Z

    if-eqz v3, :cond_7

    .line 385
    const-string v3, "VISUALIZATION"

    sget v4, Lcom/android/music/common/util/MusicValueSaveController;->mVisualization:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 386
    sput-boolean v5, Lcom/android/music/common/util/MusicValueSaveController;->mSaveVisualization:Z

    .line 387
    const/4 v0, 0x1

    .line 390
    :cond_7
    sget-boolean v3, Lcom/android/music/common/util/MusicValueSaveController;->mSaveShuffle:Z

    if-eqz v3, :cond_8

    .line 391
    const-string v3, "prefer.shuffle"

    sget v4, Lcom/android/music/common/util/MusicValueSaveController;->mShuffle:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 392
    sput-boolean v5, Lcom/android/music/common/util/MusicValueSaveController;->mSaveShuffle:Z

    .line 393
    const/4 v0, 0x1

    .line 397
    :cond_8
    sget-boolean v3, Lcom/android/music/common/util/MusicValueSaveController;->mSaveCurrentTab:Z

    if-eqz v3, :cond_9

    .line 398
    const-string v3, "prefer.currenttab"

    sget v4, Lcom/android/music/common/util/MusicValueSaveController;->mCurrentTab:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 399
    sput-boolean v5, Lcom/android/music/common/util/MusicValueSaveController;->mSaveCurrentTab:Z

    .line 400
    const/4 v0, 0x1

    .line 404
    :cond_9
    if-eqz v0, :cond_a

    .line 405
    sget-object v3, Lcom/android/music/common/util/MusicValueSaveController;->TAG:Ljava/lang/String;

    const-string v4, "Data saved"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 408
    :cond_a
    return-void
.end method

.method public static setCurrentTab(I)V
    .locals 1
    .parameter "currentTab"

    .prologue
    .line 320
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/music/common/util/MusicValueSaveController;->mSaveCurrentTab:Z

    .line 321
    sput p0, Lcom/android/music/common/util/MusicValueSaveController;->mCurrentTab:I

    .line 322
    return-void
.end method

.method public static setCustomEqualizer(Ljava/lang/String;)V
    .locals 1
    .parameter "customEqualizer"

    .prologue
    .line 289
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/music/common/util/MusicValueSaveController;->mSaveCustomEqualizer:Z

    .line 290
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/music/common/util/MusicValueSaveController;->mCustomEqualizer:Ljava/lang/String;

    .line 291
    return-void
.end method

.method public static setEffect(I)V
    .locals 1
    .parameter "effect"

    .prologue
    .line 294
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/music/common/util/MusicValueSaveController;->mSaveEffect:Z

    .line 295
    sput p0, Lcom/android/music/common/util/MusicValueSaveController;->mEffect:I

    .line 296
    return-void
.end method

.method public static setEqualizer(I)V
    .locals 1
    .parameter "equalizer"

    .prologue
    .line 299
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/music/common/util/MusicValueSaveController;->mSaveEqualizer:Z

    .line 300
    sput p0, Lcom/android/music/common/util/MusicValueSaveController;->mEqualizer:I

    .line 301
    return-void
.end method

.method public static setMusicMenu(Ljava/lang/String;)V
    .locals 1
    .parameter "musicMenu"

    .prologue
    .line 279
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/music/common/util/MusicValueSaveController;->mSaveMusicMenu:Z

    .line 280
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/music/common/util/MusicValueSaveController;->mMusicMenu:Ljava/lang/String;

    .line 281
    return-void
.end method

.method public static setMusicMenuOrder(Ljava/lang/String;)V
    .locals 1
    .parameter "musicMenuOrder"

    .prologue
    .line 274
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/music/common/util/MusicValueSaveController;->mSaveMusicMenuOrder:Z

    .line 275
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/music/common/util/MusicValueSaveController;->mMusicMenuOrder:Ljava/lang/String;

    .line 276
    return-void
.end method

.method public static setPlaylistMenu(Ljava/lang/String;)V
    .locals 1
    .parameter "playlistMenu"

    .prologue
    .line 284
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/music/common/util/MusicValueSaveController;->mSavePlaylistMenu:Z

    .line 285
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/music/common/util/MusicValueSaveController;->mPlaylistMenu:Ljava/lang/String;

    .line 286
    return-void
.end method

.method public static setRepeat(I)V
    .locals 1
    .parameter "repeat"

    .prologue
    .line 304
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/music/common/util/MusicValueSaveController;->mSaveRepeat:Z

    .line 305
    sput p0, Lcom/android/music/common/util/MusicValueSaveController;->mRepeat:I

    .line 306
    return-void
.end method

.method public static setShuffle(Z)V
    .locals 1
    .parameter "shuffle"

    .prologue
    const/4 v0, 0x1

    .line 314
    sput-boolean v0, Lcom/android/music/common/util/MusicValueSaveController;->mSaveShuffle:Z

    .line 315
    if-eqz p0, :cond_0

    :goto_0
    sput v0, Lcom/android/music/common/util/MusicValueSaveController;->mShuffle:I

    .line 316
    return-void

    .line 315
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setVisualization(I)V
    .locals 1
    .parameter "visualization"

    .prologue
    .line 309
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/music/common/util/MusicValueSaveController;->mSaveVisualization:Z

    .line 310
    sput p0, Lcom/android/music/common/util/MusicValueSaveController;->mVisualization:I

    .line 311
    return-void
.end method
