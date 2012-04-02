.class public Lcom/android/music/common/settings/MusicSettingsMusicMenu;
.super Landroid/app/Activity;
.source "MusicSettingsMusicMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/common/settings/MusicSettingsMusicMenu$SettingsMenuOnClickListener;,
        Lcom/android/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static enterId:Ljava/util/UUID;

.field public static mEntrance:Z


# instance fields
.field private currentEnterId:Ljava/util/UUID;

.field private final mKillReceiver:Landroid/content/BroadcastReceiver;

.field private final mMediaReceiver:Landroid/content/BroadcastReceiver;

.field private mMusicMenuCheckBoxIDs:[I

.field private mMusicMenuItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMusicMenuLayoutIDs:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mMusicMenuItems:Ljava/util/ArrayList;

    .line 79
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mMusicMenuLayoutIDs:[I

    .line 84
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mMusicMenuCheckBoxIDs:[I

    .line 89
    new-instance v0, Lcom/android/music/common/settings/MusicSettingsMusicMenu$1;

    invoke-direct {v0, p0}, Lcom/android/music/common/settings/MusicSettingsMusicMenu$1;-><init>(Lcom/android/music/common/settings/MusicSettingsMusicMenu;)V

    iput-object v0, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    .line 122
    new-instance v0, Lcom/android/music/common/settings/MusicSettingsMusicMenu$2;

    invoke-direct {v0, p0}, Lcom/android/music/common/settings/MusicSettingsMusicMenu$2;-><init>(Lcom/android/music/common/settings/MusicSettingsMusicMenu;)V

    iput-object v0, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mKillReceiver:Landroid/content/BroadcastReceiver;

    .line 383
    return-void

    .line 79
    nop

    :array_0
    .array-data 0x4
        0xf0t 0x0t 0xct 0x7ft
        0xf8t 0x0t 0xct 0x7ft
        0xfat 0x0t 0xct 0x7ft
        0xfct 0x0t 0xct 0x7ft
        0xfet 0x0t 0xct 0x7ft
        0x0t 0x1t 0xct 0x7ft
        0x2t 0x1t 0xct 0x7ft
        0x4t 0x1t 0xct 0x7ft
    .end array-data

    .line 84
    :array_1
    .array-data 0x4
        0xf7t 0x0t 0xct 0x7ft
        0xf9t 0x0t 0xct 0x7ft
        0xfbt 0x0t 0xct 0x7ft
        0xfdt 0x0t 0xct 0x7ft
        0xfft 0x0t 0xct 0x7ft
        0x1t 0x1t 0xct 0x7ft
        0x3t 0x1t 0xct 0x7ft
        0x5t 0x1t 0xct 0x7ft
    .end array-data
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/music/common/settings/MusicSettingsMusicMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->setDisplayByValue()V

    return-void
.end method

.method private getValues()V
    .locals 14

    .prologue
    const/16 v13, 0xd

    const/4 v12, 0x1

    const-string v11, "|"

    .line 268
    const-string v8, ""

    .line 269
    .local v8, tmpString:Ljava/lang/String;
    const/4 v5, 0x0

    .line 273
    .local v5, st:Ljava/util/StringTokenizer;
    new-array v0, v13, [Z

    .line 274
    .local v0, checkedArrary:[Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v10, v0

    if-ge v1, v10, :cond_0

    .line 275
    const/4 v10, 0x0

    aput-boolean v10, v0, v1

    .line 274
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 278
    :cond_0
    invoke-static {p0}, Lcom/android/music/common/util/MusicValueSaveController;->getMusicMenu(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 279
    new-instance v5, Ljava/util/StringTokenizer;

    .end local v5           #st:Ljava/util/StringTokenizer;
    const-string v10, "|"

    invoke-direct {v5, v8, v11}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .restart local v5       #st:Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 281
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 282
    .local v9, token:Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aput-boolean v12, v0, v10

    goto :goto_1

    .line 286
    .end local v9           #token:Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/android/music/common/util/MusicValueSaveController;->getPlaylistMenu(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 287
    new-instance v5, Ljava/util/StringTokenizer;

    .end local v5           #st:Ljava/util/StringTokenizer;
    const-string v10, "|"

    invoke-direct {v5, v8, v11}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    .restart local v5       #st:Ljava/util/StringTokenizer;
    :goto_2
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 289
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 290
    .restart local v9       #token:Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aput-boolean v12, v0, v10

    goto :goto_2

    .line 293
    .end local v9           #token:Ljava/lang/String;
    :cond_2
    const/4 v7, 0x0

    .line 294
    .local v7, tmpMenuItem:Lcom/android/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;
    const/4 v6, 0x0

    .line 295
    .local v6, tmpListType:I
    const/4 v2, 0x0

    .line 299
    .local v2, index:I
    invoke-static {p0}, Lcom/android/music/common/util/MusicValueSaveController;->getMusicMenuOrder(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 300
    new-instance v5, Ljava/util/StringTokenizer;

    .end local v5           #st:Ljava/util/StringTokenizer;
    const-string v10, "|"

    invoke-direct {v5, v8, v11}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    .restart local v5       #st:Ljava/util/StringTokenizer;
    :goto_3
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 302
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 303
    .restart local v9       #token:Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 305
    iget-object v10, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mMusicMenuItems:Ljava/util/ArrayList;

    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .local v3, index:I
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #tmpMenuItem:Lcom/android/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;
    check-cast v7, Lcom/android/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;

    .line 306
    .restart local v7       #tmpMenuItem:Lcom/android/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;
    invoke-static {v6}, Lcom/android/music/common/util/ListType;->getStringRsrcID(I)I

    move-result v10

    aget-boolean v11, v0, v6

    invoke-virtual {v7, v6, v10, v11}, Lcom/android/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;->setMenuItemValue(IIZ)V

    move v2, v3

    .line 309
    .end local v3           #index:I
    .restart local v2       #index:I
    goto :goto_3

    .line 312
    .end local v9           #token:Ljava/lang/String;
    :cond_3
    const/16 v4, 0xa

    .local v4, p:I
    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    :goto_4
    if-ge v4, v13, :cond_4

    .line 313
    iget-object v10, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mMusicMenuItems:Ljava/util/ArrayList;

    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #tmpMenuItem:Lcom/android/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;
    check-cast v7, Lcom/android/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;

    .line 314
    .restart local v7       #tmpMenuItem:Lcom/android/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;
    invoke-static {v4}, Lcom/android/music/common/util/ListType;->getStringRsrcID(I)I

    move-result v10

    aget-boolean v11, v0, v4

    invoke-virtual {v7, v4, v10, v11}, Lcom/android/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;->setMenuItemValue(IIZ)V

    .line 312
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    goto :goto_4

    .line 321
    :cond_4
    return-void
.end method

.method private musicMenuEventInit()V
    .locals 4

    .prologue
    .line 375
    const/4 v1, 0x0

    .line 377
    .local v1, menuItem:Lcom/android/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mMusicMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 378
    iget-object v2, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mMusicMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #menuItem:Lcom/android/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;
    check-cast v1, Lcom/android/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;

    .line 379
    .restart local v1       #menuItem:Lcom/android/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;
    iget-object v2, v1, Lcom/android/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;->mMenuLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/music/common/settings/MusicSettingsMusicMenu$SettingsMenuOnClickListener;

    invoke-direct {v3, p0, v1}, Lcom/android/music/common/settings/MusicSettingsMusicMenu$SettingsMenuOnClickListener;-><init>(Lcom/android/music/common/settings/MusicSettingsMusicMenu;Lcom/android/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 381
    :cond_0
    return-void
.end method

.method private musicMenuLayoutInit()V
    .locals 5

    .prologue
    .line 358
    iget-object v4, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mMusicMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 359
    const/4 v3, 0x0

    .line 361
    .local v3, menuItem:Lcom/android/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;
    const/4 v2, 0x0

    .line 362
    .local v2, layout:Landroid/widget/LinearLayout;
    const/4 v0, 0x0

    .line 365
    .local v0, checkBox:Landroid/widget/CheckBox;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mMusicMenuLayoutIDs:[I

    array-length v4, v4

    if-ge v1, v4, :cond_0

    .line 366
    iget-object v4, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mMusicMenuLayoutIDs:[I

    aget v4, v4, v1

    invoke-virtual {p0, v4}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #layout:Landroid/widget/LinearLayout;
    check-cast v2, Landroid/widget/LinearLayout;

    .line 367
    .restart local v2       #layout:Landroid/widget/LinearLayout;
    iget-object v4, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mMusicMenuCheckBoxIDs:[I

    aget v4, v4, v1

    invoke-virtual {p0, v4}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #checkBox:Landroid/widget/CheckBox;
    check-cast v0, Landroid/widget/CheckBox;

    .line 369
    .restart local v0       #checkBox:Landroid/widget/CheckBox;
    new-instance v3, Lcom/android/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;

    .end local v3           #menuItem:Lcom/android/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;
    invoke-direct {v3, p0, v2, v0}, Lcom/android/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;-><init>(Lcom/android/music/common/settings/MusicSettingsMusicMenu;Landroid/widget/LinearLayout;Landroid/widget/CheckBox;)V

    .line 370
    .restart local v3       #menuItem:Lcom/android/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;
    iget-object v4, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mMusicMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 372
    :cond_0
    return-void
.end method

.method private setDisplayByValue()V
    .locals 13

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v12, "%s%s|"

    .line 324
    const-string v4, ""

    .line 325
    .local v4, tabOrderString:Ljava/lang/String;
    const-string v5, ""

    .line 326
    .local v5, tabString:Ljava/lang/String;
    const-string v3, ""

    .line 328
    .local v3, playlistString:Ljava/lang/String;
    const/4 v2, 0x0

    .line 330
    .local v2, menuItem:Lcom/android/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    iget-object v7, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mMusicMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_3

    .line 331
    iget-object v7, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mMusicMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #menuItem:Lcom/android/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;
    check-cast v2, Lcom/android/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;

    .line 332
    .restart local v2       #menuItem:Lcom/android/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;
    iget-object v7, v2, Lcom/android/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;->mMenuLayout:Landroid/widget/LinearLayout;

    const v8, 0x7f0c0031

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    move-object v0, v7

    check-cast v0, Landroid/widget/TextView;

    move-object v6, v0

    .line 333
    .local v6, tv:Landroid/widget/TextView;
    iget v7, v2, Lcom/android/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;->mStringID:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 334
    iget-object v7, v2, Lcom/android/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v8, v2, Lcom/android/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;->mIsChecked:Z

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 336
    iget v7, v2, Lcom/android/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;->mListType:I

    const/16 v8, 0x9

    if-ge v7, v8, :cond_0

    .line 337
    const-string v7, "%s%s|"

    new-array v7, v11, [Ljava/lang/Object;

    aput-object v4, v7, v9

    iget v8, v2, Lcom/android/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;->mListType:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v12, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 339
    :cond_0
    iget-boolean v7, v2, Lcom/android/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;->mIsChecked:Z

    if-eqz v7, :cond_1

    .line 340
    iget v7, v2, Lcom/android/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;->mListType:I

    const/16 v8, 0xa

    if-lt v7, v8, :cond_2

    .line 341
    const-string v7, "%s%s|"

    new-array v7, v11, [Ljava/lang/Object;

    aput-object v3, v7, v9

    iget v8, v2, Lcom/android/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;->mListType:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v12, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 330
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 343
    :cond_2
    const-string v7, "%s%s|"

    new-array v7, v11, [Ljava/lang/Object;

    aput-object v5, v7, v9

    iget v8, v2, Lcom/android/music/common/settings/MusicSettingsMusicMenu$MusicMenuItem;->mListType:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v12, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 349
    .end local v6           #tv:Landroid/widget/TextView;
    :cond_3
    invoke-static {v4}, Lcom/android/music/common/util/MusicValueSaveController;->setMusicMenuOrder(Ljava/lang/String;)V

    .line 350
    invoke-static {v5}, Lcom/android/music/common/util/MusicValueSaveController;->setMusicMenu(Ljava/lang/String;)V

    .line 351
    invoke-static {v3}, Lcom/android/music/common/util/MusicValueSaveController;->setPlaylistMenu(Ljava/lang/String;)V

    .line 352
    invoke-static {p0}, Lcom/android/music/common/util/MusicValueSaveController;->saveSettingValue(Landroid/content/Context;)V

    .line 353
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 137
    invoke-virtual {p0}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 139
    const v2, 0x7f03002a

    invoke-virtual {p0, v2}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->setContentView(I)V

    .line 141
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 144
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    iget-object v2, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 148
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.android.music.kill.garbageActivity"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 149
    .local v1, killIntentFilter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mKillReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 153
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->currentEnterId:Ljava/util/UUID;

    sput-object v2, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->enterId:Ljava/util/UUID;

    .line 154
    sget-object v2, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Create new instance of MusicSettingsMusicMenu with id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->currentEnterId:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mMusicMenuItems:Ljava/util/ArrayList;

    .line 158
    invoke-direct {p0}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->musicMenuLayoutInit()V

    .line 159
    invoke-direct {p0}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->musicMenuEventInit()V

    .line 160
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 250
    const/16 v0, 0x13

    const v1, 0x7f0a00f5

    invoke-virtual {p0, v1}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020022

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 252
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 232
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mKillReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 245
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 246
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 257
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 258
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/music/common/settings/MusicSettingsMusicMenuReorderActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 259
    invoke-virtual {p0, v0}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->startActivity(Landroid/content/Intent;)V

    .line 261
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 172
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 173
    invoke-static {p0}, Lcom/android/music/common/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const v0, 0x7f0a00f3

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 175
    invoke-virtual {p0}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->finish()V

    .line 203
    :goto_0
    return-void

    .line 188
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->mEntrance:Z

    .line 193
    sget-object v0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->enterId:Ljava/util/UUID;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->currentEnterId:Ljava/util/UUID;

    sget-object v1, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->enterId:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 194
    :cond_1
    invoke-direct {p0}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->setDisplayByValue()V

    .line 195
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->currentEnterId:Ljava/util/UUID;

    sput-object v0, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->enterId:Ljava/util/UUID;

    goto :goto_0

    .line 197
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

    .line 199
    invoke-virtual {p0}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->finish()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 164
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 166
    invoke-direct {p0}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->getValues()V

    .line 167
    invoke-direct {p0}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->setDisplayByValue()V

    .line 168
    return-void
.end method
