.class public Lcom/android/music/common/util/MusicValueSaveController;
.super Ljava/lang/Object;
.source "MusicValueSaveController.java"


# static fields
.field private static final PREFERENCE_REPEAT:Ljava/lang/String; = "prefer.repeat"

.field private static final PREFERENCE_SHUFFLE:Ljava/lang/String; = "prefer.shuffle"

.field private static final RESUME_AFTER_CALL:Ljava/lang/String; = "musicPlayer.resumeAfterCall"

.field private static final TAG:Ljava/lang/String;

.field private static mCustomEqualizer:Ljava/lang/String;

.field private static mEffect:I

.field private static mEqualizer:I

.field private static mMusicMenu:Ljava/lang/String;

.field private static mPlaylistMenu:Ljava/lang/String;

.field private static mRepeat:I

.field private static mSaveCustomEqualizer:Z

.field private static mSaveEffect:Z

.field private static mSaveEqualizer:Z

.field private static mSaveMusicMenu:Z

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

    .line 24
    sput v2, Lcom/android/music/common/util/MusicValueSaveController;->mEffect:I

    .line 25
    sput v2, Lcom/android/music/common/util/MusicValueSaveController;->mEqualizer:I

    .line 26
    sput v2, Lcom/android/music/common/util/MusicValueSaveController;->mRepeat:I

    .line 27
    sput v2, Lcom/android/music/common/util/MusicValueSaveController;->mShuffle:I

    .line 28
    sput v2, Lcom/android/music/common/util/MusicValueSaveController;->mVisualization:I

    .line 35
    sput-boolean v1, Lcom/android/music/common/util/MusicValueSaveController;->mSaveMusicMenu:Z

    .line 36
    sput-boolean v1, Lcom/android/music/common/util/MusicValueSaveController;->mSavePlaylistMenu:Z

    .line 37
    sput-boolean v1, Lcom/android/music/common/util/MusicValueSaveController;->mSaveCustomEqualizer:Z

    .line 38
    sput-boolean v1, Lcom/android/music/common/util/MusicValueSaveController;->mSaveEffect:Z

    .line 39
    sput-boolean v1, Lcom/android/music/common/util/MusicValueSaveController;->mSaveEqualizer:Z

    .line 40
    sput-boolean v1, Lcom/android/music/common/util/MusicValueSaveController;->mSaveRepeat:Z

    .line 41
    sput-boolean v1, Lcom/android/music/common/util/MusicValueSaveController;->mSaveShuffle:Z

    .line 42
    sput-boolean v1, Lcom/android/music/common/util/MusicValueSaveController;->mSaveVisualization:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCustomEqualizer(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 89
    sget-object v1, Lcom/android/music/common/util/MusicValueSaveController;->mCustomEqualizer:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 90
    sget-object v1, Lcom/android/music/common/util/MusicValueSaveController;->mCustomEqualizer:Ljava/lang/String;

    .line 100
    :goto_0
    return-object v1

    .line 92
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 94
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "CUSTOM_EQUALIZER"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/music/common/util/MusicValueSaveController;->mCustomEqualizer:Ljava/lang/String;

    .line 96
    sget-object v1, Lcom/android/music/common/util/MusicValueSaveController;->mCustomEqualizer:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 97
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/music/common/util/MusicValueSaveController;->mSavePlaylistMenu:Z

    .line 98
    const-string v1, "0|0|0|0|0|0|0|0|"

    sput-object v1, Lcom/android/music/common/util/MusicValueSaveController;->mCustomEqualizer:Ljava/lang/String;

    .line 100
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

    .line 105
    sget v1, Lcom/android/music/common/util/MusicValueSaveController;->mEffect:I

    if-eq v1, v2, :cond_0

    .line 106
    sget v1, Lcom/android/music/common/util/MusicValueSaveController;->mEffect:I

    .line 115
    :goto_0
    return v1

    .line 108
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 110
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "EFFECT"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/music/common/util/MusicValueSaveController;->mEffect:I

    .line 111
    sget v1, Lcom/android/music/common/util/MusicValueSaveController;->mEffect:I

    if-ne v1, v2, :cond_1

    .line 112
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/music/common/util/MusicValueSaveController;->mSaveEffect:Z

    .line 113
    const/4 v1, 0x0

    sput v1, Lcom/android/music/common/util/MusicValueSaveController;->mEffect:I

    .line 115
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

    .line 120
    sget v1, Lcom/android/music/common/util/MusicValueSaveController;->mEqualizer:I

    if-eq v1, v2, :cond_0

    .line 121
    sget v1, Lcom/android/music/common/util/MusicValueSaveController;->mEqualizer:I

    .line 130
    :goto_0
    return v1

    .line 123
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 125
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "EQUALIZER"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/music/common/util/MusicValueSaveController;->mEqualizer:I

    .line 126
    sget v1, Lcom/android/music/common/util/MusicValueSaveController;->mEqualizer:I

    if-ne v1, v2, :cond_1

    .line 127
    sput-boolean v3, Lcom/android/music/common/util/MusicValueSaveController;->mSaveEqualizer:Z

    .line 128
    sput v3, Lcom/android/music/common/util/MusicValueSaveController;->mEqualizer:I

    .line 130
    :cond_1
    sget v1, Lcom/android/music/common/util/MusicValueSaveController;->mEqualizer:I

    goto :goto_0
.end method

.method public static getMusicMenu(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 46
    sget-object v1, Lcom/android/music/common/util/MusicValueSaveController;->mMusicMenu:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 47
    sget-object v1, Lcom/android/music/common/util/MusicValueSaveController;->mMusicMenu:Ljava/lang/String;

    .line 61
    :goto_0
    return-object v1

    .line 49
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 51
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "TAB_MENU_LIST"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/music/common/util/MusicValueSaveController;->mMusicMenu:Ljava/lang/String;

    .line 53
    sget-object v1, Lcom/android/music/common/util/MusicValueSaveController;->mMusicMenu:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 54
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/music/common/util/MusicValueSaveController;->mSaveMusicMenu:Z

    .line 58
    const-string v1, "3|4|5|"

    sput-object v1, Lcom/android/music/common/util/MusicValueSaveController;->mMusicMenu:Ljava/lang/String;

    .line 61
    :cond_1
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/android/music/common/util/MusicValueSaveController;->mMusicMenu:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getPlaylistMenu(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 66
    sget-object v1, Lcom/android/music/common/util/MusicValueSaveController;->mPlaylistMenu:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 67
    sget-object v1, Lcom/android/music/common/util/MusicValueSaveController;->mPlaylistMenu:Ljava/lang/String;

    .line 84
    :goto_0
    return-object v1

    .line 69
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 71
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "PLAYLIST_MENU_LIST"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/music/common/util/MusicValueSaveController;->mPlaylistMenu:Ljava/lang/String;

    .line 73
    sget-object v1, Lcom/android/music/common/util/MusicValueSaveController;->mPlaylistMenu:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 74
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/music/common/util/MusicValueSaveController;->mSavePlaylistMenu:Z

    .line 76
    const-string v1, "10|11|12|"

    sput-object v1, Lcom/android/music/common/util/MusicValueSaveController;->mPlaylistMenu:Ljava/lang/String;

    .line 84
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

    .line 135
    sget v1, Lcom/android/music/common/util/MusicValueSaveController;->mRepeat:I

    if-eq v1, v2, :cond_0

    .line 136
    sget v1, Lcom/android/music/common/util/MusicValueSaveController;->mRepeat:I

    .line 145
    :goto_0
    return v1

    .line 138
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 140
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "prefer.repeat"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/music/common/util/MusicValueSaveController;->mRepeat:I

    .line 141
    sget v1, Lcom/android/music/common/util/MusicValueSaveController;->mRepeat:I

    if-ne v1, v2, :cond_1

    .line 142
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/music/common/util/MusicValueSaveController;->mSaveRepeat:Z

    .line 143
    const/4 v1, 0x2

    sput v1, Lcom/android/music/common/util/MusicValueSaveController;->mRepeat:I

    .line 145
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

    .line 165
    sget v1, Lcom/android/music/common/util/MusicValueSaveController;->mShuffle:I

    if-eq v1, v2, :cond_1

    .line 166
    sget v1, Lcom/android/music/common/util/MusicValueSaveController;->mShuffle:I

    if-nez v1, :cond_0

    move v1, v3

    .line 175
    :goto_0
    return v1

    :cond_0
    move v1, v4

    .line 166
    goto :goto_0

    .line 168
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 170
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "prefer.shuffle"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/music/common/util/MusicValueSaveController;->mShuffle:I

    .line 171
    sget v1, Lcom/android/music/common/util/MusicValueSaveController;->mShuffle:I

    if-ne v1, v2, :cond_2

    .line 172
    sput-boolean v4, Lcom/android/music/common/util/MusicValueSaveController;->mSaveShuffle:Z

    .line 173
    sput v3, Lcom/android/music/common/util/MusicValueSaveController;->mShuffle:I

    .line 175
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

    .line 150
    sget v1, Lcom/android/music/common/util/MusicValueSaveController;->mVisualization:I

    if-eq v1, v2, :cond_0

    .line 151
    sget v1, Lcom/android/music/common/util/MusicValueSaveController;->mVisualization:I

    .line 160
    :goto_0
    return v1

    .line 153
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 155
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "VISUALIZATION"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/music/common/util/MusicValueSaveController;->mVisualization:I

    .line 156
    sget v1, Lcom/android/music/common/util/MusicValueSaveController;->mVisualization:I

    if-ne v1, v2, :cond_1

    .line 157
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/music/common/util/MusicValueSaveController;->mSaveVisualization:Z

    .line 158
    const/4 v1, 0x0

    sput v1, Lcom/android/music/common/util/MusicValueSaveController;->mVisualization:I

    .line 160
    :cond_1
    sget v1, Lcom/android/music/common/util/MusicValueSaveController;->mVisualization:I

    goto :goto_0
.end method

.method public static saveSettingValue(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 221
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 223
    .local v2, settings:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 224
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v0, 0x0

    .line 225
    .local v0, changed:Z
    sget-boolean v3, Lcom/android/music/common/util/MusicValueSaveController;->mSaveMusicMenu:Z

    if-eqz v3, :cond_0

    .line 226
    const-string v3, "TAB_MENU_LIST"

    sget-object v4, Lcom/android/music/common/util/MusicValueSaveController;->mMusicMenu:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 227
    sput-boolean v5, Lcom/android/music/common/util/MusicValueSaveController;->mSaveMusicMenu:Z

    .line 228
    const/4 v0, 0x1

    .line 231
    :cond_0
    sget-boolean v3, Lcom/android/music/common/util/MusicValueSaveController;->mSavePlaylistMenu:Z

    if-eqz v3, :cond_1

    .line 232
    const-string v3, "PLAYLIST_MENU_LIST"

    sget-object v4, Lcom/android/music/common/util/MusicValueSaveController;->mPlaylistMenu:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 233
    sput-boolean v5, Lcom/android/music/common/util/MusicValueSaveController;->mSavePlaylistMenu:Z

    .line 234
    const/4 v0, 0x1

    .line 237
    :cond_1
    sget-boolean v3, Lcom/android/music/common/util/MusicValueSaveController;->mSaveCustomEqualizer:Z

    if-eqz v3, :cond_2

    .line 238
    const-string v3, "CUSTOM_EQUALIZER"

    sget-object v4, Lcom/android/music/common/util/MusicValueSaveController;->mCustomEqualizer:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 239
    sput-boolean v5, Lcom/android/music/common/util/MusicValueSaveController;->mSaveCustomEqualizer:Z

    .line 240
    const/4 v0, 0x1

    .line 243
    :cond_2
    sget-boolean v3, Lcom/android/music/common/util/MusicValueSaveController;->mSaveEffect:Z

    if-eqz v3, :cond_3

    .line 244
    const-string v3, "EFFECT"

    sget v4, Lcom/android/music/common/util/MusicValueSaveController;->mEffect:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 245
    sput-boolean v5, Lcom/android/music/common/util/MusicValueSaveController;->mSaveEffect:Z

    .line 246
    const/4 v0, 0x1

    .line 249
    :cond_3
    sget-boolean v3, Lcom/android/music/common/util/MusicValueSaveController;->mSaveEqualizer:Z

    if-eqz v3, :cond_4

    .line 250
    const-string v3, "EQUALIZER"

    sget v4, Lcom/android/music/common/util/MusicValueSaveController;->mEqualizer:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 251
    sput-boolean v5, Lcom/android/music/common/util/MusicValueSaveController;->mSaveEqualizer:Z

    .line 252
    const/4 v0, 0x1

    .line 255
    :cond_4
    sget-boolean v3, Lcom/android/music/common/util/MusicValueSaveController;->mSaveRepeat:Z

    if-eqz v3, :cond_5

    .line 256
    const-string v3, "prefer.repeat"

    sget v4, Lcom/android/music/common/util/MusicValueSaveController;->mRepeat:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 257
    sput-boolean v5, Lcom/android/music/common/util/MusicValueSaveController;->mSaveRepeat:Z

    .line 258
    const/4 v0, 0x1

    .line 261
    :cond_5
    sget-boolean v3, Lcom/android/music/common/util/MusicValueSaveController;->mSaveVisualization:Z

    if-eqz v3, :cond_6

    .line 262
    const-string v3, "VISUALIZATION"

    sget v4, Lcom/android/music/common/util/MusicValueSaveController;->mVisualization:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 263
    sput-boolean v5, Lcom/android/music/common/util/MusicValueSaveController;->mSaveVisualization:Z

    .line 264
    const/4 v0, 0x1

    .line 267
    :cond_6
    sget-boolean v3, Lcom/android/music/common/util/MusicValueSaveController;->mSaveShuffle:Z

    if-eqz v3, :cond_7

    .line 268
    const-string v3, "prefer.shuffle"

    sget v4, Lcom/android/music/common/util/MusicValueSaveController;->mShuffle:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 269
    sput-boolean v5, Lcom/android/music/common/util/MusicValueSaveController;->mSaveShuffle:Z

    .line 270
    const/4 v0, 0x1

    .line 273
    :cond_7
    if-eqz v0, :cond_8

    .line 274
    sget-object v3, Lcom/android/music/common/util/MusicValueSaveController;->TAG:Ljava/lang/String;

    const-string v4, "Data saved"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 277
    :cond_8
    return-void
.end method

.method public static setCustomEqualizer(Ljava/lang/String;)V
    .locals 1
    .parameter "customEqualizer"

    .prologue
    .line 190
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/music/common/util/MusicValueSaveController;->mSaveCustomEqualizer:Z

    .line 191
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/music/common/util/MusicValueSaveController;->mCustomEqualizer:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public static setEffect(I)V
    .locals 1
    .parameter "effect"

    .prologue
    .line 195
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/music/common/util/MusicValueSaveController;->mSaveEffect:Z

    .line 196
    sput p0, Lcom/android/music/common/util/MusicValueSaveController;->mEffect:I

    .line 197
    return-void
.end method

.method public static setEqualizer(I)V
    .locals 1
    .parameter "equalizer"

    .prologue
    .line 200
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/music/common/util/MusicValueSaveController;->mSaveEqualizer:Z

    .line 201
    sput p0, Lcom/android/music/common/util/MusicValueSaveController;->mEqualizer:I

    .line 202
    return-void
.end method

.method public static setMusicMenu(Ljava/lang/String;)V
    .locals 1
    .parameter "musicMenu"

    .prologue
    .line 180
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/music/common/util/MusicValueSaveController;->mSaveMusicMenu:Z

    .line 181
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/music/common/util/MusicValueSaveController;->mMusicMenu:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public static setPlaylistMenu(Ljava/lang/String;)V
    .locals 1
    .parameter "playlistMenu"

    .prologue
    .line 185
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/music/common/util/MusicValueSaveController;->mSavePlaylistMenu:Z

    .line 186
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/music/common/util/MusicValueSaveController;->mPlaylistMenu:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public static setRepeat(I)V
    .locals 1
    .parameter "repeat"

    .prologue
    .line 205
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/music/common/util/MusicValueSaveController;->mSaveRepeat:Z

    .line 206
    sput p0, Lcom/android/music/common/util/MusicValueSaveController;->mRepeat:I

    .line 207
    return-void
.end method

.method public static setShuffle(Z)V
    .locals 1
    .parameter "shuffle"

    .prologue
    const/4 v0, 0x1

    .line 215
    sput-boolean v0, Lcom/android/music/common/util/MusicValueSaveController;->mSaveShuffle:Z

    .line 216
    if-eqz p0, :cond_0

    :goto_0
    sput v0, Lcom/android/music/common/util/MusicValueSaveController;->mShuffle:I

    .line 217
    return-void

    .line 216
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setVisualization(I)V
    .locals 1
    .parameter "visualization"

    .prologue
    .line 210
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/music/common/util/MusicValueSaveController;->mSaveVisualization:Z

    .line 211
    sput p0, Lcom/android/music/common/util/MusicValueSaveController;->mVisualization:I

    .line 212
    return-void
.end method
