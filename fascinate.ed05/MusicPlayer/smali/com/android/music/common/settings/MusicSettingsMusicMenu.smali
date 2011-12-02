.class public Lcom/android/music/common/settings/MusicSettingsMusicMenu;
.super Landroid/app/Activity;
.source "MusicSettingsMusicMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/common/settings/MusicSettingsMusicMenu$SettingsMenuOnClickListener;
    }
.end annotation


# static fields
.field private static final DONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = null

.field private static enterId:Ljava/util/UUID; = null

.field private static mCheckBoxes:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/CheckBox;",
            ">;"
        }
    .end annotation
.end field

.field private static mCheckedValues:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static mEntrance:Z = false

.field private static mMenuLayouts:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private static playlistCount:I = 0x0

.field private static tablistCount:I = 0x0

.field private static final textSeperator:Ljava/lang/String; = "|"


# instance fields
.field private currentEnterId:Ljava/util/UUID;

.field private final mMediaReceiver:Landroid/content/BroadcastReceiver;

.field private mMusicMenu:Lcom/android/music/common/settings/MusicSettingsMusicMenu;

.field private mMusicMenuLineID:[I

.field private mMusicMenuListTypeID:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->TAG:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mCheckedValues:Ljava/util/ArrayList;

    .line 53
    const/4 v0, 0x5

    sput v0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->tablistCount:I

    .line 54
    const/4 v0, 0x3

    sput v0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->playlistCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    iput-object p0, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mMusicMenu:Lcom/android/music/common/settings/MusicSettingsMusicMenu;

    .line 58
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mMusicMenuLineID:[I

    .line 59
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mMusicMenuListTypeID:[I

    .line 64
    new-instance v0, Lcom/android/music/common/settings/MusicSettingsMusicMenu$1;

    invoke-direct {v0, p0}, Lcom/android/music/common/settings/MusicSettingsMusicMenu$1;-><init>(Lcom/android/music/common/settings/MusicSettingsMusicMenu;)V

    iput-object v0, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    .line 282
    return-void

    .line 58
    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data

    .line 59
    :array_1
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mCheckedValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/music/common/settings/MusicSettingsMusicMenu;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mMusicMenuLineID:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/music/common/settings/MusicSettingsMusicMenu;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mMusicMenuListTypeID:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/music/common/settings/MusicSettingsMusicMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->setDisplayByValue()V

    return-void
.end method

.method private getValues()V
    .locals 6

    .prologue
    const-string v5, "|"

    .line 155
    const-string v1, ""

    .line 157
    .local v1, tmpString:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/music/common/util/MusicValueSaveController;->getMusicMenu(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 158
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v3, "|"

    invoke-direct {v0, v1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .local v0, st:Ljava/util/StringTokenizer;
    sget-object v3, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mCheckedValues:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 163
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 164
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, token:Ljava/lang/String;
    sget-object v3, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mCheckedValues:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 170
    .end local v2           #token:Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lcom/android/music/common/util/MusicValueSaveController;->getPlaylistMenu(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 171
    new-instance v0, Ljava/util/StringTokenizer;

    .end local v0           #st:Ljava/util/StringTokenizer;
    const-string v3, "|"

    invoke-direct {v0, v1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .restart local v0       #st:Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 173
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 174
    .restart local v2       #token:Ljava/lang/String;
    sget-object v3, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mCheckedValues:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 176
    .end local v2           #token:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private musicMenuEventInit()V
    .locals 4

    .prologue
    .line 275
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mMenuLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 276
    sget-object v1, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mMenuLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/music/common/settings/MusicSettingsMusicMenu$SettingsMenuOnClickListener;

    sget-object v2, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mCheckBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-direct {v3, p0, v0, v2}, Lcom/android/music/common/settings/MusicSettingsMusicMenu$SettingsMenuOnClickListener;-><init>(Lcom/android/music/common/settings/MusicSettingsMusicMenu;ILandroid/widget/CheckBox;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    :cond_0
    return-void
.end method

.method private musicMenuLayoutInit()V
    .locals 2

    .prologue
    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mMenuLayouts:Ljava/util/ArrayList;

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mCheckBoxes:Ljava/util/ArrayList;

    .line 224
    sget-object v1, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mMenuLayouts:Ljava/util/ArrayList;

    const v0, 0x7f0c00ef

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    sget-object v1, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mCheckBoxes:Ljava/util/ArrayList;

    const v0, 0x7f0c00f0

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object v1, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mMenuLayouts:Ljava/util/ArrayList;

    const v0, 0x7f0c00f1

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    sget-object v1, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mCheckBoxes:Ljava/util/ArrayList;

    const v0, 0x7f0c00f2

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object v1, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mMenuLayouts:Ljava/util/ArrayList;

    const v0, 0x7f0c00f3

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    sget-object v1, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mCheckBoxes:Ljava/util/ArrayList;

    const v0, 0x7f0c00f4

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    sget-object v1, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mMenuLayouts:Ljava/util/ArrayList;

    const v0, 0x7f0c00f5

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    sget-object v1, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mCheckBoxes:Ljava/util/ArrayList;

    const v0, 0x7f0c00f6

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    sget-object v1, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mMenuLayouts:Ljava/util/ArrayList;

    const v0, 0x7f0c00f7

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    sget-object v1, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mCheckBoxes:Ljava/util/ArrayList;

    const v0, 0x7f0c00f8

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    sget-object v1, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mMenuLayouts:Ljava/util/ArrayList;

    const v0, 0x7f0c00f9

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    sget-object v1, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mCheckBoxes:Ljava/util/ArrayList;

    const v0, 0x7f0c00fa

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    sget-object v1, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mMenuLayouts:Ljava/util/ArrayList;

    const v0, 0x7f0c00fb

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    sget-object v1, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mCheckBoxes:Ljava/util/ArrayList;

    const v0, 0x7f0c00fc

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    sget-object v1, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mMenuLayouts:Ljava/util/ArrayList;

    const v0, 0x7f0c00fd

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    sget-object v0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mCheckBoxes:Ljava/util/ArrayList;

    const v1, 0x7f0c00fe

    invoke-virtual {p0, v1}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    return-void
.end method

.method private setDisplayByValue()V
    .locals 10

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v9, "%s%s|"

    .line 180
    const-string v3, ""

    .line 181
    .local v3, tabString:Ljava/lang/String;
    const-string v2, ""

    .line 183
    .local v2, playlistString:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v4, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mCheckBoxes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 185
    sget-object v4, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mCheckBoxes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 183
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    :cond_0
    sget-object v4, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mCheckedValues:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 190
    const/4 v1, 0x0

    .line 192
    const/4 v1, 0x0

    :goto_1
    sget-object v4, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mCheckedValues:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 193
    sget-object v4, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mCheckedValues:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 194
    .local v0, checkedItem:I
    const/16 v4, 0xa

    if-lt v0, v4, :cond_2

    .line 203
    .end local v0           #checkedItem:I
    :cond_1
    sget-object v4, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mCheckedValues:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 205
    :goto_2
    sget-object v4, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mCheckedValues:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 206
    sget-object v4, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mCheckedValues:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 207
    .restart local v0       #checkedItem:I
    sget-object v4, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mCheckBoxes:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mMusicMenuLineID:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 208
    const-string v4, "%s%s|"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v2, v4, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v9, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 198
    :cond_2
    sget-object v4, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mCheckBoxes:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mMusicMenuLineID:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 199
    const-string v4, "%s%s|"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v3, v4, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v9, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 213
    .end local v0           #checkedItem:I
    :cond_3
    invoke-static {v3}, Lcom/android/music/common/util/MusicValueSaveController;->setMusicMenu(Ljava/lang/String;)V

    .line 215
    invoke-static {v2}, Lcom/android/music/common/util/MusicValueSaveController;->setPlaylistMenu(Ljava/lang/String;)V

    .line 217
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 85
    const v1, 0x7f030027

    invoke-virtual {p0, v1}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->setContentView(I)V

    .line 87
    invoke-direct {p0}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->musicMenuLayoutInit()V

    .line 88
    invoke-direct {p0}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->musicMenuEventInit()V

    .line 90
    invoke-direct {p0}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->getValues()V

    .line 92
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 95
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->currentEnterId:Ljava/util/UUID;

    sput-object v1, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->enterId:Ljava/util/UUID;

    .line 99
    sget-object v1, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Create new instance of MusicSettingsMusicMenu with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->currentEnterId:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 130
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 131
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 105
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 106
    invoke-static {p0}, Lcom/android/music/common/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const v0, 0x7f0a00eb

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 108
    invoke-virtual {p0}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->finish()V

    .line 126
    :goto_0
    return-void

    .line 112
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mEntrance:Z

    .line 116
    sget-object v0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->enterId:Ljava/util/UUID;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->currentEnterId:Ljava/util/UUID;

    sget-object v1, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->enterId:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    :cond_1
    invoke-direct {p0}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->setDisplayByValue()V

    .line 118
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->currentEnterId:Ljava/util/UUID;

    sput-object v0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->enterId:Ljava/util/UUID;

    goto :goto_0

    .line 120
    :cond_2
    sget-object v0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume(): terminate activity with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->currentEnterId:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {p0}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->finish()V

    goto :goto_0
.end method
